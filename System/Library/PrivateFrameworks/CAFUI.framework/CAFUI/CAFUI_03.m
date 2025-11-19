void *CAFAlertNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a2;
  v31[3] = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v31[2] = v31 - v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v32);
  v31[0] = v31 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v18 = *(v17 - 8);
  v34 = v17;
  v35 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v31 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v31 - v22;

  v9[2] = 0;
  v24 = type metadata accessor for NotificationModel();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v9[3] = CurrentValueSubject.init(_:)();
  v9[4] = MEMORY[0x277D84FA0];
  v9[5] = a7;
  v9[6] = a8;
  v31[1] = a8;
  v37 = a1;
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAlertRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v36;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  Publishers.CombineLatest.init(_:_:)();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = closure #3 in CAFAlertNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)partial apply;
  *(v28 + 24) = v27;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v29 = v34;
  Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v20, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v9;
}

uint64_t sub_242399E2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t closure #1 in CAFAlertNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a4() == a2 && v5 == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_242399F58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #3 in CAFAlertNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFAlertNotificationSource.updateNotification(remoteNotification:requestContent:)(a1, a2);
  }

  return result;
}

uint64_t sub_24239A00C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CAFAlertNotificationSource.updateNotification(remoteNotification:requestContent:)(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v64 = a1;
  v61 = *v2;
  v4 = type metadata accessor for NotificationModel();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v58 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v65 = &v58 - v25;
  dispatch thunk of CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
  v26 = String.isModalAlert.getter();

  if (v26 && (dispatch thunk of CAFRequestTemporaryContentObservable.on.getter() & 1) != 0)
  {
    v27 = v64;
    v28 = dispatch thunk of CAFAlertRemoteNotificationObservable.displayPanelIdentifier.getter();
    v60 = v29;
    CAFAlertNotificationSource.convert(message:requestContent:)(v27, a2, v21);
    outlined init with copy of NotificationModel?(v21, v18);
    v30 = v4;
    v64 = *(v5 + 48);
    v31 = v64(v18, 1, v4);
    v59 = v28;
    if (v31 == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      (*(v5 + 56))(v24, 1, 1, v4);
    }

    else
    {
      (*(v5 + 32))(v11, v18, v4);
      static CAFAlertNotificationSource.sanitize(notification:displayID:)(v11, v28, v60, v24);
      v30 = v4;
      (*(v5 + 8))(v11, v4);
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    }

    v32 = v65;
    outlined init with take of NotificationModel?(v24, v65);
    outlined init with copy of NotificationModel?(v32, v15);
    if (v64(v15, 1, v30) == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v34 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v35 = static OS_os_log.default.getter();
      v36 = os_log_type_enabled(v35, v34);
      v38 = v59;
      v37 = v60;
      if (v36)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v66 = v40;
        *v39 = 136315138;
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v66);

        *(v39 + 4) = v41;
        _os_log_impl(&dword_24234D000, v35, v34, "Unable to sanitize notification sent to display: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x245D0E5A0](v40, -1, -1);
        MEMORY[0x245D0E5A0](v39, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v42 = v63;
      (*(v5 + 32))(v63, v15, v30);
      v43 = static os_log_type_t.info.getter();
      v44 = v62;
      (*(v5 + 16))(v62, v42, v30);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v45 = v30;
      v46 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v46, v43))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v66 = v48;
        *v47 = 136315394;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v66);

        *(v47 + 4) = v49;
        *(v47 + 12) = 2080;
        v50 = NotificationModel.id.getter();
        v51 = v44;
        v53 = v52;
        v54 = *(v5 + 8);
        v54(v51, v45);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, &v66);

        *(v47 + 14) = v55;
        _os_log_impl(&dword_24234D000, v46, v43, "Presenting notification: %s:%s", v47, 0x16u);
        swift_arrayDestroy();
        v56 = v48;
        v32 = v65;
        MEMORY[0x245D0E5A0](v56, -1, -1);
        MEMORY[0x245D0E5A0](v47, -1, -1);

        v54(v42, v45);
      }

      else
      {

        v57 = *(v5 + 8);
        v57(v44, v30);
        v57(v42, v30);
      }
    }
  }

  else
  {
    v32 = v65;
    (*(v5 + 56))(v65, 1, 1, v4);
  }

  CurrentValueSubject.send(_:)();

  return outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd);
}

uint64_t static CAFAlertNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v6 = type metadata accessor for NotificationModel();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationModel.ValidationError();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v27 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  v38 = NotificationModel.validate(automakerSymbolValidator:)();
  (*(v7 + 16))(v21, a1, v6);
  v39 = v7;
  v33 = *(v7 + 56);
  v34 = v7 + 56;
  v33(v21, 0, 1, v6);
  v28 = v21;
  v22 = v21;
  v23 = v38;
  outlined init with copy of NotificationModel?(v22, a4);
  v43 = *(v23 + 16);
  if (v43)
  {
    v24 = 0;
    v42 = v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v40 = (v39 + 6);
    v41 = v10 + 16;
    v29 = (v39 + 4);
    v30 = (v39 + 1);
    v39 = (v10 + 8);
    v31 = v9;
    v32 = v10;
    while (v24 < *(v23 + 16))
    {
      (*(v10 + 16))(v12, v42 + *(v10 + 72) * v24, v9);
      outlined init with copy of NotificationModel?(a4, v16);
      if ((*v40)(v16, 1, v6) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(a4, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v33(v19, 1, 1, v6);
      }

      else
      {
        v25 = v35;
        (*v29)(v35, v16, v6);
        closure #1 in closure #2 in static CAFAlertNotificationSource.sanitize(notification:displayID:)(v25, v12, v36, v37, v19);
        (*v30)(v25, v6);
        outlined destroy of RequestTemporaryContentModel?(a4, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v9 = v31;
        v10 = v32;
        v23 = v38;
      }

      ++v24;
      (*v39)(v12, v9);
      outlined init with take of NotificationModel?(v19, a4);
      if (v43 == v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    result = (*v30)(v9, v10);
    __break(1u);
  }

  else
  {
LABEL_8:

    return outlined destroy of RequestTemporaryContentModel?(v28, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  }

  return result;
}

uint64_t closure #1 in closure #2 in static CAFAlertNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v59 = a3;
  v60 = a4;
  v7 = type metadata accessor for NotificationModel.ValidationError();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for NotificationModel();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  NotificationModel.ValidationError.correct(on:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v14, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    v25 = static os_log_type_t.info.getter();
    (*(v16 + 16))(v19, a1, v15);
    v26 = v58;
    (*(v62 + 16))(v58, a2, v63);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v27 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v27, v25))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136315650;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v64);
      *(v28 + 12) = 2080;
      v30 = NotificationModel.id.getter();
      LODWORD(v60) = v25;
      v32 = v31;
      (*(v16 + 8))(v19, v15);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v64);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      v34 = NotificationModel.ValidationError.description.getter();
      v36 = v35;
      (*(v62 + 8))(v26, v63);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v64);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_24234D000, v27, v60, "Unable to correct issue on notification %s:%s: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v29, -1, -1);
      MEMORY[0x245D0E5A0](v28, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v26, v63);
      (*(v16 + 8))(v19, v15);
    }

    v52 = 1;
    v53 = v61;
  }

  else
  {
    v58 = *(v16 + 32);
    (v58)(v24, v14, v15);
    v38 = static os_log_type_t.info.getter();
    (*(v16 + 16))(v22, a1, v15);
    (*(v62 + 16))(v11, a2, v63);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v39 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v57 = v24;
      v41 = v40;
      v56 = swift_slowAlloc();
      v64 = v56;
      *v41 = 136315650;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v64);
      *(v41 + 12) = 2080;
      v42 = NotificationModel.id.getter();
      LODWORD(v60) = v38;
      v44 = v43;
      (*(v16 + 8))(v22, v15);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v64);

      *(v41 + 14) = v45;
      *(v41 + 22) = 2080;
      v46 = NotificationModel.ValidationError.description.getter();
      v48 = v47;
      (*(v62 + 8))(v11, v63);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v64);

      *(v41 + 24) = v49;
      _os_log_impl(&dword_24234D000, v39, v60, "Corrected issue on notification  %s:%s: %s", v41, 0x20u);
      v50 = v56;
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v50, -1, -1);
      v51 = v41;
      v24 = v57;
      MEMORY[0x245D0E5A0](v51, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v11, v63);
      (*(v16 + 8))(v22, v15);
    }

    v53 = v61;
    (v58)(v61, v24, v15);
    v52 = 0;
  }

  return (*(v16 + 56))(v53, v52, 1, v15);
}

uint64_t CAFAlertNotificationSource.convert(message:requestContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v165 = a2;
  v153 = a3;
  v4 = type metadata accessor for UUID();
  v142 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v141 = v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for NotificationModel();
  v155 = *(v152 - 8);
  v6 = MEMORY[0x28223BE20](v152);
  v187 = v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v150 = v139 - v8;
  v148 = type metadata accessor for NotificationModel.Style();
  v149 = *(v148 - 8);
  v9 = MEMORY[0x28223BE20](v148);
  v11 = v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v139 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v145 = v139 - v15;
  v16 = type metadata accessor for NotificationModel.ModalAlertModel();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6ActionVSgMd);
  MEMORY[0x28223BE20](v20 - 8);
  v181 = v139 - v21;
  v189 = type metadata accessor for NotificationModel.Action();
  v162 = *(v189 - 8);
  v22 = MEMORY[0x28223BE20](v189);
  v180 = v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v161 = v139 - v24;
  v182 = type metadata accessor for NotificationModel.Symbol();
  v190 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v156 = v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v139 - v27;
  v159 = type metadata accessor for NotificationModel.Text();
  v158 = *(v159 - 8);
  v29 = MEMORY[0x28223BE20](v159);
  v144 = v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v177 = v139 - v31;
  v169 = dispatch thunk of CAFAlertRemoteNotificationObservable.displayPanelIdentifier.getter();
  v171 = v32;
  v168 = dispatch thunk of CAFAlertRemoteNotificationObservable.identifier.getter();
  v170 = v33;
  v34 = dispatch thunk of CAFAlertRemoteNotificationObservable.userVisibleLabel.getter();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  v143 = v4;
  v146 = v11;
  if (v37)
  {
    v38 = a1;
    dispatch thunk of CAFAlertRemoteNotificationObservable.userVisibleLabel.getter();
    v157 = v39;
  }

  else
  {
    v157 = 0;
    v38 = a1;
  }

  v40 = dispatch thunk of CAFAlertRemoteNotificationObservable.userVisibleDescription.getter();
  v42 = v41;

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  v166 = v38;
  if (v43)
  {
    dispatch thunk of CAFAlertRemoteNotificationObservable.userVisibleDescription.getter();
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  v46 = v177;

  NotificationModel.Text.init(title:body:)();
  v47 = v158;
  v48 = v159;
  v49 = (*(v158 + 48))(v28, 1, v159);
  v50 = v187;
  if (v49 == 1)
  {

    outlined destroy of RequestTemporaryContentModel?(v28, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
    v51 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v52 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v193 = v54;
      *v53 = 136315138;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v171, &v193);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_24234D000, v52, v51, "No text added to notification on display: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x245D0E5A0](v54, -1, -1);
      MEMORY[0x245D0E5A0](v53, -1, -1);
    }

    else
    {
    }

    return (*(v155 + 56))(v153, 1, 1, v152);
  }

  v139[0] = v45;
  (*(v47 + 32))(v46, v28, v48);
  v147 = dispatch thunk of CAFAlertRemoteNotificationObservable.symbolNameAndColor.getter();
  v56 = [v147 name];
  if (v56)
  {
    v57 = v56;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  v60 = v182;
  v140 = v16;
  v61 = UIColorFromCAFImageColor([v147 color]);
  v62 = MEMORY[0x245D0CE70](v61);

  v139[1] = v62;
  NotificationModel.Symbol.init(name:color:)();
  v63 = dispatch thunk of CAFAlertRemoteNotificationObservable.notificationUserActions.getter();
  v64 = [v63 notificationUserActions];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFNotificationUserAction);
  v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v160 = v65 >> 62;
  if (v65 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v67 = v190;

    v164 = v13;
    v167 = v17;
    v178 = v19;
    v179 = v65;
    if (!i)
    {
      break;
    }

    v69 = v65;
    v65 = 0;
    v176 = v69 & 0xC000000000000001;
    v183 = v69 & 0xFFFFFFFFFFFFFF8;
    if (v69 >= 0)
    {
      v69 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v151 = v69;
    v173 = (v162 + 48);
    v174 = (v162 + 56);
    v172 = (v162 + 32);
    v188 = MEMORY[0x277D84F90];
    *&v68 = 136315394;
    v154 = v68;
    v175 = i;
    v70 = v140;
    v163 = v59;
    while (1)
    {
      if (v176)
      {
        v71 = MEMORY[0x245D0D9A0](v65, v179);
      }

      else
      {
        if (v65 >= *(v183 + 16))
        {
          goto LABEL_65;
        }

        v71 = *(v179 + 8 * v65 + 32);
      }

      v19 = v71;
      v60 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      v72 = [v71 userVisibleLabel];
      v191 = v19;
      v192 = v65 + 1;
      if (v72)
      {
        v73 = v72;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v74;

        v75 = [v19 contentURLAction];
        if (v75)
        {
          v76 = v75;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v77;
        }

        else
        {
          v13 = 0;
          v17 = 0;
        }

        if (dispatch thunk of CAFAlertRemoteNotificationObservable.showsPrimaryActionHighlight.getter())
        {
          if (v160)
          {
            v87 = __CocoaSet.count.getter();
          }

          else
          {
            v87 = *(v183 + 16);
          }

          if (__OFSUB__(v87, 1))
          {
            goto LABEL_67;
          }

          v88 = v65 == v87 - 1;
        }

        else
        {
          v88 = 0;
        }

        if (v65 > 0xFF)
        {
          goto LABEL_66;
        }

        v186 = v88;
        v89 = swift_allocObject();
        swift_weakInit();
        v90 = swift_allocObject();
        v184 = v17;
        v91 = v65;
        v92 = v13;
        v93 = v70;
        v94 = v90;
        swift_unknownObjectWeakInit();
        v95 = swift_allocObject();
        v185 = v46;
        v96 = v95;
        swift_unknownObjectWeakInit();
        v97 = swift_allocObject();
        v97[2] = v169;
        v98 = v168;
        v97[3] = v171;
        v97[4] = v98;
        v97[5] = v170;
        v97[6] = v96;
        v46 = v177;
        v83 = v167;
        v97[7] = v94;
        v97[8] = v92;
        v70 = v93;
        v65 = v91;
        v97[9] = v184;
        v97[10] = v89;
        v59 = v163;

        v86 = v181;
        v50 = v187;
        NotificationModel.Action.init(id:title:highlighted:handler:)();
        v85 = 0;
        v13 = v164;
      }

      else
      {
        v78 = static os_log_type_t.error.getter();
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
        v79 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v79, v78))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v193 = v81;
          *v80 = v154;
          *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v171, &v193);
          *(v80 + 12) = 2080;
          *(v80 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, &v193);
          _os_log_impl(&dword_24234D000, v79, v78, "Notification (%s:%s) - User action does not have text", v80, 0x16u);
          swift_arrayDestroy();
          v82 = v81;
          v46 = v177;
          v83 = v167;
          MEMORY[0x245D0E5A0](v82, -1, -1);
          v84 = v80;
          v50 = v187;
          MEMORY[0x245D0E5A0](v84, -1, -1);

          v85 = 1;
        }

        else
        {

          v85 = 1;
          v83 = v17;
        }

        v86 = v181;
      }

      v17 = v83;
      v99 = v189;
      (*v174)(v86, v85, 1, v189);

      v100 = (*v173)(v86, 1, v99);
      v101 = v86;
      v67 = v190;
      if (v100 == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v101, &_s14CarPlayAssetUI17NotificationModelV6ActionVSgMd);
        v19 = v178;
        v60 = v182;
      }

      else
      {
        v102 = *v172;
        v103 = v161;
        (*v172)(v161, v101, v99);
        v102(v180, v103, v99);
        v104 = v188;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v178;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104[2] + 1, 1, v104);
        }

        v107 = v104[2];
        v106 = v104[3];
        v188 = v104;
        if (v107 >= v106 >> 1)
        {
          v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v106 > 1, v107 + 1, 1, v188);
        }

        v109 = v188;
        v108 = v189;
        v188[2] = v107 + 1;
        v102(&v109[((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v107], v180, v108);
        v50 = v187;
        v60 = v182;
        v67 = v190;
      }

      ++v65;
      if (v192 == v175)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v188 = MEMORY[0x277D84F90];
  v70 = v140;
LABEL_57:

  swift_bridgeObjectRelease_n();
  if (!v188[2])
  {

    (*(v67 + 8))(v156, v60);
    (*(v158 + 8))(v46, v159);
    return (*(v155 + 56))(v153, 1, 1, v152);
  }

  (*(v158 + 16))(v144, v46, v159);
  v110 = v145;
  (*(v67 + 16))(v145, v156, v60);
  (*(v67 + 56))(v110, 0, 1, v60);
  NotificationModel.ModalAlertModel.init(text:symbol:actionButtons:)();
  (*(v17 + 16))(v13, v19, v70);
  v111 = v149;
  v112 = v148;
  (*(v149 + 104))(v13, *MEMORY[0x277CF8BD8], v148);
  (*(v111 + 16))(v146, v13, v112);
  v113 = v150;
  NotificationModel.init(id:style:)();
  v114 = v60;
  v115 = static os_log_type_t.info.getter();
  v116 = v70;
  v117 = v155;
  v118 = v152;
  (*(v155 + 16))(v50, v113, v152);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v119 = v67;
  v120 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v120, v115))
  {
    v121 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v193 = v192;
    *v121 = 136315650;
    v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v171, &v193);

    *(v121 + 4) = v122;
    *(v121 + 12) = 2080;
    v123 = CAFAlertRemoteNotificationObservable.observed.getter();
    v124 = v141;
    CAFService.id.getter();

    lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v125 = v143;
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v127 = v149;
    v129 = v128;
    (*(v142 + 8))(v124, v125);
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v129, &v193);

    *(v121 + 14) = v130;
    *(v121 + 22) = 2080;
    v131 = v187;
    v132 = NotificationModel.description.getter();
    v134 = v133;
    v117 = v155;
    (*(v155 + 8))(v131, v118);
    v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v193);

    *(v121 + 24) = v135;
    _os_log_impl(&dword_24234D000, v120, v115, "Converted notification (displayID = (%s), message.id = %s) to %s", v121, 0x20u);
    v136 = v192;
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v136, -1, -1);
    MEMORY[0x245D0E5A0](v121, -1, -1);

    (*(v127 + 8))(v164, v148);
    (*(v167 + 8))(v178, v140);
    (*(v119 + 8))(v156, v182);
  }

  else
  {

    (*(v117 + 8))(v50, v118);
    (*(v149 + 8))(v13, v148);
    (*(v167 + 8))(v178, v116);
    (*(v67 + 8))(v156, v114);
  }

  (*(v158 + 8))(v177, v159);
  v138 = v153;
  (*(v117 + 32))(v153, v150, v118);
  return (*(v117 + 56))(v138, 0, 1, v118);
}

void closure #1 in closure #1 in CAFAlertNotificationSource.convert(message:requestContent:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v16 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v27 = a8;
    v17 = swift_slowAlloc();
    v18 = a5;
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v17 = 136315650;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v28);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, v18, v28);
    *(v17 + 22) = 256;
    *(v17 + 24) = a1;
    _os_log_impl(&dword_24234D000, v16, v15, "Notification (%s:%s) button %hhu pressed", v17, 0x19u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v19, -1, -1);
    v20 = v17;
    a8 = v27;
    MEMORY[0x245D0E5A0](v20, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    dispatch thunk of CAFAlertRemoteNotificationObservable.userAction.setter();
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    dispatch thunk of CAFRequestTemporaryContentObservable.on.setter();
  }

  if (a9)
  {
    static os_log_type_t.info.getter();
    v25 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (v26)
    {
      (*(v26 + 40))(a8, a9);
    }
  }
}

uint64_t CAFAlertNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFAlertNotificationSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFAlertNotificationSource()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24239CC24()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24239CC5C()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t outlined init with copy of NotificationModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall CAFVent.symbolName(useRightFacingSeat:)(Swift::Bool useRightFacingSeat)
{
  v3 = [v1 currentIndex];
  v4 = [v1 combinations];
  type metadata accessor for NSNumber();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 <= v3)
  {
    if (useRightFacingSeat)
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [v1 currentIndex];
    v7 = CAFVent.ventType(at:)();
    if (v7 >> 31)
    {
      __break(1u);
      goto _$sSo7CAFVentC5CAFUIE10symbolName18useRightFacingSeatSSSb_tF;
    }

    v9 = specialized static CAFVent.symbolFor(combination:useRightFacingSeat:)(v7, useRightFacingSeat);
  }

  v7 = CAFUISymbol.symbolName.getter(v9);
_$sSo7CAFVentC5CAFUIE10symbolName18useRightFacingSeatSSSb_tF:
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

void static CAFVent.groupedSymbolName(vents:useRightFacingSeat:)(unint64_t a1, char a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = __CocoaSet.count.getter();
    v5 = 0;
    if (!v4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = 0;
    if (!v4)
    {
      goto LABEL_21;
    }
  }

  v6 = 0;
  while (2)
  {
    v17 = v5;
    v7 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0D9A0](v7, a1);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v10 = [v8 combinations];
      type metadata accessor for NSNumber();
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        break;
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

LABEL_11:

      ++v7;
      if (v6 == v4)
      {
        v5 = v17;
        goto LABEL_21;
      }
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }

LABEL_15:
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245D0D9A0](0, v11);
      goto LABEL_18;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
LABEL_18:
      v13 = v12;

      v14 = MEMORY[0x245D0DB40](v13);

      v5 = v14 | v17;
      if (v6 != v4)
      {
        continue;
      }

LABEL_21:
      v15 = specialized static CAFVent.symbolFor(combination:useRightFacingSeat:)(v5, a2 & 1);

      CAFUISymbol.symbolName.getter(v15);
    }

    else
    {
      __break(1u);
    }

    break;
  }
}

uint64_t specialized static CAFVent.symbolFor(combination:useRightFacingSeat:)(int a1, char a2)
{
  switch(a1)
  {
    case 1:
      if (a2)
      {
        result = 24;
      }

      else
      {
        result = 8;
      }

      break;
    case 2:
      if (a2)
      {
        result = 20;
      }

      else
      {
        result = 4;
      }

      break;
    case 3:
      if (a2)
      {
        result = 28;
      }

      else
      {
        result = 12;
      }

      break;
    case 4:
      if (a2)
      {
        result = 17;
      }

      else
      {
        result = 1;
      }

      break;
    case 5:
      if (a2)
      {
        result = 25;
      }

      else
      {
        result = 9;
      }

      break;
    case 6:
      if (a2)
      {
        result = 21;
      }

      else
      {
        result = 5;
      }

      break;
    case 7:
      if (a2)
      {
        result = 29;
      }

      else
      {
        result = 13;
      }

      break;
    case 16:
      if (a2)
      {
        result = 18;
      }

      else
      {
        result = 2;
      }

      break;
    case 17:
      if (a2)
      {
        result = 26;
      }

      else
      {
        result = 10;
      }

      break;
    case 18:
      if (a2)
      {
        result = 22;
      }

      else
      {
        result = 6;
      }

      break;
    case 19:
      if (a2)
      {
        result = 30;
      }

      else
      {
        result = 14;
      }

      break;
    case 20:
      if (a2)
      {
        result = 19;
      }

      else
      {
        result = 3;
      }

      break;
    case 21:
      if (a2)
      {
        result = 27;
      }

      else
      {
        result = 11;
      }

      break;
    case 22:
      if (a2)
      {
        result = 23;
      }

      else
      {
        result = 7;
      }

      break;
    case 23:
      if (a2)
      {
        result = 31;
      }

      else
      {
        result = 15;
      }

      break;
    default:
      if (a2)
      {
        result = 16;
      }

      else
      {
        result = 0;
      }

      break;
  }

  return result;
}

void CAFUIDevicePickerViewCell.selectedImage.didset()
{
  v1 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImageView;
  v2 = *&v0[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImageView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *&v0[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImage];
  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v5 = v3;
    v6 = [v4 initWithImage_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = [v0 contentView];
    [v7 addSubview_];

    v8 = *&v0[v1];
    *&v0[v1] = v6;
    v9 = v6;

    v10 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_242423B80;
    v12 = [v9 topAnchor];
    v13 = *&v0[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:50.0];

    *(v11 + 32) = v15;
    v16 = [v9 leadingAnchor];

    v17 = [v13 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:50.0];

    *(v11 + 40) = v18;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 activateConstraints_];

    v19 = isa;
  }

  else
  {
    v19 = *&v0[v1];
    *&v0[v1] = 0;
  }
}

void CAFUIDevicePickerViewCell.showSpinner.didset(char a1)
{
  v2 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner;
  if (v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner] != (a1 & 1))
  {
    v3 = [v1 backgroundView];
    if (v3)
    {
      v21 = v3;
      v4 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_spinner;
      if (!*&v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_spinner])
      {
        v5 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
        v6 = [objc_opt_self() labelColor];
        [v5 setColor_];

        [v5 setActivityIndicatorViewStyle_];
        v7 = v5;
        [v7 setTranslatesAutoresizingMaskIntoConstraints_];
        [v21 addSubview_];
        v8 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_242423B80;
        v10 = [v7 centerXAnchor];
        v11 = [v21 centerXAnchor];
        v12 = [v10 constraintEqualToAnchor_];

        *(v9 + 32) = v12;
        v13 = [v7 centerYAnchor];

        v14 = [v21 centerYAnchor];
        v15 = [v13 constraintEqualToAnchor_];

        *(v9 + 40) = v15;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v8 activateConstraints_];

        v17 = *&v1[v4];
        *&v1[v4] = v7;
      }

      if (v1[v2] == 1)
      {
        [*&v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView] setHidden_];
        [*&v1[v4] startAnimating];
        v18 = *&v1[v4];
        if (v18)
        {
          v19 = v18;
          [v19 setHidden_];
        }
      }

      else
      {
        v20 = *&v1[v4];
        if (v20)
        {
          [v20 setHidden_];
          v20 = *&v1[v4];
        }

        [v20 stopAnimating];
        [*&v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView] setHidden_];
      }
    }
  }
}

void CAFUIDevicePickerViewCell.widthConstraint.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_widthConstraint;
  v4 = *(v1 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_widthConstraint);
  if (v4)
  {
    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_242423BD0;
    *(v6 + 32) = v4;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v7 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 deactivateConstraints_];

    v9 = *(v1 + v3);
  }

  else
  {
    v9 = 0;
  }

  *(v1 + v3) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_242423BD0;
    *(v12 + 32) = v10;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v13 = v10;
    v14 = Array._bridgeToObjectiveC()().super.isa;

    [v11 activateConstraints_];
  }
}

char *CAFUIDevicePickerViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImageView] = 0;
  *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImage] = 0;
  *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_spinner] = 0;
  *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_focusRingView] = 0;
  *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_widthConstraint] = 0;
  v9 = &v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_deviceIdentifier];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView] = v10;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_label] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_sublabel] = v12;
  v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_showSpinner] = 0;
  v99.receiver = v4;
  v99.super_class = type metadata accessor for CAFUIDevicePickerViewCell();
  v13 = objc_msgSendSuper2(&v99, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v15 = v13;
  v16 = [v14 initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 _setCornerRadius_];
  v17 = [v16 layer];
  [v17 setMasksToBounds_];

  v18 = objc_opt_self();
  v19 = [v18 secondarySystemFillColor];
  [v16 setBackgroundColor_];

  v20 = [v18 labelColor];
  [v16 setTintColor_];

  [v15 setBackgroundView_];
  v21 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView;
  [*&v15[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView] &selRef:0 staticSettingService:? didUpdateUserVisibleDetailedDescription:? + 2];
  [*&v15[v21] setContentMode_];
  v22 = v21;
  v23 = [*&v15[v21] layer];
  [v23 setMasksToBounds_];

  v24 = v22;
  v95 = v22;
  v25 = *&v15[v22];
  v26 = [v18 labelColor];
  [v25 setTintColor_];

  [v16 addSubview_];
  v27 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_label;
  [*&v15[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_label] &selRef:0 staticSettingService:? didUpdateUserVisibleDetailedDescription:? + 2];
  [*&v15[v27] setTextAlignment_];
  v28 = *&v15[v27];
  v29 = objc_opt_self();
  v30 = *MEMORY[0x277D76920];
  v31 = v28;
  v32 = [v29 preferredFontDescriptorWithTextStyle_];
  v33 = objc_opt_self();
  v34 = [v33 fontWithDescriptor:v32 size:0.0];

  [v31 setFont_];
  v96 = v27;
  v35 = *&v15[v27];
  v36 = [v18 labelColor];
  [v35 setTextColor_];

  v37 = [v15 contentView];
  [v37 addSubview_];

  v38 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_sublabel;
  [*&v15[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_sublabel] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v15[v38] setTextAlignment_];
  [*&v15[v38] setNumberOfLines_];
  v39 = *MEMORY[0x277D76968];
  v40 = *&v15[v38];
  v41 = [v29 preferredFontDescriptorWithTextStyle_];
  v42 = [v33 fontWithDescriptor:v41 size:0.0];

  [v40 setFont_];
  v97 = v38;
  v43 = *&v15[v38];
  v44 = [v18 systemBlueColor];
  [v43 setTextColor_];

  v45 = [v15 contentView];
  [v45 addSubview_];

  v98 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_242424C20;
  v47 = [v16 topAnchor];
  v48 = [v15 contentView];
  v49 = [v48 &selRef_tableView_didHighlightRowAtIndexPath_];

  v50 = [v47 constraintEqualToAnchor:v49 constant:4.0];
  *(v46 + 32) = v50;
  v51 = [v16 widthAnchor];
  v52 = [v51 constraintEqualToConstant_];

  *(v46 + 40) = v52;
  v53 = [v16 heightAnchor];
  v54 = [v53 constraintEqualToConstant_];

  *(v46 + 48) = v54;
  v55 = [v16 centerXAnchor];
  v56 = [v15 contentView];
  v57 = [v56 centerXAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v46 + 56) = v58;
  v59 = [*&v15[v95] leadingAnchor];
  v60 = [v16 &selRef_integerSettingService_didUpdateMinimumSymbolName_ + 1];
  v61 = [v59 0x278D4BF65];

  *(v46 + 64) = v61;
  v62 = [*&v15[v95] trailingAnchor];
  v63 = [v16 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_ + 4];
  v64 = [v62 0x278D4BF65];

  *(v46 + 72) = v64;
  v65 = [*&v15[v95] &selRef_tableView_didHighlightRowAtIndexPath_];
  v66 = [v16 &selRef_tableView_didHighlightRowAtIndexPath_];
  v67 = [v65 0x278D4BF65];

  *(v46 + 80) = v67;
  v68 = [*&v15[v95] bottomAnchor];
  v69 = [v16 bottomAnchor];
  v70 = [v68 0x278D4BF65];

  *(v46 + 88) = v70;
  v71 = [*&v15[v96] &selRef_tableView_didHighlightRowAtIndexPath_];
  v72 = [*&v15[v95] bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:12.0];

  *(v46 + 96) = v73;
  v74 = [*&v15[v96] leadingAnchor];
  v75 = [v15 contentView];
  v76 = [v75 leadingAnchor];

  v77 = [v74 constraintEqualToAnchor_];
  *(v46 + 104) = v77;
  v78 = [*&v15[v96] trailingAnchor];
  v79 = [v15 contentView];
  v80 = [v79 trailingAnchor];

  v81 = [v78 constraintEqualToAnchor_];
  *(v46 + 112) = v81;
  v82 = [*&v15[v97] topAnchor];
  v83 = [*&v15[v96] bottomAnchor];
  v84 = [v82 constraintEqualToAnchor_];

  *(v46 + 120) = v84;
  v85 = [*&v15[v97] leadingAnchor];
  v86 = [v15 contentView];
  v87 = [v86 leadingAnchor];

  v88 = [v85 constraintEqualToAnchor_];
  *(v46 + 128) = v88;
  v89 = [*&v15[v97] trailingAnchor];
  v90 = [v15 contentView];

  v91 = [v90 trailingAnchor];
  v92 = [v89 constraintEqualToAnchor_];

  *(v46 + 136) = v92;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v98 activateConstraints_];

  return v15;
}

void CAFUIDevicePickerViewCell.showsFocusRing.setter(char a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CF90F0]) initWithFrame_];
    [v2 setCornerRadius_];
    v3 = v2;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImageView];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 contentView];
      [v6 insertSubview:v3 belowSubview:v5];
    }

    else
    {
      v6 = [v1 contentView];
      [v6 addSubview_];
    }

    v9 = *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_focusRingView];
    *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_focusRingView] = v3;
    v10 = v3;

    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_242423B90;
    v13 = [v10 centerXAnchor];
    v14 = *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView];
    v15 = [v14 centerXAnchor];
    v16 = [v13 constraintEqualToAnchor_];

    *(v12 + 32) = v16;
    v17 = [v10 centerYAnchor];
    v18 = [v14 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v12 + 40) = v19;
    v20 = [v10 widthAnchor];
    v21 = [v20 constraintEqualToConstant_];

    *(v12 + 48) = v21;
    v22 = [v10 heightAnchor];

    v23 = [v22 constraintEqualToConstant_];
    *(v12 + 56) = v23;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 activateConstraints_];

    v8 = isa;
  }

  else
  {
    v7 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_focusRingView;
    v8 = *&v1[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_focusRingView];
    if (v8)
    {
      [(objc_class *)v8 removeFromSuperview];
      v8 = *&v1[v7];
    }

    *&v1[v7] = 0;
  }
}

void CAFUIDevicePickerViewCell.configure(with:selectedImage:for:device:)(void *a1, void *a2, char a3, void *a4)
{
  v5 = v4;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.default;
  outlined init with copy of CAFUIImageRepresentableItemProtocol(a1, v52);
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v49 = a4;
    v12 = a3;
    v13 = swift_slowAlloc();
    v51 = v13;
    *v11 = 136315138;
    v14 = v53;
    v15 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0(v52);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v51);

    *(v11 + 4) = v19;
    _os_log_impl(&dword_24234D000, v9, v10, "Configuring item: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v20 = v13;
    a3 = v12;
    a4 = v49;
    MEMORY[0x245D0E5A0](v20, -1, -1);
    MEMORY[0x245D0E5A0](v11, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  if ([a4 state] != 2)
  {
    v30 = *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView];
    v31 = a1[3];
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v31);
    v33 = (*(v32 + 16))(v31, v32);
    [v30 setImage_];

    v25 = *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_label];
    [v25 setNumberOfLines_];
    [*&v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_sublabel] setText_];
    goto LABEL_15;
  }

  v21 = [objc_allocWithZone(type metadata accessor for CAFUIAccountManager()) init];
  v22 = OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_pictureStore;
  [*&v21[OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_pictureStore] setPictureDiameter_];
  v23 = *&v21[v22];
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = [v23 profilePictureForAccountOwner];

  if (v24)
  {
    [*&v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView] setImage_];
    v21 = v24;
LABEL_10:
  }

  v25 = *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_label];
  [v25 setNumberOfLines_];
  v26 = *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_sublabel];
  v27 = MEMORY[0x245D0D180](0xD000000000000016, 0x800000024242A990);
  v28 = CAFUILocalizedStringForKey(v27);

  if (!v28)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = MEMORY[0x245D0D180](v29);
  }

  [v26 setText_];

LABEL_15:
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = (*(v35 + 8))(v34, v35);
  v37 = MEMORY[0x245D0D180](v36);

  [v25 setText_];

  v38 = *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImage];
  *&v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImage] = a2;
  v39 = a2;

  CAFUIDevicePickerViewCell.selectedImage.didset();
  v40 = [a4 identifier];
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  v45 = &v5[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_deviceIdentifier];
  *v45 = v42;
  v45[1] = v44;

  v46 = dbl_242424C60[a3];
  [v5 bounds];
  if (v46 != CGRectGetWidth(v55))
  {
    v47 = [v5 widthAnchor];
    v48 = [v47 constraintEqualToConstant_];

    CAFUIDevicePickerViewCell.widthConstraint.setter(v48);
  }
}

Swift::Void __swiftcall CAFUIDevicePickerViewCell.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CAFUIDevicePickerViewCell();
  objc_msgSendSuper2(&v10, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedView];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject);
    v7 = static NSObject.== infix(_:_:)();
    CAFUIDevicePickerViewCell.showsFocusRing.setter(v7 & 1);
  }

  else
  {
    v8 = OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_focusRingView;
    v9 = *&v2[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_focusRingView];
    if (v9)
    {
      [v9 removeFromSuperview];
      v6 = *&v2[v8];
    }

    else
    {
      v6 = 0;
    }

    *&v2[v8] = 0;
  }
}

id CAFUIDevicePickerViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIDevicePickerViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized CAFUIDevicePickerViewCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImageView) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_selectedImage) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_spinner) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_focusRingView) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_widthConstraint) = 0;
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_deviceIdentifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CAFMediaSourceSemanticType.title.getter(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 != 7)
      {
        if (a1 == 8)
        {
          v3 = 0x54535F4241444D46;
          v2 = 0xEE00534E4F495441;
          goto LABEL_22;
        }

        return v1;
      }

      v4 = 21333;
    }

    else
    {
      if (a1 == 5)
      {
        v5 = 1599624513;
LABEL_21:
        v3 = v5 | 0x5441545300000000;
        v2 = 0xEC000000534E4F49;
        goto LABEL_22;
      }

      if (a1 != 6)
      {
        return v1;
      }

      v4 = 16708;
    }

    v5 = v4 | 0x5F420000;
    goto LABEL_21;
  }

  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      v3 = 0x49544154535F4D41;
      v2 = 0xEB00000000534E4FLL;
      goto LABEL_22;
    }

    if (a1 == 2)
    {
      v2 = 0xEB00000000534E4FLL;
      v3 = 0x49544154535F4D46;
LABEL_22:
      v6 = MEMORY[0x245D0D180](v3, v2);
      v7 = CAFUILocalizedStringForKey(v6);

      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v1;
    }

    return v1;
  }

  if (a1 == 3)
  {
    v5 = 1598904403;
    goto LABEL_21;
  }

  if (a1 == 4)
  {
    v2 = 0xEB00000000534E4FLL;
    v3 = 0x49544154535F5442;
    goto LABEL_22;
  }

  return v1;
}

uint64_t CAFUITileBaseCell.isParentCell.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
  swift_beginAccess();
  return *(v0 + v1);
}

void *CAFUITileBaseCell.detailView.getter()
{
  v1 = type metadata accessor for CAFUITileCellConfiguration(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(v0 + v8, v7, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    outlined destroy of RequestTemporaryContentModel?(v7, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    return 0;
  }

  else
  {
    outlined init with copy of CAFUITileCellConfiguration(v7, v4);
    outlined destroy of RequestTemporaryContentModel?(v7, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    v9 = *&v4[*(v1 + 32)];
    v10 = v9;
    outlined destroy of CAFUITileCellConfiguration(v4);
  }

  return v9;
}

uint64_t CAFUITileBaseCell.tileCellConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  return outlined init with copy of NotificationModel.Symbol?(v1 + v3, a1, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
}

uint64_t CAFUITileBaseCell.tileCellConfiguration.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(v1 + v6, v5, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(a1, v1 + v6);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v5);
  outlined destroy of RequestTemporaryContentModel?(a1, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  return outlined destroy of RequestTemporaryContentModel?(v5, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
}

void (*CAFUITileBaseCell.tileCellConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(v1 + v9, v8, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  return CAFUITileBaseCell.tileCellConfiguration.modify;
}

void CAFUITileBaseCell.tileCellConfiguration.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of NotificationModel.Symbol?(*(*a1 + 96), v6, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    outlined init with copy of NotificationModel.Symbol?(v7 + v4, v5, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    swift_beginAccess();
    outlined assign with copy of CAFUITileCellConfiguration?(v6, v7 + v4);
    swift_endAccess();
    CAFUITileBaseCell.tileCellConfiguration.didset(v5);
    outlined destroy of RequestTemporaryContentModel?(v5, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  }

  else
  {
    outlined init with copy of NotificationModel.Symbol?(v7 + v4, v6, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    swift_beginAccess();
    outlined assign with copy of CAFUITileCellConfiguration?(v3, v7 + v4);
    swift_endAccess();
    CAFUITileBaseCell.tileCellConfiguration.didset(v6);
  }

  outlined destroy of RequestTemporaryContentModel?(v6, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined destroy of RequestTemporaryContentModel?(v3, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

BOOL CAFUITileBaseCell.hasDescription.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v21[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CAFUITileCellConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(v0 + v11, v10, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    outlined destroy of RequestTemporaryContentModel?(v10, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    return 0;
  }

  v13 = v21[0];
  outlined init with copy of CAFUITileCellConfiguration(v10, v7);
  outlined destroy of RequestTemporaryContentModel?(v10, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v14 = &v7[*(v4 + 24)];
  v15 = *v14;
  v16 = *(v14 + 1);

  outlined destroy of CAFUITileCellConfiguration(v7);
  if (!v16)
  {
    return 0;
  }

  v21[1] = v15;
  v21[2] = v16;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.trimmingCharacters(in:)();
  v19 = v18;
  (*(v13 + 8))(v3, v1);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  return v20 != 0;
}

BOOL CAFUITileBaseCell.hasSubtitle.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CAFUITileCellConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(v0 + v14, v10, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    v15 = &_s5CAFUI26CAFUITileCellConfigurationVSgMd;
    v16 = v10;
LABEL_5:
    outlined destroy of RequestTemporaryContentModel?(v16, v15);
    return 0;
  }

  v17 = v3;
  v18 = v31;
  v19 = v32;
  outlined init with copy of CAFUITileCellConfiguration(v10, v7);
  outlined destroy of RequestTemporaryContentModel?(v10, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined init with copy of NotificationModel.Symbol?(&v7[*(v4 + 20)], v13, &_s5UIKit26UIListContentConfigurationVSgMd);
  outlined destroy of CAFUITileCellConfiguration(v7);
  v20 = type metadata accessor for UIListContentConfiguration();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    v15 = &_s5UIKit26UIListContentConfigurationVSgMd;
    v16 = v13;
    goto LABEL_5;
  }

  v23 = UIListContentConfiguration.secondaryText.getter();
  v25 = v24;
  (*(v21 + 8))(v13, v20);
  if (!v25)
  {
    return 0;
  }

  v33 = v23;
  v34 = v25;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v26 = StringProtocol.trimmingCharacters(in:)();
  v28 = v27;
  (*(v18 + 8))(v17, v19);

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  return v29 != 0;
}

BOOL CAFUITileBaseCell.hasSettingInfo.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CAFUITileCellConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  if (CAFUITileBaseCell.hasDescription.getter())
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(v0 + v12, v11, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    outlined destroy of RequestTemporaryContentModel?(v11, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    return 0;
  }

  outlined init with copy of CAFUITileCellConfiguration(v11, v8);
  outlined destroy of RequestTemporaryContentModel?(v11, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v14 = *&v8[*(v5 + 28)];
  v15 = v14;
  outlined destroy of CAFUITileCellConfiguration(v8);
  if (!v14)
  {
    return 0;
  }

  v16 = [v15 text];

  if (!v16)
  {
    return 0;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v24[1] = v17;
  v24[2] = v19;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v20 = StringProtocol.trimmingCharacters(in:)();
  v22 = v21;
  (*(v2 + 8))(v4, v1);

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  return v23 != 0;
}

void CAFUITileBaseCell.infoButtonClicked(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v55 - v4;
  v6 = type metadata accessor for CAFUITileCellConfiguration(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  outlined init with copy of Any(a1, v63);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIButton);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v59 = v16;
  v19 = v62;
  v20 = *(v1 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton);
  if (v62 != v20)
  {
    goto LABEL_18;
  }

  v21 = *((*MEMORY[0x277D85000] & *v1) + 0xD8);
  v61 = v1;
  if ((v21() & 1) == 0)
  {
    goto LABEL_18;
  }

  v56 = v10;
  v57 = v5;
  v58 = v19;
  v22 = [v20 nextResponder];
  v60 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  if (!v22)
  {
LABEL_13:

    return;
  }

  v23 = (v7 + 48);
  while (1)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (!v25)
    {
      goto LABEL_7;
    }

    v26 = v25;
    outlined init with copy of NotificationModel.Symbol?(v61 + v60, v18, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    v27 = *v23;
    if (!(*v23)(v18, 1, v6))
    {
      break;
    }

    outlined destroy of RequestTemporaryContentModel?(v18, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
LABEL_7:
    v24 = [v22 nextResponder];

    v22 = v24;
    if (!v24)
    {
      goto LABEL_13;
    }
  }

  outlined init with copy of CAFUITileCellConfiguration(v18, v12);
  v28 = v22;
  outlined destroy of RequestTemporaryContentModel?(v18, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v29 = *&v12[*(v6 + 28)];
  v30 = v29;
  outlined destroy of CAFUITileCellConfiguration(v12);

  if (!v29)
  {
    goto LABEL_7;
  }

  v31 = v28;
  v32 = objc_allocWithZone(type metadata accessor for CAFUIDetailedDescriptionViewController());
  v33 = v30;
  v34 = CAFUIDetailedDescriptionViewController.init(detailedDescription:)(v33);
  v35 = v61;
  v36 = v34;
  v37 = v59;
  outlined init with copy of NotificationModel.Symbol?(v61 + v60, v59, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if (v27(v37, 1, v6))
  {
    v38 = v36;
    v39 = &_s5CAFUI26CAFUITileCellConfigurationVSgMd;
    v40 = v37;
    goto LABEL_16;
  }

  v41 = v37;
  v42 = v37;
  v43 = v56;
  outlined init with copy of CAFUITileCellConfiguration(v41, v56);
  v44 = v36;
  outlined destroy of RequestTemporaryContentModel?(v42, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v45 = v57;
  outlined init with copy of NotificationModel.Symbol?(v43 + *(v6 + 20), v57, &_s5UIKit26UIListContentConfigurationVSgMd);
  outlined destroy of CAFUITileCellConfiguration(v43);
  v46 = type metadata accessor for UIListContentConfiguration();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    v39 = &_s5UIKit26UIListContentConfigurationVSgMd;
    v40 = v45;
LABEL_16:
    outlined destroy of RequestTemporaryContentModel?(v40, v39);
    v48 = 0;
  }

  else
  {
    v52 = UIListContentConfiguration.text.getter();
    v54 = v53;
    (*(v47 + 8))(v45, v46);
    if (v54)
    {
      v48 = MEMORY[0x245D0D180](v52, v54);
    }

    else
    {
      v48 = 0;
    }

    v35 = v61;
  }

  v19 = v58;
  [v36 setTitle_];

  v49 = [v36 navigationItem];
  v50 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v35 action:sel_dismissSettingsModal];
  [v49 setLeftBarButtonItem_];

  v51 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v26 presentViewController:v51 animated:1 completion:0];

LABEL_18:
}

uint64_t CAFUITileBaseCell.cafui_contentConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.valueCell()();
  specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t CAFUITileBaseCell.removeAllSubviews()()
{
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_labelStackView];
  v2 = [v1 arrangedSubviews];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D0D9A0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v1 removeArrangedSubview_];
      [v7 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [v0 contentView];
  v10 = [v9 subviews];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x245D0D9A0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 removeFromSuperview];

      ++v13;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
}

Swift::Void __swiftcall CAFUITileBaseCell.setupViews()()
{
  v1 = v0;
  v143 = type metadata accessor for CharacterSet();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v152 = *(v3 - 8);
  v153 = v3;
  MEMORY[0x28223BE20](v3);
  v151 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v154 = &v139 - v6;
  v7 = type metadata accessor for UIListContentConfiguration();
  v155 = *(v7 - 8);
  v156 = v7;
  MEMORY[0x28223BE20](v7);
  v157 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v148 = &v139 - v10;
  v147 = type metadata accessor for UICellAccessory.Placement();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v149 = *(v13 - 1);
  v150 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v139 - v17;
  v19 = type metadata accessor for CAFUITileCellConfiguration(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  CAFUITileBaseCell.removeAllSubviews()();
  v23 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(v1 + v23, v18, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v18, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    UICollectionViewListCell.accessories.setter();
    CAFUITileBaseCell.setupConstraints()();
    return;
  }

  v145 = v1;
  outlined init with take of CAFUITileCellConfiguration(v18, v22);
  v144 = v19;
  v24 = v22;
  if (v22[*(v19 + 36)])
  {
    if (v22[*(v19 + 36)] == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_2424235A0;
      v25 = v145;
      v26 = specialized static CAFUITileBaseCell.chevronImageView(cell:)();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_2424235A0;
      v25 = v145;
      specialized static CAFUITileBaseCell.arrowUpImageView(cell:)();
    }

    v28 = v26;
    v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
    v30 = *MEMORY[0x277D74A98];
    v31 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v31 - 8) + 104))(v12, v30, v31);
    *v29 = protocol witness for CAFListContentRepresentable.rowDetailedDescription.getter in conformance CAFPairedDevicesInformation;
    v29[1] = 0;
    (*(v146 + 104))(v12, *MEMORY[0x277D74AD8], v147);
    v32 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v32 - 8) + 56))(v148, 1, 1, v32);
    v33 = v28;
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    v27 = v25;
    static UICellAccessory.customView(configuration:)();

    (v149)[1](v15, v150);
    UICollectionViewListCell.accessories.setter();
    v24 = v22;
  }

  else
  {
    v27 = v145;
    UICollectionViewListCell.accessories.setter();
  }

  v34 = v144;
  v35 = *&v24[*(v144 + 32)];
  v36 = v154;
  if (v35)
  {
    v37 = v35;
    v38 = [v27 contentView];
    [v38 addSubview_];
  }

  outlined init with copy of NotificationModel.Symbol?(&v24[*(v34 + 20)], v36, &_s5UIKit26UIListContentConfigurationVSgMd);
  v40 = v155;
  v39 = v156;
  if ((*(v155 + 48))(v36, 1, v156) != 1)
  {
    (*(v40 + 32))(v157, v36, v39);
    v42 = UIListContentConfiguration.image.getter();
    if (v42)
    {
      v43 = v42;
      v44 = *(v27 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_symbolView);
      v45 = [v44 setImage_];
      v46 = (*((*MEMORY[0x277D85000] & *v27) + 0xB0))(v45);
      [v44 setTintColor_];

      v47 = [v27 contentView];
      [v47 addSubview_];
    }

    v48 = *(v27 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_titleLabel);
    v49 = *MEMORY[0x277D76920];
    v50 = *MEMORY[0x277D74410];
    v150 = objc_opt_self();
    v51 = [v150 preferredFontDescriptorWithTextStyle_];
    [v51 pointSize];
    v53 = v52;

    v54 = objc_allocWithZone(MEMORY[0x277D75520]);
    v146 = v49;
    v55 = [v54 initForTextStyle_];
    v149 = objc_opt_self();
    v56 = [v149 systemFontOfSize:v53 weight:v50];
    v57 = [v55 scaledFontForFont_];

    [v48 setFont_];
    v58 = *(v27 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_labelStackView);
    [v58 addArrangedSubview_];
    if (v24[*(v34 + 40)] == 1)
    {
      v59 = v151;
      UIListContentConfiguration.textProperties.getter();
      v60 = UIListContentConfiguration.TextProperties.color.getter();
      (v152)[1](v59, v153);
      v61 = [objc_opt_self() configurationWithHierarchicalColor_];

      v62 = MEMORY[0x245D0D180](0x676E697265657473, 0xED00006C65656877);
      v63 = CAFUIImageForSymbolNameWithConfiguration(v62, v61);

      if (v63)
      {
        v64 = [objc_opt_self() textAttachmentWithImage_];

LABEL_20:
        v65 = UIListContentConfiguration.attributedText.getter();
        v140 = v24;
        v154 = v58;
        v147 = v35;
        v148 = v64;
        if (v65)
        {
          v66 = v65;
          if (v64)
          {
            v67 = v64;
            [v66 mutableCopy];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSMutableAttributedString);
            swift_dynamicCast();
            v68 = v158;
            v69 = objc_allocWithZone(MEMORY[0x277CCA898]);
            v70 = MEMORY[0x245D0D180](8224, 0xE200000000000000);
            v71 = [v69 initWithString_];

            [v68 appendAttributedString_];
            v27 = v145;
            v72 = [objc_opt_self() attributedStringWithAttachment_];
            [v68 appendAttributedString_];

            [v48 setLineBreakMode_];
            v73 = v68;
            [v48 setAttributedText_];
          }

          else
          {
            [v48 setLineBreakMode_];
            [v48 setAttributedText_];
          }
        }

        else if (v64)
        {
          v74 = v64;
          v75 = UIListContentConfiguration.text.getter();
          if (v76)
          {
            v77 = v75;
          }

          else
          {
            v77 = 0;
          }

          if (v76)
          {
            v78 = v76;
          }

          else
          {
            v78 = 0xE000000000000000;
          }

          v79 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v80 = MEMORY[0x245D0D180](v77, v78);

          v66 = [v79 initWithString_];

          v81 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v82 = MEMORY[0x245D0D180](8224, 0xE200000000000000);
          v83 = [v81 initWithString_];

          [v66 appendAttributedString_];
          v27 = v145;
          v84 = [objc_opt_self() attributedStringWithAttachment_];
          [v66 appendAttributedString_];

          [v48 setLineBreakMode_];
          [v48 setAttributedText_];
        }

        else
        {
          [v48 setLineBreakMode_];
          v85 = UIListContentConfiguration.text.getter();
          if (v86)
          {
            v66 = MEMORY[0x245D0D180](v85);
          }

          else
          {
            v66 = 0;
          }

          [v48 setText_];
        }

        v87 = v151;
        UIListContentConfiguration.textProperties.getter();
        v88 = UIListContentConfiguration.TextProperties.color.getter();
        v89 = v153;
        v90 = v152[1];
        v90(v87, v153);
        [v48 setTextColor_];

        v91 = *(v27 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_subtitleLabel);
        UIListContentConfiguration.secondaryTextProperties.getter();
        v92 = UIListContentConfiguration.TextProperties.color.getter();
        v90(v87, v89);
        v152 = v91;
        [v91 &selRef:v92 collectionView:? previewForHighlightingContextMenuWithConfiguration:?];

        v93 = *(v27 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_descriptionLabel);
        UIListContentConfiguration.secondaryTextProperties.getter();
        v94 = UIListContentConfiguration.TextProperties.color.getter();
        v90(v87, v89);
        [v93 setTextColor_];

        v95 = CAFUITileBaseCell.hasSubtitle.getter();
        v96 = v140;
        v97 = v154;
        if (v95)
        {
          v98 = UIListContentConfiguration.secondaryText.getter();
          if (v99)
          {
            v100 = MEMORY[0x245D0D180](v98);
          }

          else
          {
            v100 = 0;
          }

          v101 = v147;
          v102 = v152;
          [v152 setText_];

          if (v101 && (objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            v103 = *MEMORY[0x277D76938];
            v104 = *MEMORY[0x277D74418];
            v105 = [v150 preferredFontDescriptorWithTextStyle_];
            [v105 pointSize];
            v107 = v106;

            v108 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
            v109 = [v149 systemFontOfSize:v107 weight:v104];
            v110 = [v108 scaledFontForFont_];

            [v102 setFont_];
            [v97 addArrangedSubview_];
          }

          else
          {
            v111 = *MEMORY[0x277D74418];
            v112 = v146;
            v113 = [v150 preferredFontDescriptorWithTextStyle_];
            [v113 pointSize];
            v115 = v114;

            v116 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
            v117 = [v149 systemFontOfSize:v115 weight:v111];
            v118 = [v116 scaledFontForFont_];

            [v102 setFont_];
            v119 = [v27 contentView];
            [v119 addSubview_];
          }
        }

        if (CAFUITileBaseCell.hasDescription.getter())
        {
          v120 = (v96 + *(v144 + 24));
          v121 = v120[1];
          if (v121)
          {
            v159 = *v120;
            v160 = v121;

            v122 = v141;
            static CharacterSet.whitespaces.getter();
            lazy protocol witness table accessor for type String and conformance String();
            v123 = StringProtocol.trimmingCharacters(in:)();
            v125 = v124;
            (*(v142 + 8))(v122, v143);

            v121 = MEMORY[0x245D0D180](v123, v125);
          }

          [v93 setText_];

          v126 = *MEMORY[0x277D76938];
          v127 = *MEMORY[0x277D74418];
          v128 = [v150 preferredFontDescriptorWithTextStyle_];
          [v128 pointSize];
          v130 = v129;

          v131 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
          v132 = [v149 systemFontOfSize:v130 weight:v127];
          v133 = [v131 scaledFontForFont_];

          [v93 setFont_];
          [v97 addArrangedSubview_];
          v134 = v148;
        }

        else
        {
          v135 = CAFUITileBaseCell.hasSettingInfo.getter();
          v134 = v148;
          if (v135)
          {
            v136 = [v27 contentView];
            v137 = *(v27 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton);
            [v136 addSubview_];

            [v137 setNeedsUpdateConfiguration];
          }
        }

        v138 = [v27 contentView];
        [v138 addSubview_];

        CAFUITileBaseCell.setupConstraints()();
        (*(v155 + 8))(v157, v156);
        v41 = v96;
        goto LABEL_51;
      }
    }

    v64 = 0;
    goto LABEL_20;
  }

  outlined destroy of RequestTemporaryContentModel?(v36, &_s5UIKit26UIListContentConfigurationVSgMd);
  CAFUITileBaseCell.setupConstraints()();
  v41 = v24;
LABEL_51:
  outlined destroy of CAFUITileCellConfiguration(v41);
}

Swift::Void __swiftcall CAFUITileBaseCell.setupConstraints()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v220 = &v214 - v2;
  v3 = type metadata accessor for UIListContentConfiguration();
  v222 = *(v3 - 8);
  v223 = v3;
  MEMORY[0x28223BE20](v3);
  v221 = &v214 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v214 - v6;
  v8 = type metadata accessor for CAFUITileCellConfiguration(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v214 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_modifiableTitleConstraints;
  swift_beginAccess();
  v14 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  v218 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v219 = v12;
  [v12 deactivateConstraints_];

  v224 = v13;
  *&v0[v13] = MEMORY[0x277D84F90];

  v16 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  v17 = v0;
  outlined init with copy of NotificationModel.Symbol?(&v0[v16], v7, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v7, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    return;
  }

  outlined init with take of CAFUITileCellConfiguration(v7, v11);
  v18 = v220;
  outlined init with copy of NotificationModel.Symbol?(&v11[*(v8 + 20)], v220, &_s5UIKit26UIListContentConfigurationVSgMd);
  v20 = v222;
  v19 = v223;
  v21 = v11;
  if ((*(v222 + 48))(v18, 1, v223) != 1)
  {
    (*(v20 + 32))(v221, v18, v19);
    v63 = &selRef_systemImageNamed_withConfiguration_;
    v64 = v17;
    v65 = [v17 contentView];
    v66 = &selRef__systemImageNamed_withConfiguration_;
    v67 = [v65 trailingAnchor];

    v68 = *&v21[*(v8 + 32)];
    v69 = &selRef__systemImageNamed_withConfiguration_;
    v216 = v68;
    v217 = v21;
    if (!v68)
    {
      if (!CAFUITileBaseCell.hasSettingInfo.getter())
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v70 = v68;
    [v70 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v71) = 1144750080;
    [v70 setContentCompressionResistancePriority:0 forAxis:v71];
    v220 = [v70 leadingAnchor];

    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (v72)
    {
      v73 = v72;
      v74 = v70;
      v75 = [v73 image];
      if (v75)
      {
        v76 = v75;
        v77 = v74;
        [v73 _setContinuousCornerRadius_];
        v78 = [v73 layer];
        [v78 setMasksToBounds_];

        v79 = v77;
        v80 = MEMORY[0x245D0D180](0xD000000000000020, 0x800000024242A9C0);
        [v73 setAccessibilityIdentifier_];
        v81 = v79;

        [v76 size];
        if (v82 <= 78.0)
        {
          v83 = v82;
        }

        else
        {
          v83 = 78.0;
        }

        [v76 size];
        v85 = v84;
        [v76 size];
        if (v85 > 78.0)
        {
          v87 = v86 * 78.0;
          [v76 size];
          v86 = v87 / v88;
        }

        if (v83 > 50.0)
        {
          v89 = v83;
        }

        else
        {
          v89 = 50.0;
        }

        if (v86 >= 50.0)
        {
          v90 = 1;
        }

        else
        {
          v90 = 2;
        }

        if (v86 >= 50.0)
        {
          v91 = v86;
        }

        else
        {
          v91 = v89;
        }

        if (v86 < 50.0)
        {
          v83 = v89;
        }

        [v73 setContentMode_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_242423BC0;
        v93 = [v64 contentView];
        v94 = [v93 heightAnchor];
        v215 = v76;
        v95 = v94;

        v96 = [v73 heightAnchor];
        v97 = [v95 constraintGreaterThanOrEqualToAnchor:v96 constant:12.0];

        *(inited + 32) = v97;
        v98 = [v81 centerYAnchor];
        v99 = [v64 contentView];
        v100 = [v99 centerYAnchor];

        v101 = [v98 constraintEqualToAnchor_];
        *(inited + 40) = v101;
        v102 = [v81 trailingAnchor];

        v103 = [v64 contentView];
        v104 = [v103 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_ + 4];

        v105 = [v102 constraintEqualToAnchor:v104 constant:-8.0];
        *(inited + 48) = v105;
        v106 = [v73 heightAnchor];
        v107 = [v106 constraintEqualToConstant_];

        *(inited + 56) = v107;
        v108 = [v73 widthAnchor];

        v63 = &selRef_systemImageNamed_withConfiguration_;
        v66 = &selRef__systemImageNamed_withConfiguration_;
        v109 = [v108 constraintEqualToConstant_];

        *(inited + 64) = v109;
        swift_beginAccess();
        specialized Array.append<A>(contentsOf:)(inited);
        swift_endAccess();

        v69 = &selRef__systemImageNamed_withConfiguration_;
LABEL_31:

        v119 = CAFUITileBaseCell.hasSettingInfo.getter();
        v120 = v220;
        if (!v119)
        {
          v67 = v220;
          goto LABEL_36;
        }

        v121 = [v70 v69[39]];
        v67 = v120;
        if (v121)
        {
LABEL_34:
          v215 = v121;
          v123 = *&v64[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton];
          v220 = [v123 v69[39]];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v124 = swift_initStackObject();
          *(v124 + 16) = xmmword_2424244E0;
          v125 = [v123 widthAnchor];
          v126 = v66;
          v127 = [v123 heightAnchor];
          v128 = [v125 constraintEqualToAnchor_];

          *(v124 + 32) = v128;
          v129 = [v123 centerYAnchor];
          v130 = [v64 v63[244]];
          v131 = [v130 centerYAnchor];

          v69 = &selRef__systemImageNamed_withConfiguration_;
          v132 = [v129 constraintEqualToAnchor_];

          *(v124 + 40) = v132;
          v66 = v126;
          v133 = [v123 v126 + 2508];
          v134 = v215;
          v135 = [v133 constraintEqualToAnchor:v215 constant:-8.0];

          *(v124 + 48) = v135;
          v67 = v220;
          swift_beginAccess();
          specialized Array.append<A>(contentsOf:)(v124);
          swift_endAccess();

LABEL_36:
          v220 = v67;
          v136 = UIListContentConfiguration.image.getter();
          if (v136)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v137 = swift_initStackObject();
            *(v137 + 16) = xmmword_242423B90;
            v138 = *&v64[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_symbolView];
            v139 = [v138 v69[39]];
            v140 = [v64 v63[244]];
            v141 = v63;
            v142 = v66;
            v143 = [v140 v69[39]];

            v144 = [v139 constraintEqualToAnchor_];
            *(v137 + 32) = v144;
            v145 = [v138 centerYAnchor];
            v146 = [v64 v141 + 2808];
            v147 = [v146 centerYAnchor];

            v148 = [v145 constraintEqualToAnchor_];
            v66 = v142;
            *(v137 + 40) = v148;
            v149 = [v138 widthAnchor];
            v150 = [v149 constraintEqualToConstant_];

            *(v137 + 48) = v150;
            v151 = *&v64[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_labelStackView];
            v152 = [v151 leadingAnchor];
            v153 = [v138 v142 + 2508];
            v154 = [v152 constraintEqualToAnchor_];

            *(v137 + 56) = v154;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v137 = swift_initStackObject();
            *(v137 + 16) = xmmword_242423BD0;
            v151 = *&v64[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_labelStackView];
            v155 = [v151 v69[39]];
            v156 = [v64 v63[244]];
            v157 = [v156 v69[39]];

            v158 = [v155 constraintEqualToAnchor:v157 constant:12.0];
            *(v137 + 32) = v158;
          }

          swift_beginAccess();
          specialized Array.append<A>(contentsOf:)(v137);
          swift_endAccess();
          if (CAFUITileBaseCell.hasSubtitle.getter())
          {
            v159 = v66;
            v160 = v216;
            if (v216 && (objc_opt_self(), swift_dynamicCastObjCClass()))
            {
              v161 = *&v64[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_subtitleLabel];
              v162 = v160;
              v163 = [v64 contentView];
              v164 = [v163 effectiveUserInterfaceLayoutDirection] != 0;

              v165 = 2 * v164;
              v166 = &selRef_systemImageNamed_withConfiguration_;
              [v161 setTextAlignment_];
              LODWORD(v167) = 1132068864;
              [v161 setContentCompressionResistancePriority:0 forAxis:v167];
            }

            else
            {
              v168 = *&v64[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_subtitleLabel];
              v169 = [v64 contentView];
              v170 = [v169 effectiveUserInterfaceLayoutDirection] == 0;

              [v168 setTextAlignment_];
              LODWORD(v171) = 1144750080;
              [v168 setContentCompressionResistancePriority:0 forAxis:v171];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v172 = swift_initStackObject();
              *(v172 + 16) = xmmword_2424244E0;
              v173 = [v168 widthAnchor];
              v174 = [v64 contentView];
              v166 = &selRef_systemImageNamed_withConfiguration_;
              v175 = [v174 widthAnchor];

              v176 = [v173 constraintLessThanOrEqualToAnchor:v175 multiplier:0.5];
              *(v172 + 32) = v176;
              v177 = [v168 v159 + 2508];
              v178 = v220;
              v179 = [v177 constraintEqualToAnchor:v220 constant:-12.0];

              *(v172 + 40) = v179;
              v180 = [v168 centerYAnchor];
              v181 = [v64 contentView];
              v182 = [v181 centerYAnchor];

              v183 = [v180 constraintEqualToAnchor_];
              v66 = &selRef__systemImageNamed_withConfiguration_;
              *(v172 + 48) = v183;
              swift_beginAccess();
              specialized Array.append<A>(contentsOf:)(v172);
              swift_endAccess();
              v162 = v178;
              v220 = [v168 leadingAnchor];
            }
          }

          else
          {
            v166 = &selRef_systemImageNamed_withConfiguration_;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v184 = swift_initStackObject();
          *(v184 + 16) = xmmword_242423BC0;
          v185 = [v151 centerYAnchor];
          v186 = [v64 v166[244]];
          v187 = [v186 centerYAnchor];

          v188 = [v185 constraintEqualToAnchor_];
          *(v184 + 32) = v188;
          v189 = [v151 v66[119]];
          v190 = [v189 constraintEqualToAnchor:v220 constant:-12.0];

          *(v184 + 40) = v190;
          v191 = [v64 v166[244]];
          v192 = [v191 heightAnchor];

          v193 = [v151 heightAnchor];
          v194 = [v192 constraintGreaterThanOrEqualToAnchor:v193 constant:10.0];

          *(v184 + 48) = v194;
          v195 = [v64 separatorLayoutGuide];
          v196 = [v195 leadingAnchor];

          v197 = [v151 leadingAnchor];
          v198 = [v196 constraintEqualToAnchor_];

          *(v184 + 56) = v198;
          v199 = [v64 separatorLayoutGuide];
          v200 = [v199 v66[119]];

          v201 = [v64 v66[119]];
          v202 = [v200 constraintEqualToAnchor:v201 constant:-8.0];

          *(v184 + 64) = v202;
          swift_beginAccess();
          specialized Array.append<A>(contentsOf:)(v184);
          swift_endAccess();
          v203 = *&v64[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_titleLabel];
          if (CAFUITileBaseCell.hasDescription.getter())
          {
            v204 = 1;
          }

          else
          {
            v204 = 2;
          }

          [v203 setNumberOfLines_];
          v205 = *MEMORY[0x277D76920];
          v206 = *MEMORY[0x277D74410];
          v207 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
          [v207 pointSize];
          v209 = v208;

          v210 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
          v211 = [objc_opt_self() systemFontOfSize:v209 weight:v206];
          v212 = [v210 scaledFontForFont_];

          [v203 setFont_];

          v213 = Array._bridgeToObjectiveC()().super.isa;

          [v219 activateConstraints_];

          (*(v222 + 8))(v221, v223);
          v62 = v217;
          goto LABEL_50;
        }

LABEL_33:
        v122 = [v64 v63[244]];
        v121 = [v122 v66[119]];

        v120 = v67;
        goto LABEL_34;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v110 = swift_initStackObject();
    *(v110 + 16) = xmmword_242423B80;
    v111 = [v70 centerYAnchor];
    v112 = [v64 contentView];
    v113 = [v112 centerYAnchor];

    v114 = [v111 constraintEqualToAnchor_];
    *(v110 + 32) = v114;
    v115 = [v70 trailingAnchor];
    v116 = [v64 contentView];
    v117 = [v116 trailingAnchor];

    v118 = [v115 constraintEqualToAnchor:v117 constant:-8.0];
    *(v110 + 40) = v118;
    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v110);
    swift_endAccess();
    goto LABEL_31;
  }

  outlined destroy of RequestTemporaryContentModel?(v18, &_s5UIKit26UIListContentConfigurationVSgMd);
  v22 = *&v11[*(v8 + 32)];
  if (v22)
  {
    v23 = v17;
    v24 = v22;
    [v24 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v25) = 1144750080;
    [v24 setContentCompressionResistancePriority:0 forAxis:v25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_242423BE0;
    v27 = [v24 centerYAnchor];
    v28 = [v17 contentView];
    v217 = v21;
    v29 = v28;
    v30 = [v28 centerYAnchor];

    v31 = [v27 constraintEqualToAnchor_];
    *(v26 + 32) = v31;
    v32 = [v24 leadingAnchor];
    v33 = [v23 contentView];
    v34 = [v33 &selRef_integerSettingService_didUpdateMinimumSymbolName_ + 1];

    v35 = [v32 constraintEqualToAnchor_];
    *(v26 + 40) = v35;
    v36 = [v24 trailingAnchor];
    v37 = [v23 contentView];
    v38 = [v37 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_ + 4];

    v39 = [v36 constraintEqualToAnchor_];
    *(v26 + 48) = v39;
    v40 = [v24 heightAnchor];
    v41 = [v23 contentView];
    [v41 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v225.origin.x = v43;
    v225.origin.y = v45;
    v225.size.width = v47;
    v225.size.height = v49;
    v50 = [v40 constraintGreaterThanOrEqualToConstant_];

    *(v26 + 56) = v50;
    v51 = [v23 separatorLayoutGuide];
    v52 = [v51 leadingAnchor];

    v53 = [v23 contentView];
    v54 = [v53 leadingAnchor];

    v55 = [v52 constraintEqualToAnchor:v54 constant:8.0];
    *(v26 + 64) = v55;
    v56 = [v23 separatorLayoutGuide];
    v57 = [v56 trailingAnchor];

    v58 = [v23 contentView];
    v59 = [v58 trailingAnchor];

    v60 = [v57 constraintEqualToAnchor:v59 constant:-8.0];
    *(v26 + 72) = v60;
    v21 = v217;
    *&v23[v224] = v26;

    v61 = Array._bridgeToObjectiveC()().super.isa;

    [v219 activateConstraints_];
  }

  v62 = v21;
LABEL_50:
  outlined destroy of CAFUITileCellConfiguration(v62);
}

id specialized CAFUICellProtocol.defaultSecondaryTextColor.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x60))())
  {
    if (((*((*v1 & *v0) + 0x58))() & 1) != 0 && (([v0 isSelected] & 1) != 0 || objc_msgSend(v0, sel_isHighlighted)))
    {
      v2 = &selRef__carSystemFocusLabelColor;
    }

    else
    {
      v2 = &selRef__carSystemSecondaryColor;
    }
  }

  else
  {
    v2 = &selRef_systemGrayColor;
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xD0))())
  {
    if (((*((*v1 & *v0) + 0xC8))() & 1) != 0 && (([v0 isSelected] & 1) != 0 || objc_msgSend(v0, sel_isHighlighted)))
    {
      v2 = &selRef__carSystemFocusLabelColor;
    }

    else
    {
      v2 = &selRef__carSystemSecondaryColor;
    }
  }

  else
  {
    v2 = &selRef_systemGrayColor;
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

uint64_t CAFUITileCellConfiguration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CAFUITileCellConfiguration.userVisibleDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for CAFUITileCellConfiguration(0) + 24));

  return v1;
}

void *CAFUITileCellConfiguration.userVisibleDetailedDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for CAFUITileCellConfiguration(0) + 28));
  v2 = v1;
  return v1;
}

void *CAFUITileCellConfiguration.detailView.getter()
{
  v1 = *(v0 + *(type metadata accessor for CAFUITileCellConfiguration(0) + 32));
  v2 = v1;
  return v1;
}

uint64_t CAFUITileCellConfiguration.accessory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CAFUITileCellConfiguration(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t key path setter for CAFUITileBaseCell.tileCellConfiguration : CAFUITileBaseCell(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  outlined init with copy of NotificationModel.Symbol?(a1, &v13[-v8], &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(v10 + v11, v7, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v9, v10 + v11);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v7);
  outlined destroy of RequestTemporaryContentModel?(v7, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  return outlined destroy of RequestTemporaryContentModel?(v9, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
}

uint64_t CAFUITileBaseCell.tileCellConfiguration.didset(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSg_ADtMd);
  MEMORY[0x28223BE20](v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v28[0] = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = type metadata accessor for CAFUITileCellConfiguration(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = v28 - v19;
  v21 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  v28[1] = v2;
  outlined init with copy of NotificationModel.Symbol?(v2 + v21, v13, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    return outlined destroy of RequestTemporaryContentModel?(v13, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  }

  outlined init with take of CAFUITileCellConfiguration(v13, v20);
  outlined init with copy of CAFUITileCellConfiguration(v20, v11);
  (*(v15 + 56))(v11, 0, 1, v14);
  v24 = *(v3 + 48);
  outlined init with copy of NotificationModel.Symbol?(v29, v5, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined init with copy of NotificationModel.Symbol?(v11, &v5[v24], &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if (v22(v5, 1, v14) != 1)
  {
    v25 = v28[0];
    outlined init with copy of NotificationModel.Symbol?(v5, v28[0], &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    if (v22(&v5[v24], 1, v14) != 1)
    {
      outlined init with take of CAFUITileCellConfiguration(&v5[v24], v18);
      v26 = v25;
      v27 = specialized static CAFUITileCellConfiguration.== infix(_:_:)(v25, v18);
      outlined destroy of CAFUITileCellConfiguration(v18);
      outlined destroy of RequestTemporaryContentModel?(v11, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
      outlined destroy of CAFUITileCellConfiguration(v26);
      outlined destroy of RequestTemporaryContentModel?(v5, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
      if (v27)
      {
        return outlined destroy of CAFUITileCellConfiguration(v20);
      }

      goto LABEL_9;
    }

    outlined destroy of RequestTemporaryContentModel?(v11, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    outlined destroy of CAFUITileCellConfiguration(v25);
LABEL_8:
    outlined destroy of RequestTemporaryContentModel?(v5, &_s5CAFUI26CAFUITileCellConfigurationVSg_ADtMd);
LABEL_9:
    CAFUITileBaseCell.setupViews()();
    return outlined destroy of CAFUITileCellConfiguration(v20);
  }

  outlined destroy of RequestTemporaryContentModel?(v11, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if (v22(&v5[v24], 1, v14) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of RequestTemporaryContentModel?(v5, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  return outlined destroy of CAFUITileCellConfiguration(v20);
}

id CAFUITileBaseCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CAFUITileBaseCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell) = 0;
  v1 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v2 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *CAFUITileBaseCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v72 - v10;
  v11 = type metadata accessor for UIBackgroundConfiguration();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v77 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = &v72 - v14;
  v15 = type metadata accessor for UIButton.Configuration();
  v79 = *(v15 - 8);
  v80 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell] = 0;
  v18 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v19 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v21 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_symbolView;
  *&v4[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_symbolView] = v20;
  [v20 setContentMode_];
  [*&v4[v21] setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = *&v4[v21];
  v23 = MEMORY[0x245D0D180](0xD00000000000001FLL, 0x800000024242ABE0);
  [v22 setAccessibilityIdentifier_];

  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v25 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_titleLabel;
  *&v4[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_titleLabel] = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = *&v4[v25];
  v27 = MEMORY[0x245D0D180](0xD00000000000001ALL, 0x800000024242AC00);
  [v26 setAccessibilityIdentifier_];

  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v29 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_subtitleLabel;
  *&v4[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_subtitleLabel] = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = *&v4[v29];
  v31 = MEMORY[0x245D0D180](0xD00000000000001DLL, 0x800000024242AC20);
  [v30 setAccessibilityIdentifier_];

  [*&v4[v29] setNumberOfLines_];
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v33 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_descriptionLabel;
  *&v4[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_descriptionLabel] = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = *&v4[v33];
  v35 = MEMORY[0x245D0D180](0xD000000000000020, 0x800000024242AC40);
  [v34 setAccessibilityIdentifier_];

  [*&v4[v33] setNumberOfLines_];
  v36 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v37 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_labelStackView;
  *&v4[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_labelStackView] = v36;
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v37] setAlignment_];
  [*&v4[v37] setAxis_];
  [*&v4[v37] setDistribution_];
  [*&v4[v37] setSpacing_];
  LODWORD(v38) = 1132068864;
  [*&v4[v37] setContentCompressionResistancePriority:0 forAxis:v38];
  type metadata accessor for CAFUITileBaseCell.SettingInfoButton();
  v39 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v40 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton;
  *&v4[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton] = v39;
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  v41 = *&v4[v40];
  v42 = MEMORY[0x245D0D180](0xD00000000000001FLL, 0x800000024242AC70);
  [v41 H];

  *&v4[OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_modifiableTitleConstraints] = MEMORY[0x277D84F90];
  v43 = type metadata accessor for CAFUITileBaseCell(0);
  v82.receiver = v4;
  v82.super_class = v43;
  v44 = objc_msgSendSuper2(&v82, sel_initWithFrame_, a1, a2, a3, a4);
  v45 = MEMORY[0x245D0D180](0xD000000000000019, 0x800000024242AC90);
  [v44 H];

  v46 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76920] scale:2];
  v47 = MEMORY[0x245D0D180](0x7269632E6F666E69, 0xEB00000000656C63);
  v48 = CAFUIImageForSymbolNameWithConfiguration(v47, v46);

  static UIButton.Configuration.filled()();
  UIButton.Configuration.contentInsets.setter();
  v73 = v48;
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePlacement.setter();
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton;
  v51 = *(v44 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton);
  aBlock[4] = partial apply for closure #1 in CAFUITileBaseCell.init(frame:);
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIButton) -> ();
  aBlock[3] = &block_descriptor_2;
  v52 = _Block_copy(aBlock);
  v53 = v51;

  [v53 setConfigurationUpdateHandler_];
  _Block_release(v52);

  v54 = *(v44 + v50);
  v55 = v78;
  v56 = v79;
  v57 = v80;
  (*(v79 + 16))(v78, v17, v80);
  (*(v56 + 56))(v55, 0, 1, v57);
  v58 = v54;
  UIButton.configuration.setter();

  [*(v44 + v50) addTarget:v44 action:sel_infoButtonClicked_ forControlEvents:64];
  v59 = *((*MEMORY[0x277D85000] & *v44) + 0xC0);
  v60 = *(v44 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_titleLabel);
  v61 = v59();
  [v60 setTextColor_];

  v62 = *(v44 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_subtitleLabel);
  v63 = specialized CAFUICellProtocol.defaultSecondaryTextColor.getter();
  [v62 setTextColor_];

  v64 = *(v44 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_descriptionLabel);
  v65 = specialized CAFUICellProtocol.defaultSecondaryTextColor.getter();
  [v64 setTextColor_];

  v66 = [v44 contentView];
  [v66 setClipsToBounds_];

  v67 = v77;
  static UIBackgroundConfiguration.listCell()();
  result = [objc_opt_self() tableCellPlainBackgroundColor];
  if (result)
  {
    UIBackgroundConfiguration.backgroundColor.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
    v69 = v74;
    v70 = v75;
    v71 = v76;
    (*(v75 + 16))(v74, v67, v76);
    (*(v70 + 56))(v69, 0, 1, v71);
    MEMORY[0x245D0D550](v69);

    (*(v70 + 8))(v67, v71);
    (*(v79 + 8))(v17, v80);
    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in CAFUITileBaseCell.init(frame:)(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    UIButton.configuration.getter();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return outlined destroy of RequestTemporaryContentModel?(v10, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    }

    (*(v12 + 32))(v14, v10, v11);
    v17 = objc_opt_self();
    v18 = [v17 clearColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    v19 = [a1 state];
    if (v19 > 3)
    {
      if (v19 != 8 && v19 != 4)
      {
        goto LABEL_12;
      }
    }

    else if (v19 != 1)
    {
      if (v19 == 2)
      {
LABEL_20:
        (*(v12 + 16))(v8, v14, v11);
        (*(v12 + 56))(v8, 0, 1, v11);
        UIButton.configuration.setter();

        return (*(v12 + 8))(v14, v11);
      }

LABEL_12:
      v22 = [v16 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      if ((*((*MEMORY[0x277D85000] & *v16) + 0xD8))())
      {
        if ((UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter()) && ((*((*MEMORY[0x277D85000] & *v16) + 0xC8))())
        {
          v23 = &selRef__carSystemFocusLabelColor;
        }

        else
        {
          v23 = &selRef_systemCyanColor;
        }
      }

      else
      {
        v23 = &selRef_systemGrayColor;
      }

      v24 = [v17 *v23];
      UIButton.Configuration.baseForegroundColor.setter();
      (*(v25 + 8))(v4, v2);
      goto LABEL_20;
    }

    if ((*((*MEMORY[0x277D85000] & *v16) + 0xD8))())
    {
      v20 = [v17 systemCyanColor];
      UIButton.Configuration.baseBackgroundColor.setter();
      v21 = [v17 _carSystemFocusLabelColor];
      UIButton.Configuration.baseForegroundColor.setter();
    }

    goto LABEL_20;
  }

  return result;
}

id CAFUITileBaseCell.updateConfiguration(using:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_symbolView);
  v13 = MEMORY[0x277D85000];
  v14 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))(v9);
  [v12 setTintColor_];

  v15 = *(v1 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_titleLabel);
  v16 = (*((*v13 & *v1) + 0xC0))();
  [v15 setTextColor_];

  v17 = *(v1 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_subtitleLabel);
  v18 = specialized CAFUICellProtocol.defaultSecondaryTextColor.getter();
  [v17 setTextColor_];

  v19 = *(v1 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_descriptionLabel);
  v20 = specialized CAFUICellProtocol.defaultSecondaryTextColor.getter();
  [v19 setTextColor_];

  if (((*((*v13 & *v1) + 0xC8))([*(v1 + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton) setNeedsUpdateConfiguration]) & 1) != 0 && ((objc_msgSend(v1, sel_isSelected) & 1) != 0 || objc_msgSend(v1, sel_isHighlighted)))
  {
    MEMORY[0x245D0D540]();
    v21 = type metadata accessor for UIBackgroundConfiguration();
    if ((*(*(v21 - 8) + 48))(v11, 1, v21))
    {
      outlined init with copy of NotificationModel.Symbol?(v11, v8, &_s5UIKit25UIBackgroundConfigurationVSgMd);
      MEMORY[0x245D0D550](v8);
      v22 = v11;
      return outlined destroy of RequestTemporaryContentModel?(v22, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    }

    v26 = [objc_opt_self() _carSystemFocusColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    v25 = v11;
  }

  else
  {
    MEMORY[0x245D0D540]();
    v23 = type metadata accessor for UIBackgroundConfiguration();
    if ((*(*(v23 - 8) + 48))(v5, 1, v23))
    {
      outlined init with copy of NotificationModel.Symbol?(v5, v8, &_s5UIKit25UIBackgroundConfigurationVSgMd);
      MEMORY[0x245D0D550](v8);
      v22 = v5;
      return outlined destroy of RequestTemporaryContentModel?(v22, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    }

    result = [objc_opt_self() tableCellPlainBackgroundColor];
    if (!result)
    {
      __break(1u);
      return result;
    }

    UIBackgroundConfiguration.backgroundColor.setter();
    v25 = v5;
  }

  return MEMORY[0x245D0D550](v25);
}

uint64_t outlined init with take of CAFUITileCellConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CAFUITileBaseCell.disclosureAccessory(cell:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - v6;
  v8 = type metadata accessor for UICellAccessory.Placement();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2(a1);
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
  v18 = *MEMORY[0x277D74A98];
  v19 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v19 - 8) + 104))(v11, v18, v19);
  *v17 = protocol witness for CAFListContentRepresentable.rowDetailedDescription.getter in conformance CAFPairedDevicesInformation;
  v17[1] = 0;
  (*(v9 + 104))(v11, *MEMORY[0x277D74AD8], v8);
  v20 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = v16;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v13 + 8))(v15, v12);
}

Swift::Void __swiftcall CAFUITileBaseCell.prepareForReuse()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CAFUITileBaseCell(0);
  v14.receiver = v0;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, sel_prepareForReuse);
  CAFUITileBaseCell.removeAllSubviews()();
  v8 = objc_opt_self();
  v9 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_modifiableTitleConstraints;
  swift_beginAccess();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 deactivateConstraints_];

  *&v0[v9] = MEMORY[0x277D84F90];

  UICollectionViewListCell.accessories.setter();
  v11 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(&v0[v12], v4, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v6, &v0[v12]);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v4);
  outlined destroy of RequestTemporaryContentModel?(v4, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined destroy of RequestTemporaryContentModel?(v6, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
}

id closure #1 in static CAFUITileBaseCell.chevronImageView(cell:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = specialized CAFUICellProtocol.defaultSecondaryTextColor.getter();

    return v2;
  }

  else
  {
    v4 = [objc_opt_self() _carSystemSecondaryColor];

    return v4;
  }
}

id closure #1 in static CAFUITileBaseCell.arrowUpImageView(cell:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0xC0))();

    return v2;
  }

  else
  {
    v4 = [objc_opt_self() _carSystemPrimaryColor];

    return v4;
  }
}

id CAFUITileBaseCell.SettingInfoButton.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *CAFUICollectionHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5CAFUI25CAFUICollectionHeaderView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = &v4[OBJC_IVAR____TtC5CAFUI25CAFUICollectionHeaderView_title];
  v11 = type metadata accessor for CAFUICollectionHeaderView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v57.receiver = v4;
  v57.super_class = v11;
  v12 = objc_msgSendSuper2(&v57, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = MEMORY[0x245D0D180](0xD000000000000019, 0x8000000242424D80);
  [v12 setAccessibilityIdentifier_];

  v14 = OBJC_IVAR____TtC5CAFUI25CAFUICollectionHeaderView_titleLabel;
  v15 = *&v12[OBJC_IVAR____TtC5CAFUI25CAFUICollectionHeaderView_titleLabel];
  v16 = MEMORY[0x245D0D180](0xD00000000000001ELL, 0x800000024242ABC0);
  [v15 setAccessibilityIdentifier_];

  v17 = *&v12[v14];
  v18 = *MEMORY[0x277D76920];
  v19 = *MEMORY[0x277D74420];
  v20 = objc_opt_self();
  v21 = v17;
  v22 = [v20 preferredFontDescriptorWithTextStyle_];
  [v22 pointSize];
  v24 = v23;

  v25 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v26 = [objc_opt_self() systemFontOfSize:v24 weight:v19];
  v27 = [v25 scaledFontForFont_];

  [v21 setFont_];
  v28 = *&v12[v14];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 _carSystemSecondaryColor];
  [v30 setTextColor_];

  [*&v12[v14] setNumberOfLines_];
  [*&v12[v14] setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = *&v12[v14];
  v33 = v12;
  [v33 addSubview_];
  v34 = [v33 topAnchor];
  v35 = [*&v12[v14] topAnchor];
  v55 = [v34 constraintEqualToAnchor:v35 constant:0.0];

  v36 = [v33 bottomAnchor];
  v37 = v14;
  v38 = [*&v12[v14] bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:4.0];

  LODWORD(v40) = 1148846080;
  [v55 setPriority_];
  LODWORD(v41) = 1148846080;
  [v39 setPriority_];
  v56 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_242423B90;
  v43 = [*&v12[v37] leadingAnchor];
  v44 = [v33 layoutMarginsGuide];

  v45 = [v44 leadingAnchor];
  v46 = [v43 constraintEqualToAnchor_];

  *(v42 + 32) = v46;
  v47 = [*&v12[v37] trailingAnchor];
  v48 = [v33 layoutMarginsGuide];

  v49 = [v48 trailingAnchor];
  v50 = [v47 constraintEqualToAnchor_];

  *(v42 + 40) = v50;
  *(v42 + 48) = v55;
  *(v42 + 56) = v39;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v51 = v55;
  v52 = v39;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints_];

  return v33;
}

char *CAFUICollectionFooterView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5CAFUI25CAFUICollectionFooterView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = &v4[OBJC_IVAR____TtC5CAFUI25CAFUICollectionFooterView_title];
  v11 = type metadata accessor for CAFUICollectionFooterView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v57.receiver = v4;
  v57.super_class = v11;
  v12 = objc_msgSendSuper2(&v57, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = MEMORY[0x245D0D180](0xD000000000000019, 0x8000000242424DA0);
  [v12 setAccessibilityIdentifier_];

  v14 = OBJC_IVAR____TtC5CAFUI25CAFUICollectionFooterView_titleLabel;
  v15 = *&v12[OBJC_IVAR____TtC5CAFUI25CAFUICollectionFooterView_titleLabel];
  v16 = MEMORY[0x245D0D180](0xD00000000000001ELL, 0x800000024242ABA0);
  [v15 setAccessibilityIdentifier_];

  v17 = *&v12[v14];
  v18 = *MEMORY[0x277D76968];
  v19 = *MEMORY[0x277D74418];
  v20 = objc_opt_self();
  v21 = v17;
  v22 = [v20 preferredFontDescriptorWithTextStyle_];
  [v22 pointSize];
  v24 = v23;

  v25 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v26 = [objc_opt_self() systemFontOfSize:v24 weight:v19];
  v27 = [v25 scaledFontForFont_];

  [v21 setFont_];
  v28 = *&v12[v14];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 _carSystemSecondaryColor];
  [v30 setTextColor_];

  [*&v12[v14] setNumberOfLines_];
  [*&v12[v14] setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = *&v12[v14];
  v33 = v12;
  [v33 addSubview_];
  v34 = [v33 topAnchor];
  v35 = [*&v12[v14] topAnchor];
  v55 = [v34 constraintEqualToAnchor:v35 constant:-4.0];

  v36 = [v33 bottomAnchor];
  v37 = v14;
  v38 = [*&v12[v14] bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:0.0];

  LODWORD(v40) = 1148846080;
  [v55 setPriority_];
  LODWORD(v41) = 1148846080;
  [v39 setPriority_];
  v56 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_242423B90;
  v43 = [*&v12[v37] leadingAnchor];
  v44 = [v33 layoutMarginsGuide];

  v45 = [v44 leadingAnchor];
  v46 = [v43 constraintEqualToAnchor_];

  *(v42 + 32) = v46;
  v47 = [*&v12[v37] trailingAnchor];
  v48 = [v33 layoutMarginsGuide];

  v49 = [v48 trailingAnchor];
  v50 = [v47 constraintEqualToAnchor_];

  *(v42 + 40) = v50;
  *(v42 + 48) = v55;
  *(v42 + 56) = v39;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v51 = v55;
  v52 = v39;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints_];

  return v33;
}

void @objc CAFUICollectionHeaderView.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = *a4;
  *(a1 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = (a1 + *a5);
  *v8 = 0;
  v8[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc CAFUICollectionHeaderView.prepareForReuse()(void *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6.receiver = a1;
  v6.super_class = a3();
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_prepareForReuse);
  [*&v5[*a4] setText_];
}

uint64_t @objc CAFUICollectionHeaderView.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3)
{
}

Swift::Void __swiftcall CAFUITileBaseCell.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CAFUITileBaseCell(0);
  objc_msgSendSuper2(&v8, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedView];
  if (v5)
  {
    v6 = v5;

    v7 = v6 == v2;
  }

  else
  {
    v7 = 0;
  }

  [v2 setHighlighted_];
}

uint64_t specialized static CAFUITileCellConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSg_ADtMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for CAFUITileCellConfiguration(0);
  v15 = a1;
  v16 = a2;
  v45 = v14;
  v46 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  outlined init with copy of NotificationModel.Symbol?(v15 + v17, v13, &_s5UIKit26UIListContentConfigurationVSgMd);
  v19 = v16 + v17;
  v20 = v16;
  outlined init with copy of NotificationModel.Symbol?(v19, &v13[v18], &_s5UIKit26UIListContentConfigurationVSgMd);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    outlined init with copy of NotificationModel.Symbol?(v13, v10, &_s5UIKit26UIListContentConfigurationVSgMd);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      lazy protocol witness table accessor for type UIListContentConfiguration and conformance UIListContentConfiguration();
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v10, v4);
      v20 = v16;
      outlined destroy of RequestTemporaryContentModel?(v13, &_s5UIKit26UIListContentConfigurationVSgMd);
      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    outlined destroy of RequestTemporaryContentModel?(v13, &_s5UIKit26UIListContentConfigurationVSg_ADtMd);
    goto LABEL_10;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of RequestTemporaryContentModel?(v13, &_s5UIKit26UIListContentConfigurationVSgMd);
LABEL_13:
  v27 = v45;
  v26 = v46;
  v28 = v45[6];
  v29 = (v46 + v28);
  v30 = *(v46 + v28 + 8);
  v31 = (v20 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v32)
  {
    goto LABEL_10;
  }

  v33 = v27[7];
  v34 = *(v26 + v33);
  v35 = *(v20 + v33);
  if (v34)
  {
    if (!v35)
    {
      goto LABEL_10;
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFUserVisibleDetailedDescription);
    v36 = v35;
    v37 = v34;
    v38 = static NSObject.== infix(_:_:)();

    if ((v38 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v35)
  {
    goto LABEL_10;
  }

  v39 = v27[8];
  v40 = *(v26 + v39);
  v41 = *(v20 + v39);
  if (v40)
  {
    if (!v41)
    {
      goto LABEL_10;
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
    v42 = v41;
    v43 = v40;
    v44 = static NSObject.== infix(_:_:)();

    if ((v44 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v41)
  {
    goto LABEL_10;
  }

  if (*(v26 + v27[9]) == *(v20 + v27[9]))
  {
    v22 = *(v26 + v27[10]) ^ *(v20 + v27[10]) ^ 1;
    return v22 & 1;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

id specialized static CAFUITileBaseCell.chevronImageView(cell:)()
{
  v0 = *MEMORY[0x277D76920];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle:v0 scale:1];
  v3 = [v1 configurationWithWeight_];
  v4 = [v2 configurationByApplyingConfiguration_];

  v5 = v4;
  v6 = MEMORY[0x245D0D180](0x2E6E6F7276656863, 0xEF64726177726F66);
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  if (v7)
  {
    v8 = [v7 imageWithRenderingMode_];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v9 setContentMode_];
  v10 = v9;
  v11 = MEMORY[0x245D0D180](0xD000000000000015, 0x800000024242ACB0);
  [v10 setAccessibilityIdentifier_];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(MEMORY[0x277D75348]);
  v17[4] = partial apply for closure #1 in static CAFUITileBaseCell.chevronImageView(cell:);
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v17[3] = &block_descriptor_30;
  v14 = _Block_copy(v17);

  v15 = [v13 initWithDynamicProvider_];
  _Block_release(v14);

  [v10 setTintColor_];

  return v10;
}

void specialized static CAFUITileBaseCell.arrowUpImageView(cell:)()
{
  v0 = *MEMORY[0x277D76920];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle:v0 scale:2];
  v3 = [v1 configurationWithWeight_];
  v4 = [v2 configurationByApplyingConfiguration_];

  v5 = v4;
  v6 = MEMORY[0x245D0D180](0xD000000000000019, 0x800000024242AD00);
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  if (v7)
  {
    v8 = [v7 imageWithRenderingMode_];

    v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v9 setContentMode_];
    v10 = v9;
    v11 = MEMORY[0x245D0D180](0xD000000000000015, 0x800000024242AD20);
    [v10 setAccessibilityIdentifier_];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = objc_allocWithZone(MEMORY[0x277D75348]);
    v16[4] = partial apply for closure #1 in static CAFUITileBaseCell.arrowUpImageView(cell:);
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
    v16[3] = &block_descriptor_34;
    v14 = _Block_copy(v16);

    v15 = [v13 initWithDynamicProvider_];
    _Block_release(v14);

    [v10 setTintColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for CAFUITileCellConfiguration(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2423A7CD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2423A7D2C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2423A7D80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  return outlined init with copy of NotificationModel.Symbol?(v3 + v4, a2, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
}

uint64_t sub_2423A7E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2423A7ED4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for CAFUITileCellConfiguration()
{
  type metadata accessor for UIListContentConfiguration?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x277D74C38]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIView?(319, &lazy cache variable for type metadata for CAFUserVisibleDetailedDescription?, &lazy cache variable for type metadata for CAFUserVisibleDetailedDescription);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIView?(319, &lazy cache variable for type metadata for UIView?, &lazy cache variable for type metadata for UIView);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata accessor for UIView?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for OS_os_log(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for CAFUITileBaseCell()
{
  type metadata accessor for UIListContentConfiguration?(319, &lazy cache variable for type metadata for CAFUITileCellConfiguration?, type metadata accessor for CAFUITileCellConfiguration);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UIListContentConfiguration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2423A85E8()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type UIListContentConfiguration and conformance UIListContentConfiguration()
{
  result = lazy protocol witness table cache variable for type UIListContentConfiguration and conformance UIListContentConfiguration;
  if (!lazy protocol witness table cache variable for type UIListContentConfiguration and conformance UIListContentConfiguration)
  {
    type metadata accessor for UIListContentConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIListContentConfiguration and conformance UIListContentConfiguration);
  }

  return result;
}

id CAFUIAccountManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAFUIAccountManager.firstName.getter()
{
  result = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_account);
  if (result)
  {
    result = [result aa_firstName];
    if (result)
    {
      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

id CAFUIAccountManager.init()()
{
  v1 = OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_accountStore;
  v2 = [objc_opt_self() defaultStore];
  *&v0[v1] = v2;
  v3 = [v2 aa_primaryAppleAccount];
  *&v0[OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_account] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x277CECA90]) initWithAppleAccount:v3 grandSlamAccount:0 accountStore:*&v0[v1]];
  *&v0[OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_pictureStore] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CAFUIAccountManager();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CAFUIAccountManager.avatarImage(diameter:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_pictureStore);
  [v1 setPictureDiameter_];
  v2 = [v1 profilePictureForAccountOwner];

  return v2;
}

id CAFUIAccountManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIAccountManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CAFRequestContentSource.output.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFRequestContentSource.content.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type RequestTemporaryContentModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t CAFRequestContentSource.content.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<RequestTemporaryContentModel?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 16) = v1;
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel()
{
  result = lazy protocol witness table cache variable for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel;
  if (!lazy protocol witness table cache variable for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel)
  {
    type metadata accessor for RequestTemporaryContentModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel);
  }

  return result;
}

Swift::Int CAFRequestContentSource.Destination.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0DB60](v1);
  return Hasher._finalize()();
}

uint64_t CAFRequestContentSource.__allocating_init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = specialized CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = specialized CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t closure #2 in CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Zone.ZoneRegion();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RequestTemporaryContentModel();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  (*(v11 + 16))(v13, a4, v10);

  dispatch thunk of CAFRequestTemporaryContentObservable.on.getter();
  dispatch thunk of CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
  *(swift_allocObject() + 16) = v17;
  v18 = v17;
  RequestTemporaryContentModel.init(displayPanelIdentifier:displayZoneIdentifier:on:userDismissible:contentURL:dismissHandler:)();
  swift_unownedRetainStrong();
  v19 = v22;
  (*(v14 + 16))(v9, v16, v22);
  (*(v14 + 56))(v9, 0, 1, v19);

  CurrentValueSubject.send(_:)();

  outlined destroy of RequestTemporaryContentModel?(v9);
  return (*(v14 + 8))(v16, v19);
}

uint64_t closure #1 in CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = v4;
  if (v3 == Zone.ZoneRegion.rawValue.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t closure #4 in CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = a5;
  v21 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Zone.ZoneRegion();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RequestTemporaryContentModel();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  (*(v11 + 16))(v13, a4, v10);

  dispatch thunk of CAFRequestContentObservable.on.getter();
  dispatch thunk of CAFRequestContentObservable.userDismissible.getter();
  dispatch thunk of CAFRequestContentObservable.contentURL.getter();
  *(swift_allocObject() + 16) = v17;
  v18 = v17;
  RequestTemporaryContentModel.init(displayPanelIdentifier:displayZoneIdentifier:on:userDismissible:contentURL:dismissHandler:)();
  swift_unownedRetainStrong();
  v19 = v22;
  (*(v14 + 16))(v9, v16, v22);
  (*(v14 + 56))(v9, 0, 1, v19);

  CurrentValueSubject.send(_:)();

  outlined destroy of RequestTemporaryContentModel?(v9);
  return (*(v14 + 8))(v16, v19);
}

uint64_t CAFRequestContentSource.deinit()
{

  return v0;
}

uint64_t CAFRequestContentSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFRequestContentSource()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFRequestContentSource.content.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type RequestTemporaryContentModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t specialized CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v66 = a5;
  v67 = a4;
  v68 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x28223BE20](v10);
  v57 = v47 - v12;
  v13 = type metadata accessor for Zone.ZoneRegion();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  MEMORY[0x28223BE20](v16);
  v64 = v47 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v47 - v20;
  v6[2] = 0;
  v22 = type metadata accessor for RequestTemporaryContentModel();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  swift_allocObject();
  v23 = CurrentValueSubject.init(_:)();
  v63 = v6;
  v6[3] = v23;
  v6[4] = MEMORY[0x277D84FA0];
  v65 = v6 + 4;
  v51 = a1;
  v6[5] = a1;
  v6[6] = a2;
  v69 = a2;
  v62 = *(v14 + 16);
  v62(v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
  v47[2] = v14 + 16;
  v60 = *(v14 + 80);
  v56 = v14;
  v24 = (v60 + 16) & ~v60;
  v47[0] = v15;
  v53 = v24;
  v25 = swift_allocObject();
  v61 = *(v14 + 32);
  v47[1] = v14 + 32;
  v61(v25 + v24, v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  v52 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v26 = v13;
  v62(v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v68, v13);
  v27 = v63;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  v28 = v66;

  swift_unownedRelease();
  swift_unownedRetain();

  v29 = v60;
  v50 = (v29 + 32) & ~v29;
  v30 = (v15 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v67;
  *(v31 + 24) = v28;
  v32 = v61;
  v61(v31 + ((v29 + 32) & ~v29), v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  *(v31 + v30) = v27;
  v49 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v33 = v54;
  v34 = v64;
  Publisher<>.sink(receiveValue:)();

  (*(v55 + 8))(v34, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v69 = v51;
  v35 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v62;
  v62(v35, v68, v26);
  v37 = v53;
  v38 = swift_allocObject();
  v32(v38 + v37, v35, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  v39 = v57;
  Publisher.filter(_:)();

  v40 = v68;
  v36(v35, v68, v26);
  swift_unownedRetainStrong();
  v41 = swift_unownedRetain();

  v42 = v48;
  v43 = swift_allocObject();
  v44 = v66;
  *(v43 + 16) = v67;
  *(v43 + 24) = v44;
  v61(v43 + v50, v35, v26);
  *(v43 + v42) = v41;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  v45 = v58;
  Publisher<>.sink(receiveValue:)();

  (*(v59 + 8))(v39, v45);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v56 + 8))(v40, v26);
  return v41;
}

unint64_t lazy protocol witness table accessor for type CAFRequestContentSource.Destination and conformance CAFRequestContentSource.Destination()
{
  result = lazy protocol witness table cache variable for type CAFRequestContentSource.Destination and conformance CAFRequestContentSource.Destination;
  if (!lazy protocol witness table cache variable for type CAFRequestContentSource.Destination and conformance CAFRequestContentSource.Destination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFRequestContentSource.Destination and conformance CAFRequestContentSource.Destination);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for Zone.ZoneRegion();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_16Tm()
{
  v1 = type metadata accessor for Zone.ZoneRegion();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #2 in CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Zone.ZoneRegion() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

uint64_t sub_2423AA244()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined destroy of RequestTemporaryContentModel?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CAFUIImageRepresentableItem.init(name:image:decoratorImage:enabled:userInfo:accentColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  result = outlined assign with take of Any?(a6, a8 + 40);
  *(a8 + 72) = a7;
  return result;
}

int64_t CAFUIImageRepresentable.toggle(index:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IndexPath();
  v56 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v50 - v13;
  v15 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  if ((a1 & 0x8000000000000000) == 0)
  {
    v54 = v12;
    v16 = *((*(a3 + 40))(a2, a3) + 16);

    if (v16 > a1)
    {
      v53 = v11;
      v58 = 0;
      v59 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      v55 = a2;
      v17 = (*(*(a3 + 8) + 16))(a2);
      v52 = v4;
      v19 = v18;

      v58 = v17;
      v59 = v19;
      v20 = v52;
      MEMORY[0x245D0D240](0xD00000000000001ALL, 0x800000024242AE40);
      v57 = a1;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x245D0D240](v21);
      v22 = v55;

      specialized static CAFUILogger.default(_:function:file:line:)(v58, v59, 0x6928656C67676F74, 0xEE00293A7865646ELL, 90);

      v23 = (*(a3 + 48))(v22, a3);
      v24 = v23;
      v25 = *(v23 + 16);
      v26 = 32;
      do
      {
        if (!v25)
        {
          v28 = *(a3 + 32);
          goto LABEL_13;
        }

        v27 = *(v23 + v26);
        v26 += 8;
        --v25;
      }

      while (v27 != a1);
      v28 = *(a3 + 32);
      v29 = v20;
      if (v28(v22, a3))
      {
        v30 = *(v24 + 16);
        if (v30)
        {
          v15 = 0;
          v31 = -40;
          while (*(v24 + 8 * v15 + 32) != a1)
          {
            ++v15;
            v31 -= 8;
            if (v30 == v15)
            {
              goto LABEL_11;
            }
          }

          v29 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_64;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_65:
            v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          }

          v30 = *(v24 + 16);
          if (v29 != v30)
          {
            v47 = v24 + 32;
            v48 = (v24 - v31);
            while (1)
            {
              if (v29 >= v30)
              {
                __break(1u);
                goto LABEL_59;
              }

              if (*v48 != a1)
              {
                if (v29 != v15)
                {
                  if (v15 >= v30)
                  {
                    __break(1u);
LABEL_61:
                    __break(1u);
LABEL_62:
                    __break(1u);
LABEL_63:
                    __break(1u);
LABEL_64:
                    __break(1u);
                    goto LABEL_65;
                  }

                  v49 = *(v47 + 8 * v15);
                  *(v47 + 8 * v15) = *v48;
                  *v48 = v49;
                  v30 = *(v24 + 16);
                }

                ++v15;
              }

              ++v29;
              ++v48;
              if (v29 == v30)
              {
                goto LABEL_33;
              }
            }
          }

          v30 = v29;
LABEL_33:
          if (v30 < v15)
          {
            goto LABEL_62;
          }

          if (v15 < 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
LABEL_11:
          v15 = *(v24 + 16);
        }

        v31 = v15;
        if (__OFADD__(v30, v15 - v30))
        {
          goto LABEL_61;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v24;
        if (!isUniquelyReferenced_nonNull_native || v15 > *(v24 + 24) >> 1)
        {
          if (v30 <= v15)
          {
            v43 = v15;
          }

          else
          {
            v43 = v30;
          }

          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v43, 1, v24);
          v58 = v24;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v15, v30, 0);
        goto LABEL_45;
      }

LABEL_13:
      if (v28(v22, a3))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
        }

        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        if (v33 >= v32 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v24);
        }

        *(v24 + 16) = v33 + 1;
        *(v24 + 8 * v33 + 32) = a1;
      }

      else
      {
        v34 = 0;
        v35 = *(v24 + 16);
        while (v35 != v34)
        {
          v36 = v24 + 8 * v34++;
          if (*(v36 + 32) == a1)
          {

            return MEMORY[0x277D84F90];
          }
        }

        if (v35)
        {
          v51 = a3;
          v57 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
          v37 = v57;
          v38 = 32;
          v39 = v54;
          do
          {
            MEMORY[0x245D0BE30](*(v24 + v38), 0);
            v57 = v37;
            v41 = *(v37 + 2);
            v40 = *(v37 + 3);
            if (v41 >= v40 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1);
              v39 = v54;
              v37 = v57;
            }

            *(v37 + 2) = v41 + 1;
            (*(v56 + 32))(&v37[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v41], v14, v39);
            v38 += 8;
            --v35;
          }

          while (v35);

          a3 = v51;
          v22 = v55;
        }

        else
        {

          v37 = MEMORY[0x277D84F90];
        }

        specialized Array.append<A>(contentsOf:)(v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_2424235A0;
        *(v24 + 32) = a1;
      }

LABEL_45:
      MEMORY[0x245D0BE30](a1, 0);
      v15 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_59:
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, MEMORY[0x277CC9AF8]);
      }

      v45 = *(v15 + 16);
      v44 = *(v15 + 24);
      if (v45 >= v44 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v15, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, MEMORY[0x277CC9AF8]);
      }

      *(v15 + 16) = v45 + 1;
      (*(v56 + 32))(v15 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v45, v53, v54);
      v57 = v24;

      specialized MutableCollection<>.sort(by:)(&v57);

      (*(a3 + 56))(v57, v22, a3);
    }
  }

  return v15;
}

uint64_t CAFUIImageRepresentable.configureCell(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v61 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v58 = type metadata accessor for CAFUITileCellConfiguration(0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  static UIListContentConfiguration.subtitleCell()();
  v62 = a1;
  specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v18, v20);
  v21 = *(v15 + 8);
  v63 = v14;
  v59 = v15 + 8;
  v57 = v21;
  v21(v18, v14);
  v22 = *(a3 + 8);
  (*(v22 + 16))(a2, v22);
  UIListContentConfiguration.text.setter();
  (*(v22 + 72))(a2, v22);
  UIListContentConfiguration.image.setter();
  v23 = *((*(a3 + 48))(a2, a3) + 16);

  if (v23 == 1)
  {
    v26 = (*(a3 + 24))(a2, a3);
    if (v26)
    {
      v27 = v26;
      v28 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    }

    else
    {
      v28 = 0;
    }

    v53 = v28;
    (*(a3 + 16))(a2, a3);
  }

  else
  {
    if (v23)
    {
      (*(a3 + 16))(a2, a3);
    }

    else
    {
      v24 = MEMORY[0x245D0D180](0x44455443454C4553, 0xED0000454E4F4E5FLL);
      v25 = CAFUILocalizedStringForKey(v24);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v53 = 0;
  }

  UIListContentConfiguration.secondaryText.setter();
  v29 = (*(v22 + 8))(a2, v22);
  v50 = v30;
  v51 = v29;
  v31 = v63;
  (*(v15 + 16))(v12, v20, v63);
  (*(v15 + 56))(v12, 0, 1, v31);
  v49 = (*(v22 + 24))(a2, v22);
  v54 = v20;
  v48 = v32;
  v33 = (*(v22 + 32))(a2, v22);
  v34 = *(a3 + 40);
  v35 = v53;
  v52 = v53;
  v36 = *(v34(a2, a3) + 16);

  LOBYTE(v34) = v36 != 0;
  LOBYTE(v36) = CAFListContentRepresentable.isLimitedUI.getter(a2, v22);
  v37 = v55;
  v38 = v50;
  *v55 = v51;
  *(v37 + 8) = v38;
  v39 = v58;
  outlined init with take of UIListContentConfiguration?(v12, v37 + *(v58 + 20));
  v40 = (v37 + v39[6]);
  v41 = v48;
  *v40 = v49;
  v40[1] = v41;
  *(v37 + v39[7]) = v33;
  *(v37 + v39[8]) = v35;
  *(v37 + v39[9]) = v34;
  *(v37 + v39[10]) = v36 & 1;
  v42 = v60;
  outlined init with copy of CAFUITileCellConfiguration(v37, v60);
  (*(v56 + 56))(v42, 0, 1, v39);
  v43 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v44 = v62;
  swift_beginAccess();
  v45 = v61;
  outlined init with copy of NotificationModel.Symbol?(v44 + v43, v61, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v42, v44 + v43);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v45);

  outlined destroy of CAFUITileCellConfiguration?(v45);
  outlined destroy of CAFUITileCellConfiguration?(v42);
  outlined destroy of CAFUITileCellConfiguration(v37);
  return v57(v54, v63);
}

uint64_t specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UIListContentConfiguration();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  CAFUIAutomakerSettingCell.primaryTextColor.getter();
  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v7(v22, 0);
  v8 = objc_opt_self();
  v9 = [v8 preferredFontDescriptorWithTextStyle_];
  v10 = objc_opt_self();
  v11 = [v10 fontWithDescriptor:v9 size:0.0];

  v12 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v12(v22, 0);
  specialized CAFUICellProtocol.defaultSecondaryTextColor.getter();
  v13 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v13(v22, 0);
  v14 = [v8 preferredFontDescriptorWithTextStyle_];
  v15 = [v10 fontWithDescriptor:v14 size:0.0];

  v16 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v16(v22, 0);
  UIListContentConfiguration.imageToTextPadding.setter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v17 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v18 = v3;
  v17(v22, 0);
  v19 = OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable;
  swift_beginAccess();
  if (*(v18 + v19) && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    CAFUIAutomakerSettingCell.primaryTextColor.getter();
  }

  else
  {
    specialized CAFUICellProtocol.defaultImageColor.getter();
  }

  v20 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  return v20(v22, 0);
}

{
  v3 = v2;
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = (*(*(v6 - 8) + 16))(a2, a1, v6);
  (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(v7);
  v8 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v8(v22, 0);
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle_];
  v11 = objc_opt_self();
  v12 = [v11 fontWithDescriptor:v10 size:0.0];

  v13 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v13(v22, 0);
  specialized CAFUICellProtocol.defaultSecondaryTextColor.getter();
  v14 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v14(v22, 0);
  v15 = [v9 preferredFontDescriptorWithTextStyle_];
  v16 = [v11 fontWithDescriptor:v15 size:0.0];

  v17 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v17(v22, 0);
  UIListContentConfiguration.imageToTextPadding.setter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v18 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v19 = v18(v22, 0);
  (*((*MEMORY[0x277D85000] & *v3) + 0xB0))(v19);
  v20 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  return v20(v22, 0);
}

{
  v3 = v2;
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = (*(*(v6 - 8) + 16))(a2, a1, v6);
  (*((*MEMORY[0x277D85000] & *v3) + 0x78))(v7);
  v8 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v8(v23, 0);
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle_];
  v11 = objc_opt_self();
  v12 = [v11 fontWithDescriptor:v10 size:0.0];

  v13 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v14 = v13(v23, 0);
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))(v14);
  v15 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v15(v23, 0);
  v16 = [v9 preferredFontDescriptorWithTextStyle_];
  v17 = [v11 fontWithDescriptor:v16 size:0.0];

  v18 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v18(v23, 0);
  UIListContentConfiguration.imageToTextPadding.setter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v19 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v20 = v19(v23, 0);
  (*((*MEMORY[0x277D85000] & *v3) + 0x68))(v20);
  v21 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  return v21(v23, 0);
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = __CocoaSet.count.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = specialized Sequence._copySequenceContents(initializing:)(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = __CocoaSet.count.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t CAFUIImageRepresentableItem.name.getter()
{
  v1 = *v0;

  return v1;
}

void *CAFUIImageRepresentableItem.decoratorImage.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *CAFUIImageRepresentableItem.accentColor.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t protocol witness for CAFUIImageRepresentableItemProtocol.name.getter in conformance CAFUIImageRepresentableItem()
{
  v1 = *v0;

  return v1;
}

void *protocol witness for CAFUIImageRepresentableItemProtocol.decoratorImage.getter in conformance CAFUIImageRepresentableItem()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *protocol witness for CAFUIImageRepresentableItemProtocol.accentColor.getter in conformance CAFUIImageRepresentableItem()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelV05FancyI0V19ActionConfigurationVGMd, &_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelV05FancyI0V19ActionConfigurationVGMR, MEMORY[0x277CF8BC0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, MEMORY[0x277CC9AF8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelV6ActionVGMd, &_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelV6ActionVGMR, MEMORY[0x277CF8BF8]);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5UInt8VGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy5CAFUI15CAFDeviceActionOGMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5CAFUI35CAFUIImageRepresentableItemProtocol_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI35CAFUIImageRepresentableItemProtocol_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo19CAFAutomakerSettingCGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19CAFAutomakerSettingCGMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIViewController] and conformance [A](&lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A], &_sSaySo18NSLayoutConstraintCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIViewController] and conformance [A](&lazy protocol witness table cache variable for type [CAFPairedDevice] and conformance [A], &_sSaySo15CAFPairedDeviceCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15CAFPairedDeviceCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFPairedDevice);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIViewController] and conformance [A](&lazy protocol witness table cache variable for type [CAFAutomakerSetting] and conformance [A], &_sSaySo19CAFAutomakerSettingCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19CAFAutomakerSettingCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIViewController] and conformance [A](&lazy protocol witness table cache variable for type [UIViewController] and conformance [A], &_sSaySo16UIViewControllerCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16UIViewControllerCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIViewController);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys5UInt8VGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CAFUIImageRepresentableItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CAFUIImageRepresentableItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [UIViewController] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SliderView.VerticalSlider.focusLocked.willset(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider];
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = [v3 _carSystemFocusColor];
    [v2 setTintColor_];

    v5 = [v3 clearColor];
    [v1 setBackgroundColor_];

    v6 = [v1 layer];
    v7 = [v3 _carSystemFocusColor];
    v8 = [v7 CGColor];

    [v6 setBorderColor_];
    v9 = [v1 layer];
    v10 = 2.0;
  }

  else
  {
    v11 = [v1 traitCollection];
    v12 = [v11 userInterfaceStyle];

    v13 = objc_opt_self();
    v14 = &selRef_systemWhiteColor;
    if (v12 != 1)
    {
      v14 = &selRef_systemBlackColor;
    }

    v15 = [v13 *v14];
    [v2 setTintColor_];

    v16 = [objc_opt_self() _carSystemFocusColor];
    [v1 setBackgroundColor_];

    v17 = [v1 layer];
    [v17 setBorderColor_];

    v9 = [v1 layer];
    v10 = 0.0;
  }

  v18 = v9;
  [v18 setBorderWidth_];
}

id SliderView.VerticalSlider.init(value:range:sliderTappedPublisher:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, float a5)
{
  *&v5[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_cornerRadius] = 0x4024000000000000;
  v5[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_isTracking] = 0;
  v11 = OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider;
  type metadata accessor for CenteredSlider();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_isRTL] = 0;
  v5[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked] = 0;
  v12 = &v5[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value];
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 4) = a5;
  *&v5[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_range] = a3;
  *&v5[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_sliderTappedPublisher] = a4;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for SliderView.VerticalSlider();

  v13 = a3;

  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  SliderView.VerticalSlider.initialize()();

  return v14;
}

id SliderView.VerticalSlider.initialize()()
{
  v1 = v0;
  swift_getObjectType();
  [v0 _setCornerRadius_];
  v2 = *&v0[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider];
  CGAffineTransformMakeRotation(&v19, -1.57079633);
  [v2 setTransform_];
  v3 = objc_opt_self();
  v4 = [v3 _carSystemFocusColor];
  [v2 setTintColor_];

  [v0 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2424235A0;
  v6 = type metadata accessor for UITraitUserInterfaceStyle();
  v7 = MEMORY[0x277D74BF0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v8 = [v3 whiteColor];
  v9 = specialized static UIImage.thumbImage(withDiameter:thumbColor:)(v8, 20.0);

  [v2 setThumbImage:v9 forState:0];
  [v2 setContinuous_];
  v10 = *&v1[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_range];
  [v10 minimumValue];
  [v2 setMinimumValue_];
  [v10 maximumValue];
  [v2 setMaximumValue_];
  v11 = *&v1[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value + 8];
  v12 = *&v1[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value + 16];
  v19.a = *&v1[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value];
  v19.b = v11;
  LODWORD(v19.c) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
  MEMORY[0x245D0CF90](&v18, v13);
  LODWORD(v14) = v18;
  [v2 setValue_];
  CAFFloatRange.centerValue.getter();
  *&v2[OBJC_IVAR____TtC5CAFUI14CenteredSlider_centerValue] = v15;
  [v2 addTarget:v1 action:sel_trackingEnter_ forControlEvents:1];
  [v2 addTarget:v1 action:sel_trackingExit_ forControlEvents:192];
  v16 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_sliderTapped_];
  [v2 addGestureRecognizer_];

  return [v2 addTarget:v1 action:sel_valueChanged_ forControlEvents:4096];
}

Swift::Void __swiftcall SliderView.VerticalSlider.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SliderView.VerticalSlider();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider];
  [v0 bounds];
  CGRectGetHeight(v4);
  [v1 bounds];
  [v1 setBounds_];
  [v0 bounds];
  MidX = CGRectGetMidX(v5);
  [v1 center];
  [v1 setCenter_];
  [v0 bounds];
  CGRectGetMidY(v6);
  [v1 center];
  [v1 setCenter_];
}

Swift::Void __swiftcall SliderView.VerticalSlider.valueChanged(_:)(UISlider *a1)
{
  [(UISlider *)a1 value];
  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_range);

  LODWORD(v5) = v3;
  [v4 valueRoundedToNearestStepValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
  Binding.wrappedValue.setter();
}

Swift::Void __swiftcall SliderView.VerticalSlider.increment()()
{
  v1 = (v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value);
  v2 = *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value + 8);
  v3 = *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value + 16);
  v14 = *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value);
  v15 = v2;
  v16 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
  MEMORY[0x245D0CF90](&v13);
  v4 = v13;
  v5 = *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_range);
  [v5 stepValue];
  v7 = v4 + v6;
  [v5 maximumValue];
  if (v8 < v7)
  {
    v7 = v8;
  }

  v9 = v1[1];
  v10 = *(v1 + 4);
  v14 = *v1;
  v15 = v9;
  v16 = v10;

  *&v11 = v7;
  [v5 valueRoundedToNearestStepValue_];
  v13 = v12;
  Binding.wrappedValue.setter();
}

Swift::Void __swiftcall SliderView.VerticalSlider.decrement()()
{
  v1 = (v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value);
  v2 = *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value + 8);
  v3 = *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value + 16);
  v14 = *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_value);
  v15 = v2;
  v16 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
  MEMORY[0x245D0CF90](&v13);
  v4 = v13;
  v5 = *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_range);
  [v5 stepValue];
  v7 = v4 - v6;
  [v5 minimumValue];
  if (v7 <= v8)
  {
    v7 = v8;
  }

  v9 = v1[1];
  v10 = *(v1 + 4);
  v14 = *v1;
  v15 = v9;
  v16 = v10;

  *&v11 = v7;
  [v5 valueRoundedToNearestStepValue_];
  v13 = v12;
  Binding.wrappedValue.setter();
}

Swift::Void __swiftcall SliderView.VerticalSlider.sliderTapped(_:)(UITapGestureRecognizer a1)
{
  v21 = [(objc_class *)a1.super.super.isa view];
  if (v21)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      PassthroughSubject.send(_:)();
      v5 = v21;
      [(objc_class *)a1.super.super.isa locationInView:v4];
      v7 = v6;
      [v4 frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      *&v9 = v7 / CGRectGetHeight(v23);
      [v4 maximumValue];
      LODWORD(v7) = v16;
      [v4 minimumValue];
      *&v7 = (*&v7 - v17) * *&v9;
      [v4 minimumValue];
      *&v7 = *&v7 + v18;
      v19 = *(v1 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_range);

      LODWORD(v20) = LODWORD(v7);
      [v19 valueRoundedToNearestStepValue_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
      Binding.wrappedValue.setter();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall SliderView.VerticalSlider.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = v2;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for SliderView.VerticalSlider();
  objc_msgSendSuper2(&v24, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v6 = [(objc_class *)in.super.isa nextFocusedView];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
    v8 = v2;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = partial apply for closure #1 in SliderView.VerticalSlider.didUpdateFocus(in:with:);
      v23 = v10;
      v18 = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v11 = &block_descriptor_40;
LABEL_7:
      v20 = thunk for @escaping @callee_guaranteed () -> ();
      v21 = v11;
      v17 = _Block_copy(&v18);

      [(objc_class *)with.super.isa addCoordinatedAnimations:v17 completion:0, v18, v19];
      _Block_release(v17);
      return;
    }
  }

  v12 = [(objc_class *)in.super.isa previouslyFocusedView];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
    v14 = v3;
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = partial apply for closure #2 in SliderView.VerticalSlider.didUpdateFocus(in:with:);
      v23 = v16;
      v18 = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v11 = &block_descriptor_36_0;
      goto LABEL_7;
    }
  }
}

void closure #1 in SliderView.VerticalSlider.didUpdateFocus(in:with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider);
    v3 = v1;
    v4 = [v3 traitCollection];
    v5 = [v4 userInterfaceStyle];

    v6 = objc_opt_self();
    v7 = &selRef_systemWhiteColor;
    if (v5 != 1)
    {
      v7 = &selRef_systemBlackColor;
    }

    v8 = [v6 *v7];
    [v2 setTintColor_];

    v9 = [objc_opt_self() _carSystemFocusColor];
    [v3 setBackgroundColor_];
  }
}

void closure #2 in SliderView.VerticalSlider.didUpdateFocus(in:with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider);
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 _carSystemFocusColor];
    [v4 setTintColor_];

    v6 = v2;
    v7 = [v3 clearColor];
    [v6 setBackgroundColor_];
  }
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance SliderView()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
  Binding.projectedValue.getter();
  v4 = v3;
  v5 = specialized SliderView.sliderTappedPublisher.getter(v1, v2);
  v6 = objc_allocWithZone(type metadata accessor for SliderView.VerticalSlider());
  return SliderView.VerticalSlider.init(value:range:sliderTappedPublisher:)(v8, v9, v4, v5, v10);
}

_BYTE *protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance SliderView(_BYTE *result)
{
  if ((result[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_isTracking] & 1) == 0)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 24);
    v4 = *&result[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider];
    v8 = *(v1 + 16);
    v9 = v3;
    v10 = v2;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
    MEMORY[0x245D0CF90](&v7, v5);
    LODWORD(v6) = v7;
    return [v4 setValue:1 animated:v6];
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance SliderView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SliderView and conformance SliderView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SliderView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SliderView and conformance SliderView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance SliderView()
{
  lazy protocol witness table accessor for type SliderView and conformance SliderView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id CenteredSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [objc_opt_self() tableBackgroundColor];
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_tickmarkView;
    [v9 setBackgroundColor_];

    [v9 setUserInteractionEnabled_];
    *&v4[v12] = v9;
    *&v4[OBJC_IVAR____TtC5CAFUI14CenteredSlider_thumbImageView] = 0;
    *&v4[OBJC_IVAR____TtC5CAFUI14CenteredSlider_tickmarkWidth] = 0x4000000000000000;
    *&v4[OBJC_IVAR____TtC5CAFUI14CenteredSlider_centerValue] = 0;
    v13 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_trackLayer;
    *&v4[v13] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v14 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_fillLayer;
    *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v16.receiver = v4;
    v16.super_class = type metadata accessor for CenteredSlider();
    v15 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
    CenteredSlider.setupSlider()();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CenteredSlider.setupSlider()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  [v0 setMinimumTrackImage:v1 forState:0];

  v2 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  [v0 setMaximumTrackImage:v2 forState:0];

  v3 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_trackLayer;
  v4 = *&v0[OBJC_IVAR____TtC5CAFUI14CenteredSlider_trackLayer];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemGray4Color];
  v8 = [v7 CGColor];

  [v6 setBackgroundColor_];
  [*&v0[v3] setCornerRadius_];
  v9 = [v0 layer];
  [v9 insertSublayer:*&v0[v3] atIndex:0];

  v10 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_fillLayer;
  v11 = *&v0[OBJC_IVAR____TtC5CAFUI14CenteredSlider_fillLayer];
  result = [v0 tintColor];
  if (result)
  {
    v13 = result;
    v14 = [result CGColor];

    [v11 setBackgroundColor_];
    [*&v0[v10] setCornerRadius_];
    v15 = [v0 layer];
    [v15 insertSublayer:*&v0[v10] above:*&v0[v3]];

    [v0 addTarget:v0 action:sel_valueChanged forControlEvents:4096];

    return [v0 setSemanticContentAttribute_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CenteredSlider.layoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CenteredSlider();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  CenteredSlider.setupOverlayView()();
  [v0 bounds];
  v1 = (CGRectGetHeight(v13) + -4.0) * 0.5;
  [v0 bounds];
  [v0 trackRectForBounds_];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC5CAFUI14CenteredSlider_trackLayer];
  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  MinX = CGRectGetMinX(v14);
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  [v10 setFrame_];

  CenteredSlider.updateFillLayer(trackRect:trackY:trackHeight:)(v3, v5, v7, v9, v1, 4.0);
}

void CenteredSlider.setupOverlayView()()
{
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI14CenteredSlider_thumbImageView];
  if (!v1)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC5CAFUI14CenteredSlider_tickmarkView];
  v13 = v1;
  [v2 removeFromSuperview];
  v3 = [v0 subviews];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245D0D9A0](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;

    [v6 insertSubview:v2 belowSubview:v13];

    goto LABEL_11;
  }

LABEL_11:
  [v0 bounds];
  [v0 trackRectForBounds_];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v12 = CGRectGetMidY(v16) + -2.0;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [v2 setFrame_];
}

id SliderView.VerticalSlider.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id CenteredSlider.updateFillLayer(trackRect:trackY:trackHeight:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  [v6 maximumValue];
  v12 = v11;
  [v6 minimumValue];
  v14 = v12 - v13;
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  MinX = CGRectGetMinX(v39);
  v16 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_centerValue;
  v17 = *&v6[OBJC_IVAR____TtC5CAFUI14CenteredSlider_centerValue];
  [v6 minimumValue];
  v19 = (v17 - v18) / v14;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  v20 = MinX + CGRectGetWidth(v40) * v19;
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  v21 = CGRectGetMinX(v41);
  [v6 value];
  v23 = v22;
  [v6 minimumValue];
  v25 = (v23 - v24) / v14;
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  v26 = v21 + CGRectGetWidth(v42) * v25;
  [v6 value];
  v28 = v27;
  v29 = *&v6[v16];
  if (v29 > v28)
  {
    v30 = v20 - v26;
  }

  else
  {
    v30 = v26 - v20;
  }

  if (v29 > v28)
  {
    v31 = v26;
  }

  else
  {
    v31 = v20;
  }

  v32 = objc_opt_self();
  [v32 begin];
  [v32 setAnimationDuration_];
  v33 = [objc_opt_self() functionWithName_];
  [v32 setAnimationTimingFunction_];

  if (v30 < 0.0)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v30;
  }

  [*&v6[OBJC_IVAR____TtC5CAFUI14CenteredSlider_fillLayer] setFrame_];

  return [v32 commit];
}

id CenteredSlider.valueChanged()()
{
  [v0 bounds];
  v1 = (CGRectGetHeight(v14) + -4.0) * 0.5;
  [v0 bounds];
  [v0 trackRectForBounds_];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC5CAFUI14CenteredSlider_trackLayer];
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  MinX = CGRectGetMinX(v15);
  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  [v10 setFrame_];

  return CenteredSlider.updateFillLayer(trackRect:trackY:trackHeight:)(v3, v5, v7, v9, v1, 4.0);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SliderView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SliderView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SliderView and conformance SliderView()
{
  result = lazy protocol witness table cache variable for type SliderView and conformance SliderView;
  if (!lazy protocol witness table cache variable for type SliderView and conformance SliderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderView and conformance SliderView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SliderView and conformance SliderView;
  if (!lazy protocol witness table cache variable for type SliderView and conformance SliderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderView and conformance SliderView);
  }

  return result;
}

uint64_t closure #1 in CAFUISliderView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a2;
  v192 = type metadata accessor for ColorScheme();
  v191 = *(v192 - 8);
  v3 = MEMORY[0x28223BE20](v192);
  v178 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v177 = &v146 - v5;
  v189 = type metadata accessor for BlendMode();
  v185 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v173 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_BlendModeEffectVGMd);
  MEMORY[0x28223BE20](v170);
  v176 = &v146 - v7;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v186);
  v183 = &v146 - v8;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_Md);
  v184 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v175 = &v146 - v9;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGMd);
  MEMORY[0x28223BE20](v171);
  v174 = &v146 - v10;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGMd);
  MEMORY[0x28223BE20](v172);
  v182 = &v146 - v11;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v180);
  v190 = &v146 - v12;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGAA12_FrameLayoutVGAA08_PaddingS0VGMd);
  v13 = MEMORY[0x28223BE20](v187);
  v194 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v181 = &v146 - v16;
  MEMORY[0x28223BE20](v15);
  v193 = &v146 - v17;
  v18 = type metadata accessor for ButtonRepeatBehavior();
  v167 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v165 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for PlainButtonStyle();
  v160 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v21 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CAFUISliderView(0);
  v156 = *(v22 - 8);
  v23 = *(v156 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd);
  v158 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v146 - v25;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlaingE0VQo_Md);
  v159 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v166 = &v146 - v27;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20buttonRepeatBehavioryQrAA06ButtoneF0VFQOyAcAE0D5StyleyQrqd__AA09PrimitivegH0Rd__lFQOyAA0G0VyAA15ModifiedContentVyALyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlaingH0VQo__Qo_Md);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v146 - v28;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGMd);
  v198 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v30 = &v146 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v169 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v200 = &v146 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v202 = &v146 - v37;
  MEMORY[0x28223BE20](v36);
  v199 = v22;
  v39 = *(a1 + *(v22 + 32));
  v179 = a1;
  v201 = &v146 - v38;
  v168 = v18;
  v152 = v21;
  v151 = v24;
  v150 = v26;
  v157 = v30;
  v149 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v23;
  if (v39 == 1)
  {
    outlined init with copy of CAFUIEqualizerSlider(a1, &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CAFUISliderView);
    v40 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v41 = swift_allocObject();
    outlined init with take of CAFUIEqualizerSlider(&v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40, type metadata accessor for CAFUISliderView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    Button.init(action:label:)();
    PlainButtonStyle.init()();
    v42 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _OffsetEffect>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd);
    v43 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    LODWORD(v164) = 1;
    v44 = v166;
    v45 = v162;
    View.buttonStyle<A>(_:)();
    (*(v160 + 8))(v21, v45);
    (*(v158 + 8))(v26, v24);
    v46 = v165;
    static ButtonRepeatBehavior.enabled.getter();
    *&v206 = v24;
    *(&v206 + 1) = v45;
    *&v207 = v42;
    *(&v207 + 1) = v43;
    v47 = v157;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v153;
    View.buttonRepeatBehavior(_:)();
    v50 = v197;
    (*(v167 + 8))(v46, v168);
    (*(v159 + 8))(v44, v50);
    *&v206 = v50;
    *(&v206 + 1) = OpaqueTypeConformance2;
    a1 = v179;
    swift_getOpaqueTypeConformance2();
    v51 = v155;
    View.accessibilityIdentifier(_:)();
    (*(v154 + 8))(v49, v51);
    v52 = v201;
    outlined init with take of AttributedString?(v47, v201, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGMd);
    v53 = *(v198 + 56);
    v54 = v196;
    v53(v52, 0, 1, v196);
    v55 = v44;
    v39 = v164;
  }

  else
  {
    v53 = *(v198 + 56);
    v54 = v196;
    v53(&v146 - v38, 1, 1, v196);
    v55 = v166;
  }

  v56 = v199;
  v57 = a1 + *(v199 + 20);
  v58 = *(v57 + 8);
  v59 = *(v57 + 16);
  *&v206 = *v57;
  *(&v206 + 1) = v58;
  LODWORD(v207) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
  Binding.projectedValue.getter();
  v166 = v203;
  v164 = v204;
  v60 = v205;
  v61 = *(a1 + *(v56 + 28));
  KeyPath = swift_getKeyPath();
  v161 = v61;
  if (v39)
  {
    v147 = v53;
    v62 = v149;
    outlined init with copy of CAFUIEqualizerSlider(a1, v149, type metadata accessor for CAFUISliderView);
    v63 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v64 = swift_allocObject();
    outlined init with take of CAFUIEqualizerSlider(v62, v64 + v63, type metadata accessor for CAFUISliderView);
    v65 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    v66 = v150;
    Button.init(action:label:)();
    v67 = v152;
    PlainButtonStyle.init()();
    v68 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _OffsetEffect>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd);
    v69 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    v70 = v202;
    v71 = v69;
    v72 = v55;
    v73 = v153;
    v74 = v151;
    v75 = v162;
    View.buttonStyle<A>(_:)();
    (*(v160 + 8))(v67, v75);
    (*(v158 + 8))(v66, v74);
    v76 = v165;
    static ButtonRepeatBehavior.enabled.getter();
    *&v206 = v74;
    *(&v206 + 1) = v75;
    *&v207 = v68;
    *(&v207 + 1) = v71;
    a1 = v179;
    v77 = swift_getOpaqueTypeConformance2();
    v78 = v197;
    View.buttonRepeatBehavior(_:)();
    (*(v167 + 8))(v76, v168);
    (*(v159 + 8))(v72, v78);
    *&v206 = v78;
    *(&v206 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    v79 = v157;
    v80 = v155;
    View.accessibilityIdentifier(_:)();
    (*(v154 + 8))(v73, v80);
    outlined init with take of AttributedString?(v79, v70, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGMd);
    v147(v70, 0, 1, v196);
  }

  else
  {
    v53(v202, 1, 1, v54);
    v81 = v61;
  }

  v82 = (a1 + *(v199 + 24));
  v83 = v82[1];
  *&v206 = *v82;
  *(&v206 + 1) = v83;
  lazy protocol witness table accessor for type String and conformance String();

  v84 = Text.init<A>(_:)();
  v86 = v85;
  v88 = v87;
  v89 = [objc_opt_self() secondaryLabelColor];
  MEMORY[0x245D0CE70](v89);
  v90 = Text.foregroundColor(_:)();
  v92 = v91;
  v94 = v93;
  v96 = v95;

  outlined consume of Text.Storage(v84, v86, v88 & 1);

  v97 = v177;
  specialized Environment.wrappedValue.getter(v177);
  v98 = v191;
  v99 = v178;
  v100 = v192;
  (*(v191 + 104))(v178, *MEMORY[0x277CDF3C0], v192);
  v101 = static ColorScheme.== infix(_:_:)();
  v102 = *(v98 + 8);
  v102(v99, v100);
  v102(v97, v100);
  v103 = v185;
  v104 = MEMORY[0x277CE13B8];
  if ((v101 & 1) == 0)
  {
    v104 = MEMORY[0x277CE13B0];
  }

  v105 = v173;
  v106 = v189;
  (*(v185 + 104))(v173, *v104, v189);
  v107 = v176;
  (*(v103 + 32))(&v176[*(v170 + 36)], v105, v106);
  *v107 = v90;
  *(v107 + 8) = v92;
  *(v107 + 16) = v94 & 1;
  *(v107 + 24) = v96;
  v108 = static Font.caption2.getter();
  v109 = swift_getKeyPath();
  v110 = v183;
  outlined init with take of AttributedString?(v107, v183, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_BlendModeEffectVGMd);
  v111 = (v110 + *(v186 + 36));
  *v111 = v109;
  v111[1] = v108;
  static Font.Weight.semibold.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _BlendModeEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v112 = v175;
  View.fontWeight(_:)();
  outlined destroy of RequestTemporaryContentModel?(v110, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  v113 = swift_getKeyPath();
  v114 = v174;
  (*(v184 + 32))(v174, v112, v188);
  v115 = &v114[*(v171 + 36)];
  *v115 = v113;
  *(v115 + 1) = 2;
  v115[16] = 0;
  v116 = swift_getKeyPath();
  v117 = v114;
  v118 = v182;
  outlined init with take of AttributedString?(v117, v182, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGMd);
  v119 = v118 + *(v172 + 36);
  *v119 = v116;
  *(v119 + 8) = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v120 = v118;
  v121 = v190;
  outlined init with take of AttributedString?(v120, v190, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGMd);
  v122 = (v121 + *(v180 + 36));
  v123 = v207;
  *v122 = v206;
  v122[1] = v123;
  v122[2] = v208;
  LOBYTE(v116) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = v121;
  v133 = v181;
  outlined init with take of AttributedString?(v132, v181, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGAA12_FrameLayoutVGMd);
  v134 = v133 + *(v187 + 36);
  *v134 = v116;
  *(v134 + 8) = v125;
  *(v134 + 16) = v127;
  *(v134 + 24) = v129;
  *(v134 + 32) = v131;
  *(v134 + 40) = 0;
  v135 = v193;
  outlined init with take of AttributedString?(v133, v193, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGAA12_FrameLayoutVGAA08_PaddingS0VGMd);
  v136 = v200;
  outlined init with copy of NotificationModel.Symbol?(v201, v200, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);
  v137 = v169;
  outlined init with copy of NotificationModel.Symbol?(v202, v169, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);
  v138 = v194;
  outlined init with copy of NotificationModel.Symbol?(v135, v194, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGAA12_FrameLayoutVGAA08_PaddingS0VGMd);
  v139 = v195;
  outlined init with copy of NotificationModel.Symbol?(v136, v195, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSg_5CAFUI06SliderE0VA1_ACyACyACyACyAeAE10fontWeightyQrAA4FontV0X0VSgFQOyACyACyAnA010_BlendModeP0VGAA022_EnvironmentKeyWritingT0VyA7_SgGG_Qo_A15_ySiSgGGA15_yAA0L9AlignmentOGGAPGAA08_PaddingN0VGtMd);
  v141 = v139 + v140[12];
  *v141 = KeyPath;
  *(v141 + 8) = 0;
  v142 = v164;
  *(v141 + 16) = v166;
  *(v141 + 24) = v142;
  *(v141 + 32) = v60;
  v143 = v161;
  *(v141 + 40) = v161;
  outlined init with copy of NotificationModel.Symbol?(v137, v139 + v140[16], &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);
  outlined init with copy of NotificationModel.Symbol?(v138, v139 + v140[20], &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGAA12_FrameLayoutVGAA08_PaddingS0VGMd);

  v144 = v143;

  outlined destroy of RequestTemporaryContentModel?(v135, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGAA12_FrameLayoutVGAA08_PaddingS0VGMd);
  outlined destroy of RequestTemporaryContentModel?(v202, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);
  outlined destroy of RequestTemporaryContentModel?(v201, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);
  outlined destroy of RequestTemporaryContentModel?(v138, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARySiSgGGARyAA0I9AlignmentOGGAA12_FrameLayoutVGAA08_PaddingS0VGMd);
  outlined destroy of RequestTemporaryContentModel?(v137, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);

  return outlined destroy of RequestTemporaryContentModel?(v200, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20buttonRepeatBehavioryQrAA06ButtongH0VFQOyAeAE0F5StyleyQrqd__AA09PrimitiveiJ0Rd__lFQOyAA0I0VyACyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGG_AA05PlainiJ0VQo__Qo_AA31AccessibilityAttachmentModifierVGSgMd);
}

uint64_t closure #1 in closure #1 in CAFUISliderView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for CAFUISliderView(0);
  v3 = (a1 + *(v2 + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 4);
  v14 = *v3;
  v15 = v5;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
  MEMORY[0x245D0CF90](&v13);
  v7 = v13;
  v8 = *(a1 + *(v2 + 28));
  [v8 stepValue];
  v10 = v7 + v9;
  [v8 maximumValue];
  if (v11 >= v10)
  {
    v11 = v10;
  }

  v14 = v4;
  v15 = v5;
  v16 = v6;
  v13 = v11;
  return Binding.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in CAFUISliderView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for CAFUISliderView(0);
  v3 = (a1 + *(v2 + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 4);
  v14 = *v3;
  v15 = v5;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySfGMd);
  MEMORY[0x245D0CF90](&v13);
  v7 = v13;
  v8 = *(a1 + *(v2 + 28));
  [v8 stepValue];
  v10 = v7 - v9;
  [v8 minimumValue];
  if (v10 > v11)
  {
    v11 = v10;
  }

  v14 = v4;
  v15 = v5;
  v16 = v6;
  v13 = v11;
  return Binding.wrappedValue.setter();
}

id closure #2 in closure #1 in CAFUISliderView.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>)
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v30) = 256;
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v10 = *MEMORY[0x277D76920];
  v11 = objc_opt_self();
  result = [v11 _preferredFontForTextStyle_design_variant_];
  if (result)
  {
    v13 = result;
    v14 = [result fontWithSize_];

    v15 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    if (!v14)
    {
      v14 = [v11 systemFontOfSize:a2 weight:*MEMORY[0x277D74410]];
    }

    v16 = [v15 scaledFontForFont_];

    Font.init(_:)();
    v17 = Text.font(_:)();
    v19 = v18;
    v21 = v20;

    outlined consume of Text.Storage(v5, v7, v9 & 1);

    v22 = [objc_opt_self() _carSystemFocusColor];
    MEMORY[0x245D0CE70](v22);
    v23 = Text.foregroundColor(_:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    outlined consume of Text.Storage(v17, v19, v21 & 1);

    static Alignment.center.getter();
    result = _FrameLayout.init(width:height:alignment:)();
    *a1 = v23;
    *(a1 + 8) = v25;
    *(a1 + 16) = v27 & 1;
    *(a1 + 24) = v29;
    *(a1 + 32) = v32;
    *(a1 + 48) = v33;
    *(a1 + 64) = v34;
    *(a1 + 80) = a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance CAFUISliderView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20buttonRepeatBehavioryQrAA06ButtonlM0VFQOyAmAE0K5StyleyQrqd__AA09PrimitivenO0Rd__lFQOyAA0N0VyAKyAKyAA4TextVAA06_FrameG0VGAA13_OffsetEffectVGG_AA05PlainnO0VQo__Qo_AA31AccessibilityAttachmentModifierVGSg_5CAFUI06SliderD0VA9_AKyAKyAKyAKyAmAE10fontWeightyQrAA4FontV6WeightVSgFQOyAKyAKyAvA010_BlendModeT0VGAA022_EnvironmentKeyWritingX0VyA15_SgGG_Qo_A23_ySiSgGGA23_yAA0Q9AlignmentOGGAXGAA08_PaddingG0VGtGGMd);
  return closure #1 in CAFUISliderView.body.getter(v1, a1 + *(v3 + 44));
}

int *CAFUIEqualizerSlider.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for CAFEqualizerObservable();
  v6 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type CAFEqualizerObservable and conformance CAFEqualizerObservable, MEMORY[0x277CF3710]);
  v7 = MEMORY[0x245D0CA00](v4, v3, v5, v6);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v23;
  *(v8 + 40) = v24;
  *(v8 + 48) = v25;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v23;
  *(v9 + 40) = v24;
  *(v9 + 48) = v25;

  Binding.init(get:set:)();
  v10 = CAFEqualizerObservable.observed.getter();
  v11 = CAFEqualizer.title.getter();
  v13 = v12;

  v14 = CAFEqualizerObservable.observed.getter();
  v15 = [v14 valueRange];

  v16 = [v15 floatRange];
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for CAFUISliderView(0);
  v18 = a1 + result[5];
  *v18 = v20;
  *(v18 + 1) = v21;
  *(v18 + 4) = v22;
  v19 = (a1 + result[6]);
  *v19 = v11;
  v19[1] = v13;
  *(a1 + result[7]) = v16;
  *(a1 + result[8]) = 0;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUIEqualizerSlider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_sliderTappedPublisher@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy5CAFUI10SliderViewV08VerticalE0Cs5NeverOGMd);
  swift_allocObject();
  result = PassthroughSubject.init()();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.sliderTappedPublisher.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_sliderTappedPublisher and conformance EnvironmentValues.__Key_sliderTappedPublisher();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t closure #1 in CAFUIEqualizerGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVACyACyAjA16_FlexFrameLayoutVGAPGGGAA010_FixedSizeO0VGMd);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = *(a1 + 48);
  outlined init with copy of CAFUIEqualizerGroup(a1, v23);
  v12 = static VerticalAlignment.center.getter();
  v13 = *(a1 + 24);
  *v9 = v12;
  *(v9 + 1) = v13;
  v9[16] = 0;
  v20[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVAA15ModifiedContentVyARyAlA010_FlexFrameG0VGATGGGMd) + 44);
  v24 = *(a1 + 8);
  v22 = v24;
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  outlined init with copy of CAFUIEqualizerGroup(a1, v23);
  outlined init with copy of NotificationModel.Symbol?(&v24, v23, &_sSay5CAFUI20CAFUIEqualizerSliderVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay5CAFUI20CAFUIEqualizerSliderVGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy5CAFUI20CAFUIEqualizerSliderVAA16_FlexFrameLayoutVGAHGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFUIEqualizerSlider] and conformance [A], &_sSay5CAFUI20CAFUIEqualizerSliderVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type CAFUIEqualizerSlider and conformance CAFUIEqualizerSlider, type metadata accessor for CAFUIEqualizerSlider);
  ForEach<>.init(_:content:)();
  *&v9[*(v4 + 44)] = 1;
  outlined init with copy of NotificationModel.Symbol?(v9, v7, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVACyACyAjA16_FlexFrameLayoutVGAPGGGAA010_FixedSizeO0VGMd);
  v16 = v21;
  *v21 = partial apply for closure #1 in closure #1 in CAFUIEqualizerGroup.body.getter;
  v16[1] = v10;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA6ZStackVyAA9EmptyViewVGAA25_AppearanceActionModifierVGG_AEyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVAEyAEyAuA16_FlexFrameLayoutVGA_GGGAA010_FixedSizeW0VGtMd);
  outlined init with copy of NotificationModel.Symbol?(v7, v17 + *(v18 + 48), &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVACyACyAjA16_FlexFrameLayoutVGAPGGGAA010_FixedSizeO0VGMd);

  outlined destroy of RequestTemporaryContentModel?(v9, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVACyACyAjA16_FlexFrameLayoutVGAPGGGAA010_FixedSizeO0VGMd);
  outlined destroy of RequestTemporaryContentModel?(v7, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVACyACyAjA16_FlexFrameLayoutVGAPGGGAA010_FixedSizeO0VGMd);
}

uint64_t closure #1 in closure #1 in CAFUIEqualizerGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = static Alignment.center.getter();
  v11 = v10;
  (*(v7 + 16))(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6);
  v12 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v14 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 64) = *(a2 + 48);
  (*(v7 + 32))(v13 + v12, &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = partial apply for closure #2 in closure #1 in closure #1 in CAFUIEqualizerGroup.body.getter;
  a3[3] = v13;
  a3[4] = 0;
  a3[5] = 0;
  return outlined init with copy of CAFUIEqualizerGroup(a2, v17);
}

uint64_t closure #2 in closure #1 in closure #1 in CAFUIEqualizerGroup.body.getter()
{
  GeometryProxy.size.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
  return State.wrappedValue.setter();
}

__n128 closure #1 in closure #2 in closure #1 in CAFUIEqualizerGroup.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy5CAFUI20CAFUIEqualizerSliderVAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with copy of CAFUIEqualizerSlider(a1, v8, type metadata accessor for CAFUIEqualizerSlider);
  v9 = &v8[*(v6 + 36)];
  v10 = v19[7];
  *(v9 + 4) = v19[6];
  *(v9 + 5) = v10;
  *(v9 + 6) = v19[8];
  v11 = v19[3];
  *v9 = v19[2];
  *(v9 + 1) = v11;
  v12 = v19[5];
  *(v9 + 2) = v19[4];
  *(v9 + 3) = v12;
  v20 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of AttributedString?(v8, a3, &_s7SwiftUI15ModifiedContentVy5CAFUI20CAFUIEqualizerSliderVAA16_FlexFrameLayoutVGMd);
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy5CAFUI20CAFUIEqualizerSliderVAA16_FlexFrameLayoutVGAHGMd) + 36);
  result = v23;
  v15 = v25;
  v16 = v26;
  *(v13 + 64) = v24;
  *(v13 + 80) = v15;
  *(v13 + 96) = v16;
  v17 = v21;
  v18 = v22;
  *v13 = v20;
  *(v13 + 16) = v17;
  *(v13 + 32) = v18;
  *(v13 + 48) = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.sliderTappedPublisher : EnvironmentValues()
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_sliderTappedPublisher and conformance EnvironmentValues.__Key_sliderTappedPublisher();

  return EnvironmentValues.subscript.setter();
}

uint64_t protocol witness for View.body.getter in conformance CAFUIEqualizerGroup@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v12 = v1[2];
  v13 = *(v1 + 6);
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA14GeometryReaderVyAA15ModifiedContentVyAA0F0VyAA05EmptyD0VGAA25_AppearanceActionModifierVGG_AMyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVAMyAMyA1_AA010_FlexFrameG0VGA7_GGGAA010_FixedSizeG0VGtGGMd);
  closure #1 in CAFUIEqualizerGroup.body.getter(&v10, (a1 + *(v5 + 44)));
  KeyPath = swift_getKeyPath();
  v7 = v11;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAA05EmptyG0VGAA25_AppearanceActionModifierVGG_ACyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVACyACyAwA16_FlexFrameLayoutVGA1_GGGAA010_FixedSizeX0VGtGGAA022_EnvironmentKeyWritingM0Vy7Combine18PassthroughSubjectCyAU0sG0V08VerticalS0Cs5NeverOGGGMd) + 36));
  *v8 = KeyPath;
  v8[1] = v7;
}

float *closure #2 in Binding<A>.floatBinding()(float *result)
{
  v1 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -129.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 128.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVys4Int8VGMd);
    return Binding.wrappedValue.setter();
  }

LABEL_7:
  __break(1u);
  return result;
}

void closure #1 in static UIImage.thumbImage(withDiameter:thumbColor:)(void *a1, id a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  [a2 set];
  v11 = [a1 CGContext];
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  CGContextFillEllipseInRect(v11, v22);

  v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.15];
  v13 = [objc_opt_self() bezierPathWithOvalInRect_];
  v14 = [a1 CGContext];
  [v13 bounds];
  CGContextClipToRect(v14, v23);
  v20.width = 0.0;
  v20.height = 0.0;
  CGContextSetShadow(v14, v20, 0.0);
  v15 = [v12 CGColor];
  Alpha = CGColorGetAlpha(v15);

  CGContextSetAlpha(v14, Alpha);
  CGContextBeginTransparencyLayer(v14, 0);
  v18 = [v12 colorWithAlphaComponent_];
  v17 = [v18 CGColor];
  v21.width = 0.5;
  v21.height = 0.0;
  CGContextSetShadowWithColor(v14, v21, 1.0, v17);

  CGContextSetBlendMode(v14, kCGBlendModeSourceOut);
  CGContextBeginTransparencyLayer(v14, 0);
  [v18 setFill];
  [v13 fill];
  CGContextEndTransparencyLayer(v14);
  CGContextEndTransparencyLayer(v14);
}

void specialized closure #1 in SliderView.VerticalSlider.initialize()(char *a1, void *a2)
{
  v4 = [a1 backgroundColor];
  v5 = objc_opt_self();
  v6 = [v5 _carSystemFocusColor];
  if (v4)
  {
    v11 = v6;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIColor);
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = *&a1[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider];
    v9 = [a2 userInterfaceStyle];
    v10 = &selRef_systemWhiteColor;
    if (v9 != 2)
    {
      v10 = &selRef_systemBlackColor;
    }

    v12 = [v5 *v10];
    [v8 setTintColor_];
    v6 = v12;
  }
}

size_t specialized CAFUIEqualizerGroup.init(equalizers:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for CAFUIEqualizerSlider(0);
  v3 = *(v32 - 8);
  v4 = MEMORY[0x28223BE20](v32);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v29 - v7);
  v34 = 0x4046000000000000;
  State.init(wrappedValue:)();
  v9 = v35;
  v30 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy5CAFUI10SliderViewV08VerticalE0Cs5NeverOGMd);
  swift_allocObject();
  v29 = PassthroughSubject.init()();
  swift_getKeyPath();
  if (a1 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
LABEL_3:
      v35 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v10 < 0)
      {
        __break(1u);
        goto LABEL_30;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = 0;
        do
        {
          v13 = v12 + 1;
          v33 = MEMORY[0x245D0D9A0]();
          swift_getAtKeyPath();
          swift_unknownObjectRelease();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v12 = v13;
        }

        while (v10 != v13);
      }

      else
      {
        v14 = 32;
        do
        {
          v33 = *(a1 + v14);
          v15 = v33;
          swift_getAtKeyPath();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v14 += 8;
          --v10;
        }

        while (v10);
      }

      v16 = v35;
      if (!(v35 >> 62))
      {
        goto LABEL_11;
      }

LABEL_28:
      result = __CocoaSet.count.getter();
      v17 = result;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_28;
  }

LABEL_11:
  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
LABEL_25:
    v28 = v31;
    *v31 = v16;
    v28[1] = v18;
    v28[2] = v29;
    *(v28 + 3) = xmmword_242425110;
    v28[5] = v9;
    v28[6] = v30;
    return result;
  }

  v35 = MEMORY[0x277D84F90];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = v35;
    if ((v16 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v17; ++i)
      {
        MEMORY[0x245D0D9A0](i, v16);
        type metadata accessor for CAFEqualizerObservable();
        lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type CAFEqualizerObservable and conformance CAFEqualizerObservable, MEMORY[0x277CF3710]);
        *v8 = ObservedObject.init(wrappedValue:)();
        v8[1] = v20;
        UUID.init()();
        v35 = v18;
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v22 + 1;
        outlined init with take of CAFUIEqualizerSlider(v8, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, type metadata accessor for CAFUIEqualizerSlider);
      }
    }

    else
    {
      type metadata accessor for CAFEqualizerObservable();
      lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type CAFEqualizerObservable and conformance CAFEqualizerObservable, MEMORY[0x277CF3710]);
      v23 = 32;
      do
      {
        v24 = *(v16 + v23);
        *v6 = ObservedObject.init(wrappedValue:)();
        v6[1] = v25;
        UUID.init()();
        v35 = v18;
        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v27 + 1;
        outlined init with take of CAFUIEqualizerSlider(v6, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, type metadata accessor for CAFUIEqualizerSlider);
        v23 += 8;
        --v17;
      }

      while (v17);
    }

    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized SliderView.sliderTappedPublisher.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}