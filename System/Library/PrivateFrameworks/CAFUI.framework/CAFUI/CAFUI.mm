id UIColorFromCAFImageColor(int a1)
{
  switch(a1)
  {
    case 1:
      v1 = [MEMORY[0x277D75348] systemWhiteColor];
      break;
    case 2:
      v1 = [MEMORY[0x277D75348] systemBlackColor];
      break;
    case 3:
      v1 = [MEMORY[0x277D75348] systemGrayColor];
      break;
    case 4:
      v1 = [MEMORY[0x277D75348] systemRedColor];
      break;
    case 5:
      v1 = [MEMORY[0x277D75348] systemYellowColor];
      break;
    case 6:
      v1 = [MEMORY[0x277D75348] systemBlueColor];
      break;
    case 7:
      v1 = [MEMORY[0x277D75348] systemGreenColor];
      break;
    case 8:
      v1 = [MEMORY[0x277D75348] systemMintColor];
      break;
    case 9:
      v1 = [MEMORY[0x277D75348] systemOrangeColor];
      break;
    case 10:
      v1 = [MEMORY[0x277D75348] systemTealColor];
      break;
    case 11:
      v1 = [MEMORY[0x277D75348] systemCyanColor];
      break;
    case 12:
      v1 = [MEMORY[0x277D75348] systemIndigoColor];
      break;
    case 13:
      v1 = [MEMORY[0x277D75348] systemPurpleColor];
      break;
    case 14:
      v1 = [MEMORY[0x277D75348] systemPinkColor];
      break;
    case 15:
      v1 = [MEMORY[0x277D75348] systemBrownColor];
      break;
    default:
      v1 = [MEMORY[0x277D75348] labelColor];
      break;
  }

  return v1;
}

id CAFUIFrameworkBundle()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v1 = [v0 objectAtIndex:0];

  v2 = [GSSystemRootDirectory() stringByAppendingPathComponent:v1];
  v3 = [v2 stringByAppendingPathComponent:@"PrivateFrameworks/CAFUI.framework"];

  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];

  return v4;
}

id CAFUIImageForSymbolNameWithConfiguration(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277D755B8];
  v6 = CAFUIFrameworkBundle();
  v7 = [v5 imageNamed:v3 inBundle:v6 withConfiguration:v4];

  if (!v7)
  {
    if (v4)
    {
      [MEMORY[0x277D755B8] _systemImageNamed:v3 withConfiguration:v4];
    }

    else
    {
      [MEMORY[0x277D755B8] _systemImageNamed:v3];
    }
    v7 = ;
  }

  return v7;
}

id CAFUIStatusLogForCategory(uint64_t a1)
{
  if (a1)
  {
    CAFUIStatusLogForCategory_cold_1();
  }

  if (CAFUIStatusLogForCategory_onceToken != -1)
  {
    CAFUIStatusLogForCategory_cold_2();
  }

  v1 = CAFUIStatusLogForCategory_logObjects_0;

  return v1;
}

uint64_t __CAFUIStatusLogForCategory_block_invoke()
{
  CAFUIStatusLogForCategory_logObjects_0 = os_log_create("com.apple.CAFUI.status", "Default");

  return MEMORY[0x2821F96F8]();
}

uint64_t CAFNotificationSource.notification.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<NotificationModel?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 16) = v1;
  }

  return v1;
}

Swift::Int CAFNotificationSource.Destination.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0DB60](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CAFNotificationSource.Destination()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0DB60](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CAFNotificationSource.Destination()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0DB60](v1);
  return Hasher._finalize()();
}

uint64_t CAFNotificationSource.__allocating_init(requestContent:remoteNotification:minimalNotification:alertNotification:actionNotification:singleSelectNotification:multiSelectNotification:autoSettingsNotification:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v109 = a8;
  v108 = a7;
  v107 = a6;
  v106 = a4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v124 = *(v105 - 8);
  MEMORY[0x28223BE20]();
  v113 = v86 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMd);
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20]();
  v94 = v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  *&v125 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v17 = v86 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  MEMORY[0x28223BE20]();
  v103 = v86 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMd);
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20]();
  v93 = v86 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v104 = *(v20 - 8);
  v119 = v104;
  v120 = v20 - 8;
  MEMORY[0x28223BE20]();
  v22 = v86 - v21;
  v23 = swift_allocObject();
  v91 = *a9;
  v23[2] = 0;
  v121 = type metadata accessor for NotificationModel();
  v24 = *(v121 - 8);
  v122 = *(v24 + 56);
  v123 = v24 + 56;
  v122(v22, 1, 1, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v25 = CurrentValueSubject.init(_:)();
  v26 = MEMORY[0x277D84FA0];
  v89 = v23;
  v23[3] = v25;
  v23[4] = v26;
  v92 = v23 + 4;
  v27 = a1;
  v23[5] = a1;
  v23[6] = a2;
  v100 = a2;
  v101 = a3;
  v28 = v106;
  v23[7] = a3;
  v23[8] = v28;
  v102 = a5;
  v29 = v107;
  v23[9] = a5;
  v23[10] = v29;
  v30 = v109;
  v23[11] = v108;
  v23[12] = v30;
  v90 = v27;

  v126 = CAFRequestContentSource.content.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  v88 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type RequestTemporaryContentModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  v31 = Publisher.eraseToAnyPublisher()();
  (*(v125 + 8))(v17, v15);
  v126 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CarPlayAssetUI28RequestTemporaryContentModelVSgGMd);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd) - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v125 = xmmword_2424235A0;
  *(v34 + 16) = xmmword_2424235A0;
  v35 = type metadata accessor for RequestTemporaryContentModel();
  (*(*(v35 - 8) + 56))(v34 + v33, 1, 1, v35);
  Publisher.prepend(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine10PublishersO11ConcatenateVy_AE8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAC12AnyPublisherVyAmPGGGMd);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  v36 = *(v87 - 8);
  v112 = *(v36 + 72);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  v86[1] = v38;
  *(v38 + 16) = xmmword_2424235B0;
  v111 = v38 + v37;
  v126 = CAFNotificationSource.notification.getter();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  v115 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  v39 = lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  v40 = v113;
  v114 = v39;
  Publisher<>.removeDuplicates()();

  v116 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v41 = v105;
  v42 = Publisher.eraseToAnyPublisher()();
  v118 = *(v124 + 8);
  v124 += 8;
  v118(v40, v41);
  v126 = v42;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelVSgGMd);
  v43 = *(v104 + 72);
  v119 = *(v119 + 80);
  v120 = v43;
  v44 = (v119 + 32) & ~v119;
  v45 = swift_allocObject();
  *(v45 + 16) = v125;
  v46 = v121;
  v47 = v122;
  v122((v45 + v44), 1, 1, v121);
  Publisher.prepend(_:)();

  v126 = CAFNotificationSource.notification.getter();
  v48 = v113;
  Publisher<>.removeDuplicates()();

  v49 = v105;
  v50 = Publisher.eraseToAnyPublisher()();
  v51 = v49;
  v52 = v118;
  v118(v48, v51);
  v126 = v50;
  v53 = swift_allocObject();
  *(v53 + 16) = v125;
  v47(v53 + v44, 1, 1, v46);
  v54 = v112;
  Publisher.prepend(_:)();

  v86[0] = 2 * v54;
  v126 = CAFNotificationSource.notification.getter();
  v55 = v113;
  Publisher<>.removeDuplicates()();

  v56 = v105;
  v57 = Publisher.eraseToAnyPublisher()();
  v52(v55, v56);
  v126 = v57;
  v104 = v44;
  v58 = swift_allocObject();
  *(v58 + 16) = v125;
  v122((v58 + v44), 1, 1, v121);
  v59 = v86[0];
  Publisher.prepend(_:)();

  v86[0] = v59 + v112;
  v126 = CAFNotificationSource.notification.getter();
  v60 = v113;
  Publisher<>.removeDuplicates()();

  v61 = Publisher.eraseToAnyPublisher()();
  v118(v60, v56);
  v126 = v61;
  v62 = v104;
  v63 = swift_allocObject();
  *(v63 + 16) = v125;
  v64 = v121;
  v122((v63 + v62), 1, 1, v121);
  Publisher.prepend(_:)();

  v86[0] = 4 * v112;
  v126 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v65 = Publisher.eraseToAnyPublisher()();
  v118(v60, v56);
  v126 = v65;
  v66 = v104;
  v67 = swift_allocObject();
  *(v67 + 16) = v125;
  v68 = v67 + v66;
  v69 = v122;
  v122(v68, 1, 1, v64);
  Publisher.prepend(_:)();

  v126 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v70 = Publisher.eraseToAnyPublisher()();
  v71 = v60;
  v118(v60, v56);
  v126 = v70;
  v72 = v104;
  v73 = swift_allocObject();
  *(v73 + 16) = v125;
  v69(v73 + v72, 1, 1, v121);
  v74 = v111;
  Publisher.prepend(_:)();

  v112 = v74 + 6 * v112;
  v126 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v75 = Publisher.eraseToAnyPublisher()();
  v118(v71, v56);
  v126 = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = v125;
  v122((v76 + v72), 1, 1, v121);
  Publisher.prepend(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[NotificationModel?], Never>, AnyPublisher<NotificationModel?, Never>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  v77 = v94;
  Publishers.MergeMany.init(_:)();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<Publishers.Concatenate<Publishers.Sequence<[NotificationModel?], Never>, AnyPublisher<NotificationModel?, Never>>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMd);
  v78 = v96;
  v79 = Publisher.skipNil<A>()();
  (*(v97 + 8))(v77, v78);
  v126 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[RequestTemporaryContentModel?], Never>, AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMd);
  v80 = v93;
  Publishers.CombineLatest.init(_:_:)();
  swift_unownedRetainStrong();
  v81 = swift_unownedRetain();

  v82 = swift_allocObject();
  *(v82 + 16) = v91;
  *(v82 + 24) = v81;
  v83 = swift_allocObject();
  *(v83 + 16) = partial apply for closure #1 in CAFNotificationSource.init(requestContent:remoteNotification:minimalNotification:alertNotification:actionNotification:singleSelectNotification:multiSelectNotification:autoSettingsNotification:destination:);
  *(v83 + 24) = v82;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Concatenate<Publishers.Sequence<[RequestTemporaryContentModel?], Never>, AnyPublisher<RequestTemporaryContentModel?, Never>>, AnyPublisher<NotificationModel, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMd);
  v84 = v98;
  Publisher<>.sink(receiveValue:)();

  (*(v99 + 8))(v80, v84);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v81;
}

uint64_t CAFNotificationSource.init(requestContent:remoteNotification:minimalNotification:alertNotification:actionNotification:singleSelectNotification:multiSelectNotification:autoSettingsNotification:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v110 = a7;
  v109 = a6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v125 = *(v102 - 8);
  MEMORY[0x28223BE20]();
  v120 = v87 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMd);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20]();
  v94 = v87 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  *&v126 = *(v124 - 8);
  MEMORY[0x28223BE20]();
  v20 = v87 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  MEMORY[0x28223BE20]();
  v108 = v87 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMd);
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20]();
  v92 = v87 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v112 = *(v23 - 8);
  v115 = v23 - 8;
  v116 = v112;
  MEMORY[0x28223BE20]();
  v25 = v87 - v24;
  v93 = *a9;
  v10[2] = 0;
  v121 = type metadata accessor for NotificationModel();
  v26 = *(v121 - 8);
  v122 = *(v26 + 56);
  v123 = v26 + 56;
  v122(v25, 1, 1, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v27 = CurrentValueSubject.init(_:)();
  v28 = MEMORY[0x277D84FA0];
  v90 = v10;
  v10[3] = v27;
  v10[4] = v28;
  v95 = v10 + 4;
  v29 = a1;
  v10[5] = a1;
  v10[6] = a2;
  v104 = a2;
  v105 = a3;
  v10[7] = a3;
  v10[8] = a4;
  v106 = a4;
  v107 = a5;
  v30 = v109;
  v10[9] = a5;
  v10[10] = v30;
  v10[11] = v110;
  v10[12] = a8;
  v103 = a8;
  v91 = v29;

  v127 = CAFRequestContentSource.content.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  v89 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type RequestTemporaryContentModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  v31 = v124;
  v32 = Publisher.eraseToAnyPublisher()();
  (*(v126 + 8))(v20, v31);
  v127 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CarPlayAssetUI28RequestTemporaryContentModelVSgGMd);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd) - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v126 = xmmword_2424235A0;
  *(v35 + 16) = xmmword_2424235A0;
  v36 = type metadata accessor for RequestTemporaryContentModel();
  (*(*(v36 - 8) + 56))(v35 + v34, 1, 1, v36);
  Publisher.prepend(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine10PublishersO11ConcatenateVy_AE8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAC12AnyPublisherVyAmPGGGMd);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  v37 = *(v88 - 8);
  v118 = *(v37 + 72);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  v87[1] = v39;
  *(v39 + 16) = xmmword_2424235B0;
  v101 = v39 + v38;
  v127 = CAFNotificationSource.notification.getter();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  v40 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  v119 = lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  v41 = v120;
  Publisher<>.removeDuplicates()();

  v117 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v42 = v102;
  v43 = Publisher.eraseToAnyPublisher()();
  v114 = *(v125 + 8);
  v125 += 8;
  v114(v41, v42);
  v127 = v43;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelVSgGMd);
  v44 = *(v116 + 80);
  v115 = *(v112 + 72);
  v116 = v44;
  v45 = (v44 + 32) & ~v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v126;
  v47 = v121;
  v48 = v122;
  v122((v46 + v45), 1, 1, v121);
  v111 = v40;
  Publisher.prepend(_:)();

  v127 = CAFNotificationSource.notification.getter();
  v49 = v120;
  Publisher<>.removeDuplicates()();

  v50 = Publisher.eraseToAnyPublisher()();
  v51 = v114;
  v114(v49, v42);
  v127 = v50;
  v112 = v45;
  v52 = swift_allocObject();
  *(v52 + 16) = v126;
  v48(v52 + v45, 1, 1, v47);
  v53 = v118;
  Publisher.prepend(_:)();

  v87[0] = 2 * v53;
  v127 = CAFNotificationSource.notification.getter();
  v54 = v120;
  Publisher<>.removeDuplicates()();

  v55 = Publisher.eraseToAnyPublisher()();
  v51(v54, v42);
  v127 = v55;
  v56 = v112;
  v57 = swift_allocObject();
  *(v57 + 16) = v126;
  v58 = v122;
  v122((v57 + v56), 1, 1, v121);
  v59 = v87[0];
  Publisher.prepend(_:)();

  v87[0] = v59 + v118;
  v127 = CAFNotificationSource.notification.getter();
  v60 = v120;
  Publisher<>.removeDuplicates()();

  v61 = Publisher.eraseToAnyPublisher()();
  v114(v60, v42);
  v127 = v61;
  v62 = v112;
  v63 = swift_allocObject();
  *(v63 + 16) = v126;
  v58(v63 + v62, 1, 1, v121);
  v64 = v101;
  Publisher.prepend(_:)();

  v87[0] = 4 * v118;
  v127 = CAFNotificationSource.notification.getter();
  v65 = v120;
  Publisher<>.removeDuplicates()();

  v66 = v102;
  v67 = Publisher.eraseToAnyPublisher()();
  v68 = v114;
  v114(v65, v66);
  v127 = v67;
  v69 = v112;
  v70 = swift_allocObject();
  *(v70 + 16) = v126;
  v122((v70 + v69), 1, 1, v121);
  v71 = v87[0];
  Publisher.prepend(_:)();

  v87[0] = v71 + v118;
  v127 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v72 = Publisher.eraseToAnyPublisher()();
  v68(v65, v66);
  v127 = v72;
  v73 = v112;
  v74 = swift_allocObject();
  *(v74 + 16) = v126;
  v75 = v121;
  v122((v74 + v73), 1, 1, v121);
  Publisher.prepend(_:)();

  v118 = v64 + 6 * v118;
  v127 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v76 = Publisher.eraseToAnyPublisher()();
  v114(v65, v66);
  v127 = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = v126;
  v122((v77 + v73), 1, 1, v75);
  Publisher.prepend(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[NotificationModel?], Never>, AnyPublisher<NotificationModel?, Never>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  v78 = v94;
  Publishers.MergeMany.init(_:)();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<Publishers.Concatenate<Publishers.Sequence<[NotificationModel?], Never>, AnyPublisher<NotificationModel?, Never>>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMd);
  v79 = v97;
  v80 = Publisher.skipNil<A>()();
  (*(v98 + 8))(v78, v79);
  v127 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[RequestTemporaryContentModel?], Never>, AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMd);
  v81 = v92;
  Publishers.CombineLatest.init(_:_:)();
  swift_unownedRetainStrong();
  v82 = swift_unownedRetain();

  v83 = swift_allocObject();
  *(v83 + 16) = v93;
  *(v83 + 24) = v82;
  v84 = swift_allocObject();
  *(v84 + 16) = closure #1 in CAFNotificationSource.init(requestContent:remoteNotification:minimalNotification:alertNotification:actionNotification:singleSelectNotification:multiSelectNotification:autoSettingsNotification:destination:)partial apply;
  *(v84 + 24) = v83;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Concatenate<Publishers.Sequence<[RequestTemporaryContentModel?], Never>, AnyPublisher<RequestTemporaryContentModel?, Never>>, AnyPublisher<NotificationModel, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMd);
  v85 = v99;
  Publisher<>.sink(receiveValue:)();

  (*(v100 + 8))(v81, v85);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v82;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in CAFNotificationSource.init(requestContent:remoteNotification:minimalNotification:alertNotification:actionNotification:singleSelectNotification:multiSelectNotification:autoSettingsNotification:destination:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20]();
  v7 = &v20 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd);
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = type metadata accessor for RequestTemporaryContentModel();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RequestTemporaryContentModel?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of RequestTemporaryContentModel?(v9, &_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd);
  }

  (*(v11 + 32))(v13, v9, v10);
  RequestTemporaryContentModel.contentURL.getter();
  if (a3)
  {
    if (!String.isModalAlert.getter() && !String.isRemoteNotification.getter())
    {
      v15 = String.isMinimalNotification.getter();
      goto LABEL_7;
    }

LABEL_15:

    swift_unownedRetainStrong();
    goto LABEL_16;
  }

  if (String.isDismissibleNotification.getter() || String.isModalAlert.getter() || String.isSingleSelectNotification.getter() || String.isMultiSelectRemoteNotification.getter() || String.isRemoteNotification.getter() || String.isMinimalNotification.getter())
  {
    goto LABEL_15;
  }

  v15 = String.isAutoSettingsNotification.getter();
LABEL_7:
  v16 = v15;

  swift_unownedRetainStrong();
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_16:
  if ((RequestTemporaryContentModel.on.getter() & 1) == 0)
  {
LABEL_18:
    v19 = type metadata accessor for NotificationModel();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    goto LABEL_19;
  }

  v17 = type metadata accessor for NotificationModel();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a2, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
LABEL_19:

  CurrentValueSubject.send(_:)();

  outlined destroy of RequestTemporaryContentModel?(v7, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  return (*(v11 + 8))(v13, v10);
}

uint64_t CAFNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFNotificationSource.__deallocating_deinit()
{
  CAFNotificationSource.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t CAFNotificationSource.output.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
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

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFNotificationSource()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestTemporaryContentModel? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RequestTemporaryContentModel? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RequestTemporaryContentModel? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd);
    lazy protocol witness table accessor for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel(&lazy protocol witness table cache variable for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel, MEMORY[0x277CF8D38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestTemporaryContentModel? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type NotificationModel? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type NotificationModel? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
    lazy protocol witness table accessor for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel(&lazy protocol witness table cache variable for type NotificationModel and conformance NotificationModel, MEMORY[0x277CF8C00]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationModel? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2423552AC()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2423552F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed RequestTemporaryContentModel?, @in_guaranteed NotificationModel) -> ()(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSg_AA012NotificationH0VtMd);
  return v3(a1, a1 + *(v4 + 48));
}

unint64_t lazy protocol witness table accessor for type CAFNotificationSource.Destination and conformance CAFNotificationSource.Destination()
{
  result = lazy protocol witness table cache variable for type CAFNotificationSource.Destination and conformance CAFNotificationSource.Destination;
  if (!lazy protocol witness table cache variable for type CAFNotificationSource.Destination and conformance CAFNotificationSource.Destination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFNotificationSource.Destination and conformance CAFNotificationSource.Destination);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAFNotificationSource.Destination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAFNotificationSource.Destination(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioSettingsCrosshairView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioSettingsCrosshairView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

BOOL _sSo22NSStringDrawingOptionsVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x245D0D290](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x245D0D180](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x245D0D180](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type RequestTemporaryContentModel and conformance RequestTemporaryContentModel(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of RequestTemporaryContentModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RequestTemporaryContentModel?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
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

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for CAFSettingsCategory(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t CAFMultiSelectNotificationSource.output.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
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

BOOL String.isMultiSelectRemoteNotification.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20]();
  v1 = &v11 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v1, &_s10Foundation3URLVSgMd);
    return 0;
  }

  (*(v3 + 32))(v5, v1, v2);
  v7 = URL.scheme.getter();
  if (!v8)
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  if (v7 != 0xD00000000000001DLL || v8 != 0x8000000242428D40)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v3 + 8))(v5, v2);
    return (v10 & 1) != 0;
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

void *CAFMultiSelectNotificationSource.__allocating_init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a2;
  v31 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v34);
  v32 = v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x28223BE20](v14);
  v30 = v29 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v29 - v18;

  v20 = swift_allocObject();
  v20[2] = 0;
  v21 = type metadata accessor for NotificationModel();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v20[3] = CurrentValueSubject.init(_:)();
  v20[4] = MEMORY[0x277D84FA0];
  v20[5] = a7;
  v20[6] = a8;
  v29[1] = a8;
  v37 = a1;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v29[0];
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v24 = v30;
  Publishers.CombineLatest.init(_:_:)();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #3 in CAFMultiSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v26 + 24) = v25;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v27 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v24, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v20;
}

void *CAFMultiSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a2;
  v31[3] = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v31[2] = v31 - v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v32);
  v31[0] = v31 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v36;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  Publishers.CombineLatest.init(_:_:)();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = closure #3 in CAFMultiSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)partial apply;
  *(v28 + 24) = v27;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v29 = v34;
  Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v20, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v9;
}

uint64_t closure #1 in CAFMultiSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t closure #3 in CAFMultiSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t (*a1)(void, void, void), void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFMultiSelectNotificationSource.updateNotification(remoteNotification:requestContent:)(a1, a2);
  }

  return result;
}

uint64_t CAFMultiSelectNotificationSource.updateNotification(remoteNotification:requestContent:)(uint64_t (*a1)(void, void, void), void *a2)
{
  v62 = a1;
  v59 = *v2;
  v4 = type metadata accessor for NotificationModel();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v63 = &v56 - v25;
  dispatch thunk of CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
  v26 = String.isMultiSelectRemoteNotification.getter();

  if (v26 && (dispatch thunk of CAFRequestTemporaryContentObservable.on.getter() & 1) != 0)
  {
    v27 = v62;
    v28 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.displayPanelIdentifier.getter();
    v58 = v29;
    CAFMultiSelectNotificationSource.convert(message:requestContent:)(v27, a2, v21);
    outlined init with copy of NotificationModel.Symbol?(v21, v18, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    v30 = v4;
    v62 = *(v5 + 48);
    v31 = v62(v18, 1, v4);
    v57 = v28;
    if (v31 == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      (*(v5 + 56))(v24, 1, 1, v4);
    }

    else
    {
      (*(v5 + 32))(v11, v18, v4);
      static CAFMultiSelectNotificationSource.sanitize(notification:displayID:)(v11, v28, v58, v24);
      v30 = v4;
      (*(v5 + 8))(v11, v4);
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    }

    v32 = v63;
    outlined init with take of NotificationModel?(v24, v63);
    outlined init with copy of NotificationModel.Symbol?(v32, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    if (v62(v15, 1, v30) == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v34 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v35 = static OS_os_log.default.getter();
      v36 = os_log_type_enabled(v35, v34);
      v38 = v57;
      v37 = v58;
      if (v36)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v64 = v40;
        *v39 = 136315138;
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v64);

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
      v42 = v61;
      (*(v5 + 32))(v61, v15, v30);
      v43 = static os_log_type_t.info.getter();
      v44 = v60;
      (*(v5 + 16))(v60, v42, v30);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v45 = v30;
      v46 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v46, v43))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v64 = v48;
        *v47 = 136315394;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v64);

        *(v47 + 4) = v49;
        *(v47 + 12) = 2080;
        v50 = NotificationModel.id.getter();
        v52 = v51;
        v53 = *(v5 + 8);
        v53(v44, v45);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v64);
        v32 = v63;

        *(v47 + 14) = v54;
        _os_log_impl(&dword_24234D000, v46, v43, "Presenting notification: %s:%s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D0E5A0](v48, -1, -1);
        MEMORY[0x245D0E5A0](v47, -1, -1);

        v53(v42, v45);
      }

      else
      {

        v55 = *(v5 + 8);
        v55(v44, v30);
        v55(v42, v30);
      }
    }
  }

  else
  {
    v32 = v63;
    (*(v5 + 56))(v63, 1, 1, v4);
  }

  CurrentValueSubject.send(_:)();

  return outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd);
}

uint64_t static CAFMultiSelectNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v6 = type metadata accessor for NotificationModel();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationModel.ValidationError();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = NotificationModel.validate(automakerSymbolValidator:)();
  v22 = a1;
  v23 = v18;
  (*(v7 + 16))(v20, v22, v6);
  v46 = v7;
  v24 = *(v7 + 56);
  v50 = v6;
  v40 = v24;
  v41 = v7 + 56;
  v24(v20, 0, 1, v6);
  v36 = v20;
  v25 = v20;
  v26 = v21;
  v27 = a4;
  outlined init with copy of NotificationModel.Symbol?(v25, a4, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  v51 = *(v21 + 16);
  if (v51)
  {
    v28 = 0;
    v49 = v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v47 = (v46 + 6);
    v48 = v52 + 16;
    v37 = (v46 + 4);
    v38 = (v46 + 1);
    v45 = 0;
    v46 = (v52 + 8);
    v29 = &_s14CarPlayAssetUI17NotificationModelVSgMR;
    v39 = v26;
    while (v28 < *(v26 + 16))
    {
      (*(v52 + 16))(v11, v49 + *(v52 + 72) * v28, v53);
      outlined init with copy of NotificationModel.Symbol?(v27, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v30 = v50;
      if ((*v47)(v15, 1, v50) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v27, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v40(v23, 1, 1, v30);
      }

      else
      {
        v31 = v29;
        v32 = v27;
        v27 = v30;
        v29 = v42;
        v33 = v15;
        (*v37)(v42, v15, v27);
        v34 = v45;
        closure #1 in closure #2 in static CAFMultiSelectNotificationSource.sanitize(notification:displayID:)(v29, v11, v43, v44, v23);
        v45 = v34;
        if (v34)
        {
          goto LABEL_11;
        }

        (*v38)(v29, v27);
        v27 = v32;
        v29 = v31;
        outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v15 = v33;
        v26 = v39;
      }

      ++v28;
      (*v46)(v11, v53);
      outlined init with take of NotificationModel?(v23, v27);
      if (v51 == v28)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    result = (*v38)(v29, v27);
    __break(1u);
  }

  else
  {
LABEL_9:

    return outlined destroy of RequestTemporaryContentModel?(v36, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  }

  return result;
}

uint64_t sub_2423579C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242357A68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242357AD8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t closure #1 in static CAFMultiSelectNotificationSource.sanitize(notification:displayID:)(uint64_t a1, uint64_t a2)
{
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String.hasPrefix(_:)(v4);

  if (v5)
  {
    return 1;
  }

  v6 = MEMORY[0x245D0D180](a1, a2);
  v7 = CAFUIImageForSymbolName(v6);

  if (v7)
  {

    return 1;
  }

  return 0;
}

uint64_t closure #1 in closure #2 in static CAFMultiSelectNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v59 = a3;
  v60 = a4;
  v7 = type metadata accessor for NotificationModel.ValidationError();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = (MEMORY[0x28223BE20])();
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

uint64_t CAFMultiSelectNotificationSource.convert(message:requestContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v177 = a3;
  v167 = type metadata accessor for UUID();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for NotificationModel();
  v180 = *(v181 - 8);
  v6 = MEMORY[0x28223BE20](v181 - 8);
  v205 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v176 = &v160 - v8;
  v9 = type metadata accessor for NotificationModel.Style();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v170 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v160 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v169 = &v160 - v16;
  v17 = type metadata accessor for NotificationModel.FancyModel();
  v207 = *(v17 - 8);
  v208 = v17;
  MEMORY[0x28223BE20](v17);
  v206 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v204 = &v160 - v20;
  v203 = type metadata accessor for NotificationModel.FancyModel.ActionConfiguration();
  v186 = *(v203 - 8);
  v21 = MEMORY[0x28223BE20](v203);
  v202 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v185 = &v160 - v23;
  v209 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
  v174 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v184 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v187 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v188 = &v160 - v29;
  MEMORY[0x28223BE20](v28);
  v179 = &v160 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v160 - v32;
  v183 = type metadata accessor for NotificationModel.Text();
  v182 = *(v183 - 8);
  v34 = MEMORY[0x28223BE20](v183);
  v173 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v213 = &v160 - v36;
  v190 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.displayPanelIdentifier.getter();
  v192 = v37;
  v189 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.identifier.getter();
  v191 = v38;
  v39 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.userVisibleLabel.getter();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v175 = v9;
  v171 = v10;
  if (v42)
  {
    dispatch thunk of CAFMultiSelectRemoteNotificationObservable.userVisibleLabel.getter();
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.userVisibleDescription.getter();
  v47 = v46;

  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    dispatch thunk of CAFMultiSelectRemoteNotificationObservable.userVisibleDescription.getter();
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  NotificationModel.Text.init(title:body:)();
  v51 = v182;
  v52 = v183;
  v53 = (*(v182 + 48))(v33, 1, v183) == 1;
  v54 = v44;
  v55 = v181;
  if (v53)
  {

    outlined destroy of RequestTemporaryContentModel?(v33, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
    v56 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v57 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v57, v56))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v215 = v59;
      *v58 = 136315138;
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v192, &v215);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_24234D000, v57, v56, "No text added to notification on display: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x245D0E5A0](v59, -1, -1);
      MEMORY[0x245D0E5A0](v58, -1, -1);
    }

    else
    {
    }

    return (*(v180 + 56))(v177, 1, 1, v55);
  }

  else
  {
    v163 = v50;
    v164 = v54;
    (*(v51 + 32))(v213, v33, v52);
    v172 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.symbolNameAndColor.getter();
    v61 = [v172 name];
    if (v61)
    {
      v62 = v61;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    v67 = v209;
    v68 = [v172 color];
    static NotificationModel.getSymbol(symbolName:symbolColor:)(v63, v65, v68, v179);

    v69 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.trailingButton.getter();
    v70 = [v69 type];

    if (v70 == 1)
    {
      v71 = 0x8000000242428DB0;
    }

    else if (v70 == 2)
    {
      v71 = 0x8000000242428D90;
    }

    else
    {
      v71 = 0xE000000000000000;
    }

    v72 = swift_allocObject();
    swift_weakInit();
    v73 = swift_allocObject();
    v73[2] = v72;
    v73[3] = a2;
    v73[4] = a1;

    v161 = a2;
    v74 = a1;
    v162 = v71;
    NotificationModel.TrailingButtonConfiguration.init(symbolName:handler:)();
    v212 = v74;
    v75 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.selectableNotificationEntries.getter();
    v76 = [v75 selectableNotificationEntrys];

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectableNotificationEntry);
    v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v168 = v77;
    if (v77 >> 62)
    {
      goto LABEL_71;
    }

    v79 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
    v80 = v207;
    v81 = v208;
    v82 = v205;
    v83 = v206;
    v84 = v213;
    v201 = v14;
    if (v79)
    {
      v85 = 0;
      v198 = v168 & 0xFFFFFFFFFFFFFF8;
      v199 = v168 & 0xC000000000000001;
      v193 = v168 + 32;
      v196 = (v186 + 56);
      v195 = (v186 + 48);
      v194 = (v186 + 32);
      v200 = MEMORY[0x277D84F90];
      *&v78 = 136315394;
      v178 = v78;
      v197 = v79;
      while (1)
      {
        if (v199)
        {
          v86 = MEMORY[0x245D0D9A0](v85, v168);
        }

        else
        {
          if (v85 >= *(v198 + 16))
          {
            goto LABEL_70;
          }

          v86 = *(v193 + 8 * v85);
        }

        v87 = v86;
        v88 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.getter();
        if (v85 == 256)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v79 = __CocoaSet.count.getter();
          goto LABEL_27;
        }

        v214 = v85 + 1;
        v89 = *(v88 + 16);
        v90 = (v88 + 32);
        do
        {
          v91 = v89;
          if (v89-- == 0)
          {

            v98 = [v87 offUserVisibleLabel];
            if (v98)
            {
              v99 = v98;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v97 = v100;
            }

            else
            {
              v97 = 0;
            }

            v101 = [v87 offSymbolName];
            if (!v101)
            {
              v103 = 0;
              v104 = 0;
              v102 = &selRef_offSymbolColor;
              goto LABEL_52;
            }

            v102 = &selRef_offSymbolColor;
            goto LABEL_50;
          }

          v93 = *v90++;
        }

        while (v93 != v85);

        v94 = [v87 onUserVisibleLabel];
        if (v94)
        {
          v95 = v94;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v96;
        }

        else
        {
          v97 = 0;
        }

        v101 = [v87 onSymbolName];
        if (v101)
        {
          v102 = &selRef_onSymbolColor;
LABEL_50:
          v105 = v101;
          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v106;

          goto LABEL_52;
        }

        v103 = 0;
        v104 = 0;
        v102 = &selRef_onSymbolColor;
LABEL_52:
        v107 = [v87 *v102];
        if (v97)
        {
          v211 = v91 != 0;
          v108 = v188;
          static NotificationModel.getSymbol(symbolName:symbolColor:)(v103, v104, v107, v188);

          v109 = [v87 disabled];
          v210 = v97;
          outlined init with copy of NotificationModel.Symbol?(v108, v187, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
          v110 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v111 = swift_allocObject();
          *(v111 + 16) = v110;
          *(v111 + 24) = v85;
          v112 = v192;
          *(v111 + 32) = v190;
          *(v111 + 40) = v112;
          v113 = v191;
          *(v111 + 48) = v189;
          *(v111 + 56) = v113;
          *(v111 + 64) = v109;

          v114 = v204;
          NotificationModel.FancyModel.ActionConfiguration.init(id:symbol:title:pressed:highlighted:disabled:handler:)();
          v115 = v108;
          v116 = v114;
          outlined destroy of RequestTemporaryContentModel?(v115, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);

          v117 = v203;
          (*v196)(v114, 0, 1, v203);

          v118 = (*v195)(v114, 1, v117);
          v14 = v201;
          v80 = v207;
          v81 = v208;
          v84 = v213;
          if (v118 != 1)
          {
            goto LABEL_58;
          }
        }

        else
        {

          v119 = static os_log_type_t.error.getter();
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
          v120 = static OS_os_log.default.getter();
          v121 = os_log_type_enabled(v120, v119);
          v80 = v207;
          if (v121)
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v215 = v123;
            *v122 = v178;
            *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v192, &v215);
            *(v122 + 12) = 2080;
            *(v122 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v191, &v215);
            _os_log_impl(&dword_24234D000, v120, v119, "Notification (%s:%s) - User action does not have text", v122, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245D0E5A0](v123, -1, -1);
            MEMORY[0x245D0E5A0](v122, -1, -1);
          }

          v14 = v201;
          v81 = v208;
          v84 = v213;
          v117 = v203;
          v116 = v204;
          (*v196)(v204, 1, 1, v203);

          if ((*v195)(v116, 1, v117) != 1)
          {
LABEL_58:
            v124 = *v194;
            v125 = v185;
            (*v194)(v185, v116, v117);
            v124(v202, v125, v117);
            v126 = v200;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v83 = v206;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1, v126);
            }

            v129 = v126[2];
            v128 = v126[3];
            if (v129 >= v128 >> 1)
            {
              v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v128 > 1, v129 + 1, 1, v126);
            }

            v126[2] = v129 + 1;
            v130 = (*(v186 + 80) + 32) & ~*(v186 + 80);
            v200 = v126;
            v124(v126 + v130 + *(v186 + 72) * v129, v202, v117);
            v84 = v213;
            goto LABEL_30;
          }
        }

        outlined destroy of RequestTemporaryContentModel?(v116, &_s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationVSgMd);
        v83 = v206;
LABEL_30:
        v85 = v214;
        v82 = v205;
        v67 = v209;
        if (v214 == v197)
        {
          goto LABEL_65;
        }
      }
    }

    v200 = MEMORY[0x277D84F90];
LABEL_65:

    (*(v182 + 16))(v173, v84, v183);
    v131 = v174;
    outlined init with copy of NotificationModel.Symbol?(v179, v188, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
    v132 = v169;
    (*(v131 + 16))(v169, v184, v67);
    (*(v131 + 56))(v132, 0, 1, v67);
    v133 = swift_allocObject();
    v134 = v161;
    *(v133 + 16) = v161;
    v135 = v134;
    NotificationModel.FancyModel.init(text:symbol:trailingButtonConfiguration:actionButtons:dismissalHandler:)();
    (*(v80 + 16))(v14, v83, v81);
    v136 = v171;
    v137 = v175;
    (*(v171 + 104))(v14, *MEMORY[0x277CF8BE0], v175);
    (*(v136 + 16))(v170, v14, v137);
    v138 = v176;
    NotificationModel.init(id:style:)();
    LODWORD(v131) = static os_log_type_t.info.getter();
    v139 = v181;
    (*(v180 + 16))(v82, v138, v181);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v140 = v82;
    v141 = static OS_os_log.default.getter();
    LODWORD(v214) = v131;
    if (os_log_type_enabled(v141, v131))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v215 = v143;
      *v142 = 136315650;
      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v192, &v215);

      *(v142 + 4) = v144;
      *(v142 + 12) = 2080;
      v145 = CAFMultiSelectRemoteNotificationObservable.observed.getter();
      v146 = v165;
      CAFService.id.getter();

      lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v147 = v167;
      v148 = dispatch thunk of CustomStringConvertible.description.getter();
      v150 = v149;
      (*(v166 + 8))(v146, v147);
      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, &v215);

      *(v142 + 14) = v151;
      *(v142 + 22) = 2080;
      v152 = NotificationModel.description.getter();
      v154 = v153;
      v155 = v180;
      (*(v180 + 8))(v140, v139);
      v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, &v215);

      *(v142 + 24) = v156;
      _os_log_impl(&dword_24234D000, v141, v214, "Converted notification (displayID = (%s), message.id = %s) to %s", v142, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v143, -1, -1);
      MEMORY[0x245D0E5A0](v142, -1, -1);

      (*(v136 + 8))(v201, v175);
      (*(v207 + 8))(v206, v208);
      (*(v174 + 8))(v184, v209);
      outlined destroy of RequestTemporaryContentModel?(v179, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
      (*(v182 + 8))(v213, v183);
      v157 = v177;
      v158 = v155;
    }

    else
    {

      v159 = v180;
      (*(v180 + 8))(v140, v139);
      (*(v136 + 8))(v201, v175);
      (*(v80 + 8))(v83, v81);
      (*(v174 + 8))(v184, v209);
      outlined destroy of RequestTemporaryContentModel?(v179, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
      (*(v182 + 8))(v84, v183);
      v157 = v177;
      v158 = v159;
    }

    (*(v158 + 32))(v157, v176, v139);
    return (*(v158 + 56))(v157, 0, 1, v139);
  }
}

uint64_t closure #1 in CAFMultiSelectNotificationSource.convert(message:requestContent:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    dispatch thunk of CAFRequestTemporaryContentObservable.on.setter();
    dispatch thunk of CAFMultiSelectRemoteNotificationObservable.trailingButtonState.setter();
    v2 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.trailingButton.getter();
    v3 = [v2 contentURLAction];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v7 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      (*(v1 + 40))(v4, v6);
    }
  }

  return result;
}

void closure #1 in closure #2 in CAFMultiSelectNotificationSource.convert(message:requestContent:)(char a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, unint64_t a6, char a7)
{
  LOBYTE(v15) = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2 > 0xFF)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, a5);
LABEL_19:
        v33 = *(a5 + 2);
        v32 = *(a5 + 3);
        if (v33 >= v32 >> 1)
        {
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, a5);
        }

        *(a5 + 2) = v33 + 1;
        a5[v33 + 32] = v15;
LABEL_36:
        static os_log_type_t.info.getter();
        v36 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        dispatch thunk of CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.setter();
        goto LABEL_37;
      }

      v8 = Strong;
      v41 = a5;
      v42 = a6;
      v15 = a2;
      v17 = static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v18 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = v8;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v43 = v21;
        *v20 = 136315650;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v43);
        *(v20 + 12) = 2080;
        *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v43);
        *(v20 + 22) = 256;
        *(v20 + 24) = v15;
        _os_log_impl(&dword_24234D000, v18, v17, "Notification (%s:%s) button %hhu pressed", v20, 0x19u);
        swift_arrayDestroy();
        MEMORY[0x245D0E5A0](v21, -1, -1);
        v22 = v20;
        v8 = v19;
        MEMORY[0x245D0E5A0](v22, -1, -1);
      }

      if (a7)
      {
        v23 = static os_log_type_t.info.getter();
        v24 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v24, v23))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v43 = v26;
          *v25 = 136315650;
          *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v43);
          *(v25 + 12) = 2080;
          *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v43);
          *(v25 + 22) = 256;
          *(v25 + 24) = v15;
          _os_log_impl(&dword_24234D000, v24, v23, "Notification (%s:%s) button %hhu is disabled.", v25, 0x19u);
          swift_arrayDestroy();
          MEMORY[0x245D0E5A0](v26, -1, -1);
          MEMORY[0x245D0E5A0](v25, -1, -1);
        }

LABEL_37:
        return;
      }

      v27 = v8;
      v28 = dispatch thunk of CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.getter();
      a5 = v28;
      v29 = 0;
      v7 = *(v28 + 16);
      do
      {
        if (v7 == v29)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_19;
        }

        v30 = v28 + v29++;
      }

      while (*(v30 + 32) != v15);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*(v28 + i + 32) == v15)
          {
            v27 = (i + 1);
            if (__OFADD__(i, 1))
            {
              goto LABEL_55;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_24;
          }
        }
      }

      i = *(v28 + 16);
LABEL_28:
      v15 = i;
      if (!__OFADD__(v7, i - v7))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = a5;
        if (!isUniquelyReferenced_nonNull_native || i > *(a5 + 3) >> 1)
        {
          if (v7 <= i)
          {
            v35 = i;
          }

          else
          {
            v35 = v7;
          }

          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v35, 1, a5);
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(i, v7, 0);
        goto LABEL_36;
      }

      __break(1u);
LABEL_53:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        a5 = specialized _ArrayBuffer._consumeAndCreateNew()(a5);
LABEL_24:
        v7 = *(a5 + 2);
        if (v27 != v7)
        {
          break;
        }

        v7 = v27;
LABEL_26:
        if (v7 < i)
        {
          goto LABEL_53;
        }

        if ((i & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }
      }

      v37 = a5 + 32;
      v38 = &a5[i + 33];
      while (v27 < v7)
      {
        v40 = *v38;
        if (v40 != v15)
        {
          if (v27 != i)
          {
            if (i >= v7)
            {
              __break(1u);
              break;
            }

            v39 = v37[i];
            v37[i] = v40;
            *v38 = v39;
            v7 = *(a5 + 2);
          }

          ++i;
        }

        ++v27;
        ++v38;
        if (v27 == v7)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_50;
  }
}

uint64_t CAFMultiSelectNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFMultiSelectNotificationSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFMultiSelectNotificationSource()
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24235A27C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24235A318()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24235A350()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_24235A3AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of NotificationModel.Symbol?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of NotificationModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id CAFUIStackView.__allocating_init(views:axis:minWidth:)(unint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized CAFUIStackView.init(views:axis:minWidth:)(a1, a2, a3);

  return v8;
}

id CAFUIStackView.init(views:axis:minWidth:)(unint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized CAFUIStackView.init(views:axis:minWidth:)(a1, a2, a3);

  return v3;
}

id CAFUIStackView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *CAFUISwitchView.init(value:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_handler];
  *v5 = a2;
  *(v5 + 1) = a3;
  v6 = objc_allocWithZone(MEMORY[0x277CF9180]);

  v7 = [v6 init];
  *&v3[OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_uiSwitch] = v7;
  v26.receiver = v3;
  v26.super_class = type metadata accessor for CAFUISwitchView();
  v8 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = MEMORY[0x245D0D180](0x6977534955464143, 0xEF77656956686374);
  [v8 setAccessibilityIdentifier_];

  v10 = OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_uiSwitch;
  v11 = *&v8[OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_uiSwitch];
  v12 = MEMORY[0x245D0D180](0xD000000000000017, 0x8000000242429240);
  [v11 setAccessibilityIdentifier_];

  [*&v8[v10] setOn:a1 & 1 animated:0];
  v13 = *&v8[v10];
  [v13 addTarget:v8 action:sel_switchChangedWithSender_ forControlEvents:4096];

  [*&v8[v10] setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v8[v10];
  v15 = v8;
  [v15 addSubview_];
  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_242423B80;
  v18 = [v15 widthAnchor];
  v19 = [*&v8[v10] widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:2.0];

  *(v17 + 32) = v20;
  v21 = [v15 heightAnchor];

  v22 = [*&v8[v10] heightAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v17 + 40) = v23;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints_];

  return v15;
}

uint64_t CAFUIProgressView.Model.numSteps.getter()
{
  v1 = v0[5];
  if (v1 <= 0.0)
  {
    goto LABEL_9;
  }

  v2 = (v0[4] - v0[3]) / v1;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CAFUIProgressView.Model.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

char *CAFUIProgressView.init(model:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v63 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA18PassthroughSubjectCySds5NeverOGSo9NSRunLoopCGMd);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = &v1[OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_cancellable];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_model] = a1;
  v1[OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_isEnabled] = 1;
  v11 = objc_allocWithZone(MEMORY[0x277D75A68]);

  v12 = [v11 initWithFrame_];
  *&v1[OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_stackView] = v12;
  v13 = type metadata accessor for CAFUIProgressView();
  v69.receiver = v1;
  v69.super_class = v13;
  v14 = objc_msgSendSuper2(&v69, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = MEMORY[0x245D0D180](0xD000000000000011, 0x8000000242423C20);
  [v14 setAccessibilityIdentifier_];

  v16 = OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_stackView;
  [*(v14 + OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_stackView) setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [*(v14 + v16) layer];
  [v17 setCornerRadius_];

  v18 = [*(v14 + v16) layer];
  [v18 setMasksToBounds_];

  [*(v14 + v16) setAxis_];
  [*(v14 + v16) setDistribution_];
  [*(v14 + v16) setSpacing_];
  v65 = a1;
  v19 = CAFUIProgressView.Model.numSteps.getter();
  if (v19 < 0)
  {
    goto LABEL_18;
  }

  v20 = v19;
  v63 = v9;
  v64 = v7;
  for (i = v6; v20; --v20)
  {
    v21 = *(v14 + v16);
    v22 = objc_allocWithZone(MEMORY[0x277D75D18]);
    v23 = v21;
    v24 = [v22 init];
    [v23 addArrangedSubview_];
  }

  v68[0] = *(v65 + 48);
  v25 = objc_opt_self();

  v26 = [v25 mainRunLoop];
  v67 = v26;
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySds5NeverOGMd);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Double, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCySds5NeverOGMd);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v28 = v63;
  Publisher.receive<A>(on:options:)();
  outlined destroy of RequestTemporaryContentModel?(v5, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<PassthroughSubject<Double, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA18PassthroughSubjectCySds5NeverOGSo9NSRunLoopCGMd);
  v29 = i;
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v28, v29);
  v68[3] = type metadata accessor for AnyCancellable();
  v68[4] = MEMORY[0x277CBCDA0];
  v68[0] = v30;
  v31 = OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_cancellable;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v68, v14 + v31);
  swift_endAccess();
  v32 = *(v14 + v16);
  v33 = v14;
  [v33 addSubview_];
  v34 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_242423B90;
  v36 = [*(v14 + v16) heightAnchor];
  v37 = [v36 constraintEqualToConstant_];

  *(v35 + 32) = v37;
  v38 = [*(v14 + v16) centerYAnchor];
  v39 = [v33 centerYAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v35 + 40) = v40;
  v41 = [*(v14 + v16) leadingAnchor];
  v42 = [v33 leadingAnchor];

  v43 = [v41 constraintEqualToAnchor:v42 constant:16.0];
  *(v35 + 48) = v43;
  v44 = [*(v14 + v16) trailingAnchor];
  v45 = [v33 trailingAnchor];
  i = v33;

  v46 = [v44 constraintEqualToAnchor:v45 constant:-16.0];
  *(v35 + 56) = v46;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints_];

  v48 = [*(v14 + v16) arrangedSubviews];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    goto LABEL_19;
  }

  for (j = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v50 = 0;
    v51 = OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_model;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x245D0D9A0](v50, v14);
      }

      else
      {
        if (v50 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v52 = *(v14 + 8 * v50 + 32);
      }

      v53 = v52;
      v54 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      v55 = *&i[v51];
      v56 = v55[2];
      v57 = v55[5] * v50 + v55[3];
      v58 = objc_opt_self();
      v59 = &selRef__carSystemPrimaryColor;
      if (v57 >= v56)
      {
        v59 = &selRef_systemGrayColor;
      }

      v60 = [v58 *v59];
      [v53 setBackgroundColor_];

      ++v50;
      if (v54 == j)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v61 = i;

  return v61;
}

uint64_t closure #1 in CAFUIProgressView.init(model:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_stackView) arrangedSubviews];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v5 = 0;
      v6 = OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_model;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x245D0D9A0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = *&v1[v6];
        v11 = v10[2];
        v12 = v10[5] * v5 + v10[3];
        v13 = objc_opt_self();
        v14 = &selRef__carSystemPrimaryColor;
        if (v12 >= v11)
        {
          v14 = &selRef_systemGrayColor;
        }

        v15 = [v13 *v14];
        [v8 setBackgroundColor_];

        ++v5;
        if (v9 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return result;
}

void CAFUINumericInputView.init(configuration:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v344 = &v342 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v342 - v7;
  MEMORY[0x28223BE20](v6);
  v345 = &v342 - v9;
  v10 = type metadata accessor for UIButton.Configuration();
  v355 = *(v10 - 8);
  v356 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v351 = &v342 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v357 = &v342 - v13;
  v14 = a1[5];
  v371 = a1[4];
  v372 = v14;
  v373 = a1[6];
  v374 = *(a1 + 14);
  v15 = a1[1];
  v367 = *a1;
  v368 = v15;
  v16 = a1[3];
  v369 = a1[2];
  v370 = v16;
  v17 = &v1[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_cancellableTimer];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = objc_opt_self();
  v20 = [v19 clearColor];
  [v18 setBackgroundColor_];

  *&v1[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_buttonsContainer] = v18;
  v352 = v1;
  v21 = &v1[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config];
  v22 = a1[5];
  *(v21 + 4) = a1[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = a1[6];
  *(v21 + 14) = *(a1 + 14);
  v23 = a1[1];
  *v21 = *a1;
  *(v21 + 1) = v23;
  v24 = a1[3];
  *(v21 + 2) = a1[2];
  *(v21 + 3) = v24;
  v358 = v19;
  v348 = v18;
  v346 = v8;
  LODWORD(v353) = v369;
  if (v369 == 1)
  {
    type metadata accessor for CAFUINumericInputView.CAFUINonFocusableSliderStyle();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIAction);
    v25 = v18;
    outlined init with copy of CAFUINumericConfiguration(&v367, &v361);
    v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:v26 primaryAction:{0.0, 0.0, 0.0, 0.0}];

    v28 = v27;
    v29 = MEMORY[0x245D0D180](0xD00000000000001BLL, 0x8000000242429310);
    [v28 setAccessibilityIdentifier_];

    v30 = *(&v367 + 1);
    v31 = v28;
    *&v32 = v30;
    [v31 setMinimumValue_];
    HIDWORD(v33) = DWORD1(v368);
    *&v33 = *&v368;
    [v31 setMaximumValue_];
    v34 = [v19 _carSystemPrimaryColor];
    [v31 setMinimumTrackTintColor_];

    v35 = [v19 _carSystemTertiaryColor];
    [v31 setMaximumTrackTintColor_];

    v36 = v31;
    v37 = [v19 whiteColor];
    v38 = [v37 CGColor];

    v39 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
    [v36 setTintColor_];

    HIDWORD(v40) = DWORD1(v367);
    *&v40 = *&v367;
    [v36 setValue_];
    [v36 setTranslatesAutoresizingMaskIntoConstraints_];
    v41 = [v19 clearColor];
    [v36 setBackgroundColor_];

    [v36 setEnabled_];
LABEL_23:
    v51 = 0;
    goto LABEL_24;
  }

  v42 = *(&v372 + 1);
  if (!*(&v372 + 1))
  {
    goto LABEL_9;
  }

  v43 = v372;
  v44 = HIBYTE(*(&v372 + 1)) & 0xFLL;
  if ((*(&v372 + 1) & 0x2000000000000000) == 0)
  {
    v44 = v372 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {
LABEL_9:
    if (BYTE1(v369) == 1)
    {
      type metadata accessor for CAFUIProgressView.Model();
      v61 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySds5NeverOGMd);
      swift_allocObject();
      v62 = v18;
      v354 = v367;
      v350 = v368;
      outlined init with copy of CAFUINumericConfiguration(&v367, &v361);
      *(v61 + 48) = PassthroughSubject.init()();
      v63 = v350;
      *(v61 + 16) = v354;
      *(v61 + 32) = v63;
      v64 = objc_allocWithZone(type metadata accessor for CAFUIProgressView());

      *&v350 = v61;
      v66 = CAFUIProgressView.init(model:)(v65);
      [v66 setTranslatesAutoresizingMaskIntoConstraints_];
      v67 = [v19 secondarySystemFillColor];
      [v66 setBackgroundColor_];

      v66[OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_isEnabled] = v21[96];
      *&v354 = v66;
      v68 = [*&v66[OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_stackView] arrangedSubviews];
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
      v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v69 >> 62)
      {
        goto LABEL_58;
      }

      for (i = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v71 = 0;
        v72 = OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_model;
        while (1)
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v73 = MEMORY[0x245D0D9A0](v71, v69);
          }

          else
          {
            if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v73 = *(v69 + 8 * v71 + 32);
          }

          v74 = v73;
          v75 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            break;
          }

          v76 = *(v354 + v72);
          v77 = v76[2];
          v78 = v76[5] * v71 + v76[3];
          v79 = &selRef__carSystemPrimaryColor;
          if (v78 >= v77)
          {
            v79 = &selRef_systemGrayColor;
          }

          v80 = [v358 *v79];
          [v74 setBackgroundColor_];

          ++v71;
          if (v75 == i)
          {
            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        ;
      }

LABEL_59:

      v51 = v354;

      v36 = 0;
      goto LABEL_24;
    }

    v81 = v18;
    outlined init with copy of CAFUINumericConfiguration(&v367, &v361);
    v36 = 0;
    goto LABEL_23;
  }

  v45 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v46 = v18;
  outlined init with copy of CAFUINumericConfiguration(&v367, &v361);

  v47 = [v45 init];
  v48 = MEMORY[0x245D0D180](v43, v42);

  [v47 setText_];

  v49 = v47;
  v50 = MEMORY[0x245D0D180](0xD000000000000023, 0x80000002424292E0);
  [v49 setAccessibilityIdentifier_];

  v51 = v49;
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = *MEMORY[0x277D76920];
  v53 = *MEMORY[0x277D74418];
  v54 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  [v54 pointSize];
  v56 = v55;

  v57 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v58 = [objc_opt_self() systemFontOfSize:v56 weight:v53];
  v59 = [v57 scaledFontForFont_];

  [v51 setFont_];
  [v51 setEnabled_];
  if (BYTE1(v369) == 1)
  {
    v60 = [v19 secondarySystemFillColor];
    [v51 setBackgroundColor_];

    [v51 setTextAlignment_];
    v36 = 0;
LABEL_24:
    v82 = 0;
    goto LABEL_25;
  }

  v279 = [v51 effectiveUserInterfaceLayoutDirection] == 0;

  [v51 setTextAlignment_];
  v36 = 0;
  v82 = v51;
  v51 = 0;
LABEL_25:
  v83 = v355;
  v84 = v352;
  *&v352[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_slider] = v36;
  *&v84[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_progressView] = v51;
  *&v84[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_userVisibleValueLabel] = v82;
  v85 = swift_allocObject();
  *(v85 + 16) = v353;
  v86 = [objc_opt_self() configurationWithWeight_];
  static UIButton.Configuration.filled()();
  UIButton.Configuration.imagePlacement.setter();
  v87 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v87(&v361, 0);
  v88 = v370;
  v353 = v86;
  if (v370 && (v89 = *(&v369 + 1), , v90 = MEMORY[0x245D0D180](v89, v88), , v91 = CAFUIImageForSymbolNameWithConfiguration(v90, v86), v90, v91) || (v92 = v86, v93 = MEMORY[0x245D0D180](0x73756E696DLL, 0xE500000000000000), v91 = [objc_opt_self() systemImageNamed:v93 withConfiguration:v92], v93, v92, v91))
  {
    v94 = [v91 imageWithRenderingMode_];

    v95 = v357;
    UIButton.Configuration.image.setter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIButton);
    v96 = *(v83 + 16);
    v96(v351, v95, v356);
    v97 = UIButton.init(configuration:primaryAction:)();
    v98 = MEMORY[0x245D0D180](0xD000000000000024, 0x8000000242429260);
    [v97 setAccessibilityIdentifier_];

    v99 = v97;
    [v99 setTranslatesAutoresizingMaskIntoConstraints_];
    v365 = partial apply for closure #2 in CAFUINumericInputView.init(configuration:);
    v366 = v85;
    v361 = MEMORY[0x277D85DD0];
    v362 = 1107296256;
    v363 = thunk for @escaping @callee_guaranteed (@guaranteed UIButton) -> ();
    v364 = &block_descriptor_63;
    v100 = _Block_copy(&v361);

    [v99 setConfigurationUpdateHandler_];
    _Block_release(v100);
    v101 = v371;
    *&v350 = v85;
    if (v371)
    {
      v102 = *(&v370 + 1);

      v103 = MEMORY[0x245D0D180](v102, v101);

      v104 = CAFUIImageForSymbolNameWithConfiguration(v103, v353);

      if (v104)
      {
LABEL_32:
        v107 = [v104 imageWithRenderingMode_];

        v108 = v357;
        UIButton.Configuration.image.setter();
        v96(v351, v108, v356);
        v109 = UIButton.init(configuration:primaryAction:)();
        v110 = MEMORY[0x245D0D180](0xD000000000000024, 0x80000002424292B0);
        [v109 setAccessibilityIdentifier_];

        v111 = v109;
        [v111 setTranslatesAutoresizingMaskIntoConstraints_];
        v365 = partial apply for closure #2 in CAFUINumericInputView.init(configuration:);
        v366 = v85;
        v361 = MEMORY[0x277D85DD0];
        v362 = 1107296256;
        v363 = thunk for @escaping @callee_guaranteed (@guaranteed UIButton) -> ();
        v364 = &block_descriptor_66;
        v112 = _Block_copy(&v361);

        [v111 &selRef_volumes + 6];
        _Block_release(v112);
        v113 = v352;
        *&v352[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_decrementButton] = v99;
        *&v113[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_incrementButton] = v111;
        v114 = *(&v371 + 1);
        *&v113[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_ancillaryButton] = *(&v371 + 1);
        v115 = v114;
        v116 = v99;
        v117 = v111;
        outlined destroy of CAFUINumericConfiguration(&v367);
        v118 = type metadata accessor for CAFUINumericInputView();
        v360.receiver = v113;
        v360.super_class = v118;
        v119 = objc_msgSendSuper2(&v360, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        v120 = MEMORY[0x245D0D180](0xD000000000000015, 0x8000000242423C70);
        [v119 setAccessibilityIdentifier_];

        v121 = [v358 clearColor];
        [v119 setBackgroundColor_];

        v122 = OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_buttonsContainer;
        [*&v119[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_buttonsContainer] setClipsToBounds_];
        v123 = *&v119[v122];
        *&v354 = v116;
        [v123 addSubview_];
        [*&v119[v122] addSubview_];
        v124 = v119;
        v125 = *&v119[v122];
        v126 = v124;
        [v126 addSubview_];
        v127 = *&v126[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_slider];
        v351 = v117;
        v352 = v126;
        v349 = v122;
        if (v127)
        {
          v128 = v127;

          v129 = v119;
          v130 = *&v119[v122];
          v347 = v128;
          [v130 addSubview_];
          v131 = v126;
          v132 = *&v126[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_ancillaryButton];
          if (v132)
          {
            [v132 removeFromSuperview];
          }

          v358 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_242423BA0;
          v134 = v129;
          v135 = [*&v129[v122] topAnchor];
          v136 = v122;
          v137 = [v131 topAnchor];

          v138 = [v135 constraintEqualToAnchor_];
          *(v133 + 32) = v138;
          v139 = [*&v134[v136] bottomAnchor];
          v140 = [v131 &protocolRef_CAFSingleSelectImageSettingObserver + 5];

          v141 = [v139 0x278D4BF65];
          *(v133 + 40) = v141;
          v142 = [*&v134[v136] leadingAnchor];
          v143 = [v131 &selRef_integerSettingService_didUpdateMinimumSymbolName_ + 1];

          v144 = [v142 0x278D4BF65];
          *(v133 + 48) = v144;
          v145 = [*&v134[v136] trailingAnchor];
          v146 = [v131 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_ + 4];
          v147 = [v145 0x278D4BF65];

          *(v133 + 56) = v147;
          v148 = v354;
          v149 = [v354 widthAnchor];
          v150 = [v149 constraintEqualToConstant_];

          *(v133 + 64) = v150;
          v151 = [v148 topAnchor];
          v152 = [*&v134[v136] topAnchor];
          v153 = [v151 0x278D4BF65];

          *(v133 + 72) = v153;
          v154 = [v148 bottomAnchor];
          v155 = [*&v134[v136] bottomAnchor];
          v156 = [v154 0x278D4BF65];

          *(v133 + 80) = v156;
          v157 = [v148 leadingAnchor];
          v158 = [*&v134[v136] leadingAnchor];
          v159 = [v157 0x278D4BF65];

          *(v133 + 88) = v159;
          v160 = v347;
          v161 = [v347 centerYAnchor];

          v162 = [*&v134[v136] centerYAnchor];
          v163 = [v161 constraintEqualToAnchor:v162 constant:-1.0];

          *(v133 + 96) = v163;
          v164 = [v160 leadingAnchor];

          v165 = [v148 trailingAnchor];
          v166 = [v164 constraintEqualToAnchor:v165 constant:13.0];

          *(v133 + 104) = v166;
          v167 = [v160 trailingAnchor];

          v168 = v351;
          v169 = [v351 leadingAnchor];
          v170 = [v167 constraintEqualToAnchor:v169 constant:-13.0];

          *(v133 + 112) = v170;
          v171 = [v168 widthAnchor];
          v172 = [v171 constraintEqualToConstant_];

          *(v133 + 120) = v172;
          v173 = [v168 topAnchor];
          v174 = v349;
          v175 = [*&v134[v349] topAnchor];
          v176 = [v173 constraintEqualToAnchor_];

          *(v133 + 128) = v176;
          v177 = [v168 bottomAnchor];
          v178 = [*&v134[v174] bottomAnchor];
          v179 = [v177 constraintEqualToAnchor_];

          *(v133 + 136) = v179;
          v180 = [v168 trailingAnchor];

          v181 = *&v134[v174];
          v182 = v354;
          v183 = [v181 trailingAnchor];
          v184 = [v180 constraintEqualToAnchor_];

          *(v133 + 144) = v184;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v358 activateConstraints_];

          v186 = v352;
          [v160 addTarget:v352 action:sel_controlTouchDownWithSender_ forControlEvents:1];
          [v160 addTarget:v186 action:sel_controlTouchUpWithSender_ forControlEvents:64];
          [v160 addTarget:v186 action:sel_controlTouchCancelWithSender_forEvent_ forControlEvents:416];

          [v160 addTarget:v186 action:sel_sliderChangedWithSender_ forControlEvents:4096];
          v187 = v186;
          v188 = v186;
          goto LABEL_55;
        }

        [*&v119[v122] _setCornerRadius_];
        v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v189 = swift_allocObject();
        *(v189 + 16) = xmmword_242423BB0;
        v190 = [*&v119[v122] heightAnchor];
        v191 = [v190 constraintEqualToConstant_];

        *(v189 + 32) = v191;
        v192 = [*&v119[v122] topAnchor];
        v193 = [v126 &selRef_tableView_didHighlightRowAtIndexPath_];

        v194 = v122;
        v195 = [v192 constraintEqualToAnchor_];

        *(v189 + 40) = v195;
        v196 = [*&v119[v194] bottomAnchor];
        v197 = [v126 &protocolRef_CAFSingleSelectImageSettingObserver + 5];

        v198 = [v196 0x278D4BF65];
        *(v189 + 48) = v198;
        v199 = [*&v119[v194] trailingAnchor];
        v200 = [v126 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_ + 4];

        v201 = [v199 0x278D4BF65];
        *(v189 + 56) = v201;
        v202 = v354;
        v203 = [v354 widthAnchor];
        v204 = [v203 constraintEqualToConstant_];

        *(v189 + 64) = v204;
        v205 = [v202 topAnchor];
        v206 = [*&v119[v194] topAnchor];
        v207 = [v205 constraintEqualToAnchor_];

        *(v189 + 72) = v207;
        v208 = [v202 bottomAnchor];
        v209 = [*&v119[v194] bottomAnchor];
        v210 = [v208 constraintEqualToAnchor_];

        *(v189 + 80) = v210;
        v211 = [v202 leadingAnchor];
        v212 = [*&v119[v194] leadingAnchor];
        v213 = v351;
        v214 = [v211 0x278D4BF65];

        *(v189 + 88) = v214;
        v215 = [v213 widthAnchor];
        v216 = [v215 constraintEqualToConstant_];

        *(v189 + 96) = v216;
        v217 = [v213 topAnchor];
        v218 = [*&v119[v194] topAnchor];
        v219 = [v217 0x278D4BF65];

        *(v189 + 104) = v219;
        v220 = [v213 bottomAnchor];
        v221 = [*&v119[v194] bottomAnchor];
        v222 = [v220 0x278D4BF65];

        *(v189 + 112) = v222;
        v223 = [v213 trailingAnchor];
        v224 = [*&v119[v194] trailingAnchor];
        v225 = [v223 0x278D4BF65];

        *(v189 + 120) = v225;
        v359 = v189;
        v226 = *&v126[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_progressView];
        v343 = v119;
        if (v226)
        {
          v227 = *&v119[v194];
          v228 = v226;
          [v227 addSubview_];
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_242423BC0;
          v230 = [v228 widthAnchor];
          v231 = [v230 constraintEqualToConstant_];

          *(inited + 32) = v231;
          v232 = [v228 topAnchor];
          v233 = [*&v119[v194] topAnchor];
          v234 = v213;
          v235 = [v232 constraintEqualToAnchor_];

          *(inited + 40) = v235;
          v236 = [v228 bottomAnchor];
          v237 = [*&v119[v194] bottomAnchor];
          v238 = [v236 constraintEqualToAnchor_];

          *(inited + 48) = v238;
          v239 = v354;
          v240 = [v354 trailingAnchor];

          v241 = [v228 leadingAnchor];
          v242 = [v240 constraintEqualToAnchor:v241 constant:-1.0];

          *(inited + 56) = v242;
          v243 = [v234 leadingAnchor];

          v244 = v352;
          v245 = [v228 trailingAnchor];
          v246 = [v243 constraintEqualToAnchor:v245 constant:1.0];

          *(inited + 64) = v246;
          specialized Array.append<A>(contentsOf:)(inited);
        }

        else
        {
          v244 = v126;
          v247 = swift_initStackObject();
          *(v247 + 16) = xmmword_242423BD0;
          v248 = v354;
          v249 = [v354 trailingAnchor];

          v250 = [v213 leadingAnchor];
          v251 = [v249 constraintEqualToAnchor:v250 constant:-1.0];

          *(v247 + 32) = v251;
          specialized Array.append<A>(contentsOf:)(v247);
        }

        v252 = v355;
        v253 = *&v244[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_userVisibleValueLabel];
        if (v253)
        {
          v254 = v253;

          v255 = v254;
          [v244 addSubview_];
          v256 = swift_initStackObject();
          *(v256 + 16) = xmmword_242423B90;
          v257 = [v255 topAnchor];
          v258 = v343;
          v259 = v349;
          v260 = [*&v343[v349] topAnchor];
          v261 = [v257 constraintEqualToAnchor_];

          *(v256 + 32) = v261;
          v262 = [v255 bottomAnchor];

          v263 = [*&v258[v259] bottomAnchor];
          v264 = [v262 constraintEqualToAnchor_];

          *(v256 + 40) = v264;
          v265 = [v255 widthAnchor];

          v266 = [v265 constraintEqualToConstant_];
          *(v256 + 48) = v266;
          v267 = v255;
          v268 = [v255 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_ + 4];

          v269 = [*&v258[v259] leadingAnchor];
          v270 = [v268 constraintEqualToAnchor:v269 constant:-7.0];

          *(v256 + 56) = v270;
          v244 = v352;
          specialized Array.append<A>(contentsOf:)(v256);
          v271 = *&v244[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_ancillaryButton];
          if (v271)
          {
            v272 = v271;

            v344 = v255;
            v273 = v272;
            [v244 addSubview_];
            [v273 setClipsToBounds_];
            v274 = v345;
            UIButton.configuration.getter();
            if ((*(v355 + 48))(v274, 1, v356))
            {
              outlined init with copy of NotificationModel.Symbol?(v274, v346, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
              UIButton.configuration.setter();
              outlined destroy of RequestTemporaryContentModel?(v274, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
            }

            else
            {
              v285 = UIButton.Configuration.background.modify();
              UIBackgroundConfiguration.cornerRadius.setter();
              v285(&v361, 0);
              UIButton.configuration.setter();
            }

            v286 = swift_initStackObject();
            *(v286 + 16) = xmmword_242423BE0;
            v287 = [v273 widthAnchor];
            v288 = [v287 constraintEqualToConstant_];

            *(v286 + 32) = v288;
            v289 = [v273 heightAnchor];

            v290 = [v289 constraintEqualToConstant_];
            *(v286 + 40) = v290;
            v291 = [v273 topAnchor];

            v292 = v343;
            v293 = v349;
            v294 = [*&v343[v349] topAnchor];
            v295 = [v291 0x278D4BF65];

            *(v286 + 48) = v295;
            v296 = [v273 bottomAnchor];

            v297 = [*&v292[v293] bottomAnchor];
            v298 = [v296 0x278D4BF65];

            *(v286 + 56) = v298;
            v299 = [v273 trailingAnchor];

            v300 = [*&v292[v293] leadingAnchor];
            v301 = [v299 constraintEqualToAnchor:v300 constant:-8.0];

            *(v286 + 64) = v301;
            v244 = v352;
            v302 = [v352 leadingAnchor];
            v303 = [v273 leadingAnchor];

            v304 = [v302 0x278D4BF65];
            *(v286 + 72) = v304;
            specialized Array.append<A>(contentsOf:)(v286);

            goto LABEL_54;
          }

          v280 = swift_initStackObject();
          *(v280 + 16) = xmmword_242423BD0;
          v281 = [v244 leadingAnchor];
          v282 = [v255 leadingAnchor];

          v283 = [v281 constraintEqualToAnchor_];
          *(v280 + 32) = v283;
          v284 = v280;
        }

        else
        {

          v275 = *&v244[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_ancillaryButton];
          v276 = v349;
          if (!v275)
          {

            v305 = swift_initStackObject();
            *(v305 + 16) = xmmword_242423BD0;
            v306 = [v244 leadingAnchor];
            v307 = [*&v343[v276] leadingAnchor];
            v308 = [v306 constraintEqualToAnchor_];

            *(v305 + 32) = v308;
            specialized Array.append<A>(contentsOf:)(v305);
LABEL_54:
            v329 = v244;
            v330 = [v329 layer];
            [v330 setShadowOffset_];

            v331 = [v329 layer];
            v332 = [v358 blackColor];
            v333 = [v332 CGColor];

            [v331 setShadowColor_];
            v334 = [v329 layer];
            [v334 setShadowRadius_];

            v335 = [v329 layer];
            LODWORD(v336) = 1036831949;
            [v335 setShadowOpacity_];

            v337 = [v329 layer];
            [v337 setMasksToBounds_];

            v338 = objc_opt_self();
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
            v339 = Array._bridgeToObjectiveC()().super.isa;

            [v338 activateConstraints_];

            v187 = v244;
            v168 = v351;
            v182 = v354;
LABEL_55:
            v340 = v355;
            v341 = v187;
            [v182 addTarget:v341 action:sel_controlTouchDownWithSender_ forControlEvents:1];
            [v168 addTarget:v341 action:sel_controlTouchDownWithSender_ forControlEvents:1];
            [v182 addTarget:v341 action:sel_controlTouchUpWithSender_ forControlEvents:64];
            [v168 addTarget:v341 action:sel_controlTouchUpWithSender_ forControlEvents:64];
            [v182 addTarget:v341 action:sel_controlTouchCancelWithSender_forEvent_ forControlEvents:416];

            [v168 addTarget:v341 action:sel_controlTouchCancelWithSender_forEvent_ forControlEvents:416];
            CAFUINumericInputView.updateButtons()();

            (*(v340 + 8))(v357, v356);
            return;
          }

          v277 = v275;

          v267 = v277;
          [v244 addSubview_];
          [v267 setClipsToBounds_];
          v278 = v344;
          UIButton.configuration.getter();
          if ((*(v252 + 48))(v278, 1, v356))
          {
            outlined init with copy of NotificationModel.Symbol?(v278, v346, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
            UIButton.configuration.setter();
            outlined destroy of RequestTemporaryContentModel?(v278, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
          }

          else
          {
            v309 = UIButton.Configuration.background.modify();
            UIBackgroundConfiguration.cornerRadius.setter();
            v309(&v361, 0);
            UIButton.configuration.setter();
          }

          v310 = swift_initStackObject();
          *(v310 + 16) = xmmword_242423BE0;
          v311 = [v267 widthAnchor];
          v312 = [v311 constraintEqualToConstant_];

          *(v310 + 32) = v312;
          v313 = [v267 heightAnchor];

          v314 = [v313 constraintEqualToConstant_];
          *(v310 + 40) = v314;
          v315 = [v267 topAnchor];

          v316 = v343;
          v317 = v349;
          v318 = [*&v343[v349] topAnchor];
          v319 = [v315 constraintEqualToAnchor_];

          *(v310 + 48) = v319;
          v320 = [v267 bottomAnchor];

          v321 = [*&v316[v317] bottomAnchor];
          v322 = [v320 constraintEqualToAnchor_];

          *(v310 + 56) = v322;
          v323 = [v267 trailingAnchor];

          v324 = [*&v316[v317] leadingAnchor];
          v325 = [v323 constraintEqualToAnchor:v324 constant:-8.0];

          *(v310 + 64) = v325;
          v244 = v352;
          v326 = [v352 leadingAnchor];
          v327 = [v267 leadingAnchor];

          v328 = [v326 constraintEqualToAnchor_];
          *(v310 + 72) = v328;
          v284 = v310;
        }

        specialized Array.append<A>(contentsOf:)(v284);

        goto LABEL_54;
      }
    }

    v105 = v353;
    v106 = MEMORY[0x245D0D180](1937075312, 0xE400000000000000);
    v104 = [objc_opt_self() systemImageNamed:v106 withConfiguration:v105];

    if (v104)
    {
      v85 = v350;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #2 in CAFUINumericInputView.init(configuration:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIButton.configuration.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of RequestTemporaryContentModel?(v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  (*(v11 + 32))(v13, v9, v10);
  if ([a1 isEnabled])
  {
    if ([a1 isEnabled])
    {
      if (([a1 isSelected] & 1) != 0 || (objc_msgSend(a1, sel_isHighlighted) & 1) != 0 || objc_msgSend(a1, sel_isFocused))
      {
        v15 = objc_opt_self();
        v16 = [v15 _carSystemFocusLabelColor];
        UIButton.Configuration.baseForegroundColor.setter();
        v17 = &selRef__carSystemFocusColor;
      }

      else
      {
        v15 = objc_opt_self();
        v20 = [v15 _carSystemPrimaryColor];
        UIButton.Configuration.baseForegroundColor.setter();
        v17 = &selRef_secondarySystemFillColor;
        if (a2)
        {
          v17 = &selRef_clearColor;
        }
      }
    }

    else
    {
      v15 = objc_opt_self();
      v18 = [v15 secondaryLabelColor];
      UIButton.Configuration.baseForegroundColor.setter();
      if (a2)
      {
        if ([v15 tableCellPlainBackgroundColor])
        {
LABEL_14:
          UIButton.Configuration.baseBackgroundColor.setter();
          (*(v11 + 16))(v7, v13, v10);
          (*(v11 + 56))(v7, 0, 1, v10);
          UIButton.configuration.setter();
          return (*(v11 + 8))(v13, v10);
        }

        __break(1u);
      }

      v17 = &selRef_secondarySystemFillColor;
    }

    v19 = [v15 *v17];
    goto LABEL_14;
  }

  return (*(v11 + 8))(v13, v10);
}

void CAFUINumericInputView.update(config:)(__int128 *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v26 = a1[5];
  v4 = v26;
  v27 = v3;
  v5 = a1[1];
  v25[0] = *a1;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v25[1] = v5;
  v25[2] = v8;
  v10 = a1[2];
  v11 = a1[4];
  v25[3] = a1[3];
  v25[4] = v11;
  v12 = v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config;
  v13 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 48);
  v29[2] = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 32);
  v29[3] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 16);
  v29[0] = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config);
  v29[1] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 96);
  v29[5] = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 80);
  v29[6] = v15;
  v29[4] = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 64);
  *(v12 + 32) = v10;
  *(v12 + 48) = v9;
  v28 = *(a1 + 14);
  v30 = *(v12 + 112);
  *v12 = v6;
  *(v12 + 16) = v7;
  v16 = a1[6];
  *(v12 + 112) = *(a1 + 14);
  *(v12 + 80) = v4;
  *(v12 + 96) = v16;
  *(v12 + 64) = v2;
  outlined init with copy of CAFUINumericConfiguration(v25, v24);
  outlined destroy of CAFUINumericConfiguration(v29);
  CAFUINumericInputView.updateButtons()();
  v17 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    v18 = v26;
    v19 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_progressView);
    if (v19 && (objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
    {
      v21 = v20;
    }

    else
    {
      v19 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_userVisibleValueLabel);
      if (!v19)
      {
        return;
      }

      v21 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_userVisibleValueLabel);
    }

    v22 = v19;
    v23 = MEMORY[0x245D0D180](v18, v17);
    [v21 setText_];
  }
}

id CAFUINumericInputView.updateButtons()()
{
  v1 = v0;
  specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000018, 0x8000000242429190, 0x7542657461647075, 0xEF2928736E6F7474, 523);
  v2 = *(v0 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_decrementButton);
  v3 = v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config;
  if (*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 96) == 1 && *(v3 + 8) < *v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isSelected];
  }

  [v2 setEnabled_];
  v6 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_incrementButton);
  if (*(v3 + 96) == 1 && (v5 = *v3, *v3 < *(v3 + 16)))
  {
    v7 = 1;
  }

  else
  {
    v7 = [*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_incrementButton) isSelected];
  }

  [v6 setEnabled_];
  v8 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_progressView);
  if (v8)
  {
    type metadata accessor for CAFUIProgressView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      *(*(v9 + OBJC_IVAR____TtC5CAFUI17CAFUIProgressView_model) + 16) = *v3;
      v10 = v8;

      PassthroughSubject.send(_:)();
    }
  }

  result = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_slider);
  if (result)
  {
    v12 = *v3;
    *&v12 = *v3;
    return [result setValue_];
  }

  return result;
}

void CAFUINumericInputView.controlTouchDown(sender:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4 + 40;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_cancellableTimer;
    swift_beginAccess();
    outlined init with copy of NotificationModel.Symbol?(v1 + v8, v22, &_s7Combine11Cancellable_pSgMd);
    if (v23)
    {
      outlined destroy of RequestTemporaryContentModel?(v22, &_s7Combine11Cancellable_pSgMd);
    }

    else
    {
      v10 = a1;
      outlined destroy of RequestTemporaryContentModel?(v22, &_s7Combine11Cancellable_pSgMd);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSTimer);
      v11 = [objc_opt_self() mainRunLoop];
      v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      v13 = v1;
      v14 = static NSTimer.publish(every:tolerance:on:in:options:)();

      outlined destroy of RequestTemporaryContentModel?(v5, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
      v22[0] = v14;
      type metadata accessor for NSTimer.TimerPublisher();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0]);
      v15 = ConnectablePublisher.autoconnect()();

      v22[0] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
      lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
      v16 = Publisher.eraseToAnyPublisher()();

      v22[0] = v16;
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v7;
      v19 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4DateVs5NeverOGMd);
      lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Date, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4DateVs5NeverOGMd);
      v20 = Publisher<>.sink(receiveValue:)();

      v23 = type metadata accessor for AnyCancellable();
      v24 = MEMORY[0x277CBCDA0];
      v22[0] = v20;
      swift_beginAccess();
      outlined assign with take of Cancellable?(v22, v13 + v8);
      swift_endAccess();
      [v7 setSelected_];
    }
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {

      [v9 setSelected_];
    }
  }
}

uint64_t closure #1 in CAFUINumericInputView.controlTouchDown(sender:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    CAFUINumericInputView.buttonValueChanged(sender:)(a3);
    v6 = *&v5[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 104];
    v7 = *&v5[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config];

    v6(v8, v7);
  }

  return result;
}

uint64_t CAFUINumericInputView.stopTrackingControl(sender:)(void *a1)
{
  v2 = v1;
  v27 = a1;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v34 = 0;
  aBlock = 0u;
  v33 = 0u;
  v15 = OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_cancellableTimer;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&aBlock, v2 + v15);
  swift_endAccess();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v9 + 8);
  v25(v12, v8);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v19 = v27;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v34 = partial apply for closure #1 in CAFUINumericInputView.stopTrackingControl(sender:);
  v35 = v18;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v33 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v33 + 1) = &block_descriptor;
  v20 = _Block_copy(&aBlock);
  v21 = v19;

  static DispatchQoS.unspecified.getter();
  *&aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x245D0D500](v14, v7, v4, v20);
  _Block_release(v20);

  (*(v31 + 8))(v4, v22);
  (*(v29 + 8))(v7, v30);
  return (v25)(v14, v26);
}

uint64_t closure #1 in CAFUINumericInputView.stopTrackingControl(sender:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
    {
      [v2 setSelected_];
    }

    CAFUINumericInputView.updateButtons()();
    v3 = *&v1[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 104];
    v4 = *&v1[OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config];

    v3(v5, v4);
  }

  return result;
}

uint64_t CAFUINumericInputView.buttonValueChanged(sender:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_decrementButton) == result)
  {
    v2 = (v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config);
    v3 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 8);
    if (v3 >= *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config))
    {
      return result;
    }

    v5 = v2[3];
    if (v3 <= *v2 - v5)
    {
      v3 = *v2 - v5;
    }

    goto LABEL_10;
  }

  if (*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_incrementButton) != result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v2 = (v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config);
  v3 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 16);
  if (*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config) < v3)
  {
    v4 = v2[3];
    if (*v2 + v4 < v3)
    {
      v3 = *v2 + v4;
    }

LABEL_10:
    *v2 = v3;
    CAFUINumericInputView.updateButtons()();
    v6 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 104);
    v7 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config);

    v6(v8, v7);
  }

  return result;
}

uint64_t CAFUINumericInputView.sliderChanged(sender:)(void *a1)
{
  [a1 value];
  v3 = v2;
  v4 = v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config;
  v5 = *(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 24);
  *v4 = (v2 - fmodf(v2, v5));
  v6 = *(v4 + 8);
  if (v3 == v6)
  {
    if ([*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_decrementButton) isEnabled])
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8);
  }

  if (v3 > v6 && ![*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_decrementButton) isEnabled])
  {
    goto LABEL_11;
  }

  v7 = *(v4 + 16);
  if (v3 == v7)
  {
    if (([*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_incrementButton) isEnabled] & 1) == 0)
    {
      v7 = *(v4 + 16);
      goto LABEL_9;
    }

LABEL_11:
    CAFUINumericInputView.updateButtons()();
    goto LABEL_12;
  }

LABEL_9:
  if (v3 < v7 && ([*(v1 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_incrementButton) isEnabled] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = *(v4 + 104);
  v9 = *v4;

  v8(v10, v9);
}

uint64_t CAFUINumericInputView.focusItems(in:)(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CAFUINumericInputView();
  v9 = objc_msgSendSuper2(&v18, sel_focusItemsInRect_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIFocusItem_pMd);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = MEMORY[0x277D84F90];
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_21:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_20:
  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_3:
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    v14 = v12;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245D0D9A0](v14, v10);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        swift_unknownObjectRetain();
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v14;
      if (v12 == v11)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x245D0D2F0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = v17;
  }

  while (v12 != v11);
LABEL_22:

  if (v13 >> 62)
  {
    v15 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v15 = v13;
  }

  return v15;
}

Swift::Void __swiftcall CAFUISegmentedControl.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUISegmentedControl();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  [v0 frame];
  if (v1 != 32.0)
  {
    [v0 frame];
    [v0 setFrame_];
  }
}

id CAFUIStackView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CAFUISegmentedControl.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CAFUISegmentedControl();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id @objc CAFUINumericInputView.CAFUINonFocusableSliderStyle.init(frame:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v13.receiver = a1;
  v13.super_class = a8(a7);
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

id CAFUISegmentedControl.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CAFUISegmentedControl.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CAFUISegmentedControl();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id @objc CAFUINumericInputView.CAFUINonFocusableSliderStyle.init(coder:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

id CAFUISegmentedControl.__allocating_init(items:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithItems_];

  return v3;
}

id CAFUISegmentedControl.init(items:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CAFUISegmentedControl();
  v3 = objc_msgSendSuper2(&v5, sel_initWithItems_, v2.super.isa);

  return v3;
}

id CAFUIStackView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id specialized CAFUIStackView.init(views:axis:minWidth:)(unint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR____TtC5CAFUI14CAFUIStackView_minWidth] = a3;
  v6 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v6 setAxis_];
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  [v6 setAlignment_];
  [v6 setDistribution_];
  [v6 setSpacing_];
  v8 = v6;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[OBJC_IVAR____TtC5CAFUI14CAFUIStackView_stackView] = v8;
  v32.receiver = v3;
  v32.super_class = type metadata accessor for CAFUIStackView();
  v9 = v8;
  v10 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 addSubview_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_242423B90;
  v13 = [v9 leadingAnchor];
  v14 = [v10 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v9 trailingAnchor];
  v17 = [v10 trailingAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v12 + 40) = v18;
  v19 = [v9 topAnchor];
  v20 = [v10 topAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v12 + 48) = v21;
  v22 = [v9 bottomAnchor];

  v23 = [v10 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v12 + 56) = v24;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints_];

  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v27 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x245D0D9A0](v27, a1);
      }

      else
      {
        if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v28 = *(a1 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      [v9 addArrangedSubview_];

      ++v27;
      if (v30 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return v10;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CAFUINumericConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CAFUINumericConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_242360B54()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for NSRunLoop);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

void __swiftcall UIButton.init(alertButtonTitle:)(UIButton *__return_ptr retstr, Swift::String alertButtonTitle)
{
  object = alertButtonTitle._object;
  countAndFlagsBits = alertButtonTitle._countAndFlagsBits;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v5 = MEMORY[0x245D0D180](countAndFlagsBits, object);

  v6 = CAFUILocalizedStringForKey(v5);

  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x245D0D180](v7);
  }

  [v4 setTitle:v6 forState:0];

  v8 = v4;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  v10 = [v9 tertiarySystemFillColor];
  [v8 setBackgroundColor_];

  v11 = [v9 _carSystemFocusColor];
  [v8 setTitleColor:v11 forState:0];

  v12 = [v9 _carSystemFocusColor];
  v13 = [v12 colorWithAlphaComponent_];

  [v8 setTitleColor:v13 forState:1];
  [v8 _setCornerRadius_];
  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_242423B80;
  v16 = [v8 widthAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v15 + 32) = v17;
  v18 = [v8 heightAnchor];

  v19 = [v18 constraintEqualToConstant_];
  *(v15 + 40) = v19;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints_];
}

id CAFUILocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = CAFUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_2854A6B80 table:@"Localizable"];

  return v3;
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIButton.Constants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UIButton.Constants(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id CAFPairedDevice.decoratorImage.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  v3 = objc_opt_self();
  v4 = [v3 configurationWithFont:v2 scale:2];

  if ([v1 state] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_242423B80;
    v6 = objc_opt_self();
    *(v5 + 32) = [v6 systemWhiteColor];
    *(v5 + 40) = [v6 systemGreenColor];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIColor);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v3 configurationWithPaletteColors_];

    v9 = [v4 configurationByApplyingConfiguration_];
    v10 = v9;
    v11 = MEMORY[0x245D0D180](0xD000000000000015, 0x80000002424293F0);
    v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

    return v12;
  }

  else
  {

    return 0;
  }
}

uint64_t CAFPairedDevicesInformation.identifier.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.uuidString.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t CAFPairedDevicesInformation.detailLabel.getter()
{
  v1 = [v0 pairedDeviceList];
  v2 = [v1 pairedDevices];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFPairedDevice);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x245D0D180](0xD000000000000018, 0x8000000242429350);
    v6 = CAFUILocalizedStringForKey(v5);
    goto LABEL_7;
  }

  if (!v4)
  {
    v5 = MEMORY[0x245D0D180](0xD000000000000019, 0x8000000242429370);
    v6 = CAFUILocalizedStringForKey(v5);
LABEL_7:
    v7 = v6;

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v8;
  }

  v10 = MEMORY[0x245D0D180](0xD000000000000018, 0x8000000242429330);
  v11 = CAFUILocalizedStringForKey(v10);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D83B88];
  *(v12 + 16) = xmmword_2424235A0;
  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = v4;
  v15 = String.init(format:_:)();

  return v15;
}

uint64_t CAFPairedDevicesInformation.rowLabel.getter()
{
  v0 = MEMORY[0x245D0D180](0x495F444552494150, 0xEE0053454E4F4850);
  v1 = CAFUILocalizedStringForKey(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

uint64_t CAFPairedDevicesInformation.sortedPairedDevices.getter()
{
  v1 = [v0 pairedDeviceList];
  v2 = [v1 pairedDevices];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFPairedDevice);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array._copyToContiguousArray()(v3, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo19CAFAutomakerSettingC_Tt1g5, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(&v5);

  return v5;
}

BOOL closure #1 in CAFPairedDevicesInformation.sortedPairedDevices.getter(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 sortOrder];
  if (v4 == [v3 sortOrder])
  {
    v5 = [v2 state];
    if (v5 == [v3 state])
    {
      return 0;
    }

    v9 = [v2 state];
    v8 = [v3 state] >= v9;
  }

  else
  {
    v7 = [v2 sortOrder];
    v8 = v7 >= [v3 sortOrder];
  }

  return !v8;
}

uint64_t CAFPairedDevicesInformation.items.getter()
{
  v1 = [v0 pairedDeviceList];
  v2 = [v1 pairedDevices];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFPairedDevice);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v15[0] = specialized Array._copyToContiguousArray()(v3, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo19CAFAutomakerSettingC_Tt1g5, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(v15);

  v4 = *&v15[0];
  if ((*&v15[0] & 0x8000000000000000) != 0 || (*&v15[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v5 = *(*&v15[0] + 16);
  if (v5)
  {
    while (1)
    {
      v16 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v16;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x245D0D9A0](v6, v4);
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            goto LABEL_16;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        v14 = v9;
        closure #1 in CAFPairedDevicesInformation.items.getter(&v14, v15);

        v16 = v7;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v7 = v16;
        }

        *(v7 + 16) = v12 + 1;
        outlined init with take of CAFUIImageRepresentableItemProtocol(v15, v7 + 40 * v12 + 32);
        ++v6;
        if (v8 == v5)
        {

          return v7;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_18:

    return MEMORY[0x277D84F90];
  }

  return result;
}

void closure #1 in CAFPairedDevicesInformation.items.getter(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 state];
  v5 = objc_opt_self();
  v6 = &selRef_greenColor;
  if (v4 != 2)
  {
    v6 = &selRef_grayColor;
  }

  v7 = [v5 *v6];
  v8 = [v3 name];
  if (!v8)
  {
    v9 = MEMORY[0x245D0D180](0xD00000000000001DLL, 0x80000002424293D0);
    v8 = CAFUILocalizedStringForKey(v9);
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = specialized CAFPairedDevicesInformation.deviceImage.getter();
  v14 = CAFPairedDevice.decoratorImage.getter();
  v15 = [v3 state] == 2;
  v18[3] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFPairedDevice);
  v18[0] = v3;
  a2[3] = &type metadata for CAFUIImageRepresentableItem;
  a2[4] = &protocol witness table for CAFUIImageRepresentableItem;
  v16 = swift_allocObject();
  *a2 = v16;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = v15;
  v17 = v3;
  outlined assign with take of Any?(v18, v16 + 56);

  *(v16 + 88) = v7;
}

void CAFPairedDevicesInformation.selectedIndices.setter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 32);

    v2 = CAFPairedDevicesInformation.items.getter();
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *(v2 + 16))
    {
      outlined init with copy of CAFUIImageRepresentableItemProtocol(v2 + 40 * v1 + 32, v7);

      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v4 + 40))(v10, v3, v4);
      if (v10[3])
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFPairedDevice);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v7);
          v5 = [v6 identifier];
          if (v5)
          {

            return;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v7);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v7);
        outlined destroy of Any?(v10);
      }

      goto LABEL_12;
    }

    __break(1u);
    return;
  }

LABEL_12:
  specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000037, 0x8000000242429390, 0x64657463656C6573, 0xEF73656369646E49, 134);
}

void (*CAFPairedDevicesInformation.selectedIndices.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  return CAFPairedDevicesInformation.selectedIndices.modify;
}

void CAFPairedDevicesInformation.selectedIndices.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    CAFPairedDevicesInformation.selectedIndices.setter(v2);
  }

  else
  {
    CAFPairedDevicesInformation.selectedIndices.setter(*a1);
  }
}

void CAFPairedDevicesInformation.cellSelected()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

void (*protocol witness for CAFUIImageRepresentable.selectedIndices.modify in conformance CAFPairedDevicesInformation(void *a1))(uint64_t *a1, char a2)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  return CAFPairedDevicesInformation.selectedIndices.modify;
}

uint64_t protocol witness for CAFListContentRepresentable.identifier.getter in conformance CAFPairedDevicesInformation()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.uuidString.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t protocol witness for CAFListContentRepresentable.rowLabel.getter in conformance CAFPairedDevicesInformation()
{
  v0 = MEMORY[0x245D0D180](0x495F444552494150, 0xEE0053454E4F4850);
  v1 = CAFUILocalizedStringForKey(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

void protocol witness for CAFListContentRepresentable.cellSelected() in conformance CAFPairedDevicesInformation(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  NewAByxGyFSo19CAFAutomakerSettingC_Tg5_0 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyFSo19CAFAutomakerSettingC_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyFSo19CAFAutomakerSettingC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSo19CAFAutomakerSettingC_Tg5_0(NewAByxGyFSo19CAFAutomakerSettingC_Tg5_0);
    *a1 = NewAByxGyFSo19CAFAutomakerSettingC_Tg5_0;
  }

  v4 = *(NewAByxGyFSo19CAFAutomakerSettingC_Tg5_0 + 16);
  v6[0] = NewAByxGyFSo19CAFAutomakerSettingC_Tg5_0 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
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

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, MEMORY[0x277CC9AF8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy5CAFUI20CAFUIEqualizerSliderVGMd, &_ss23_ContiguousArrayStorageCy5CAFUI20CAFUIEqualizerSliderVGMR, type metadata accessor for CAFUIEqualizerSlider);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5title_SSSg11descriptionSb8disabledtGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5title_SSSg11descriptionSb8disabledtMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo19CAFAutomakerSettingCGtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySo19CAFAutomakerSettingCGtMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So19CAFAutomakerSettingCtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So19CAFAutomakerSettingCtMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5CAFUI29CAFUIAutomakerSettingsSectionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFPairedDevice);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_6:
    v22 = a3;
    v7 = *(v4 + 8 * a3);
    v20 = v6;
    v21 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 sortOrder];
      if (v11 == [v10 sortOrder])
      {
        v12 = [v9 state];
        if (v12 == [v10 state])
        {

LABEL_5:
          a3 = v22 + 1;
          v5 = v21 + 8;
          v6 = v20 - 1;
          if (v22 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v13 = [v9 state];
        v14 = [v10 state];

        if (v14 >= v13)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = [v9 sortOrder];
        v16 = [v10 sortOrder];

        if (v15 >= v16)
        {
          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v17 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v17;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &selRef_systemImageNamed_withConfiguration_;
    v39 = *a4;
LABEL_6:
    v37 = v5;
    v38 = a3;
    v8 = *(v4 + 8 * a3);
    v36 = v6;
    while (1)
    {
      v9 = *v5;
      if (v8 == *v5)
      {
        goto LABEL_5;
      }

      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[64]];
      if (v12 == [v11 v7[64]])
      {
        if (v13 = [v10 userVisibleLabel], v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v16 = v15, v13, v17 = objc_msgSend(v11, sel_userVisibleLabel), v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v20 = v19, v17, v14 == v18) && v16 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {

          v21 = [v10 identifier];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          v25 = [v11 identifier];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          if (v22 == v26 && v24 == v28)
          {

            v4 = v39;
            v7 = &selRef_systemImageNamed_withConfiguration_;
LABEL_5:
            a3 = v38 + 1;
            v5 = v37 + 8;
            v6 = v36 - 1;
            if (v38 + 1 == a2)
            {
              return;
            }

            goto LABEL_6;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v39;
          v7 = &selRef_systemImageNamed_withConfiguration_;
          if ((v29 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v39;
          v7 = &selRef_systemImageNamed_withConfiguration_;
          if ((v34 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v30 = [v10 v7[64]];
        v31 = [v11 v7[64]];

        if (v30 >= v31)
        {
          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v32 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v32;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = closure #4 in CAFUITileDataSource.refreshProminentSection()(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v7 = v5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_105:
    v6 = a3;
    v12 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v92 = v4;
LABEL_108:
      v110 = v92;
      v4 = *(v92 + 2);
      if (v4 >= 2)
      {
        while (*v6)
        {
          v93 = *&v92[16 * v4];
          v94 = v92;
          v95 = *&v92[16 * v4 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v6 + v93, *v6 + *&v92[16 * v4 + 16], *v6 + v95, v12);
          if (v7)
          {
            goto LABEL_116;
          }

          if (v95 < v93)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
          }

          if (v4 - 2 >= *(v94 + 2))
          {
            goto LABEL_134;
          }

          v96 = &v94[16 * v4];
          *v96 = v93;
          *(v96 + 1) = v95;
          v110 = v94;
          specialized Array.remove(at:)(v4 - 1);
          v92 = v110;
          v4 = *(v110 + 2);
          if (v4 <= 1)
          {
            goto LABEL_116;
          }
        }

        goto LABEL_144;
      }

LABEL_116:

      return;
    }

LABEL_140:
    v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_108;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = &selRef_systemImageNamed_withConfiguration_;
  while (1)
  {
    v12 = v9;
    v9 = (v9 + 1);
    if (v9 < v8)
    {
      v100 = v10;
      v4 = *a3;
      v13 = *(*a3 + 8 * v9);
      v108 = *(*a3 + 8 * v12);
      v14 = v108;
      v109 = v13;
      v15 = v13;
      v16 = v14;
      v17 = v7;
      v105 = closure #1 in CAFPairedDevicesInformation.sortedPairedDevices.getter(&v109, &v108);
      if (v7)
      {

        return;
      }

      v6 = (v12 + 2);
      if (v12 + 2 < v8)
      {
        v4 += 8 * v12 + 16;
        while (1)
        {
          v18 = *(v4 - 8);
          v19 = *v4;
          v20 = v18;
          v21 = [v19 sortOrder];
          if (v21 != [v20 sortOrder])
          {
            break;
          }

          v22 = [v19 state];
          if (v22 != [v20 state])
          {
            v23 = [v19 state];
            v24 = [v20 state];
            goto LABEL_14;
          }

          if (v105)
          {
            v7 = v17;
            v10 = v100;
            v11 = &selRef_systemImageNamed_withConfiguration_;
            if (v6 < v12)
            {
              goto LABEL_137;
            }

            goto LABEL_20;
          }

LABEL_9:
          v4 += 8;
          v6 = (v6 + 1);
          if (v8 == v6)
          {
            v6 = v8;
LABEL_17:
            v7 = v17;
            goto LABEL_18;
          }
        }

        v24 = [v19 sortOrder];
        v23 = [v20 sortOrder];
LABEL_14:

        if (((v105 ^ (v24 >= v23)) & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

LABEL_18:
      v10 = v100;
      v11 = &selRef_systemImageNamed_withConfiguration_;
      if (v105)
      {
        if (v6 < v12)
        {
          goto LABEL_137;
        }

LABEL_20:
        v9 = v6;
        if (v12 < v6)
        {
          v25 = 8 * v6 - 8;
          v26 = 8 * v12;
          v27 = v6;
          v28 = v12;
          do
          {
            v27 = (v27 - 1);
            if (v28 != v27)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_143;
              }

              v30 = *(v29 + v26);
              *(v29 + v26) = *(v29 + v25);
              *(v29 + v25) = v30;
            }

            v28 = (v28 + 1);
            v25 -= 8;
            v26 += 8;
          }

          while (v28 < v27);
        }
      }

      else
      {
        v9 = v6;
      }
    }

    v31 = a3[1];
    if (v9 < v31)
    {
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_136;
      }

      if (v9 - v12 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v9 < v12)
    {
      goto LABEL_135;
    }

    v46 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v46;
    }

    else
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
    }

    v4 = *(v10 + 2);
    v47 = *(v10 + 3);
    v48 = v4 + 1;
    if (v4 >= v47 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v4];
    *(v49 + 4) = v12;
    *(v49 + 5) = v9;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v50 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v10 + 4);
          v52 = *(v10 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_70:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = &v10[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = &v10[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v48 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v77 = &v10[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_84:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = &v10[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_91:
        v4 = v50 - 1;
        if (v50 - 1 >= v48)
        {
          __break(1u);
LABEL_120:
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
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v12 = v9;
        v88 = v10;
        v89 = *&v10[16 * v4 + 32];
        v90 = *&v10[16 * v50 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v89), (*a3 + 8 * *&v10[16 * v50 + 32]), (*a3 + 8 * v90), v6);
        if (v7)
        {
          goto LABEL_116;
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew()(v88);
        }

        if (v4 >= *(v88 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v88[16 * v4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v110 = v88;
        specialized Array.remove(at:)(v50);
        v10 = v110;
        v48 = *(v110 + 2);
        v9 = v12;
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v10[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = &v10[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = &v10[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v50 = v48 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v8 = a3[1];
    v11 = &selRef_systemImageNamed_withConfiguration_;
    if (v9 >= v8)
    {
      goto LABEL_105;
    }
  }

  v32 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
    goto LABEL_138;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v12)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v9 == v32)
  {
    goto LABEL_50;
  }

  v101 = v10;
  v97 = v12;
  v98 = v7;
  v33 = *a3;
  v34 = *a3 + 8 * v9 - 8;
  v35 = (v12 - v9);
  v103 = v32;
LABEL_38:
  v104 = v34;
  v106 = v9;
  v36 = *(v33 + 8 * v9);
  v4 = v35;
  while (1)
  {
    v37 = *v34;
    v38 = v36;
    v6 = v37;
    LODWORD(v37) = [v38 v11[64]];
    if (v37 != [v6 v11[64]])
    {
      v42 = [v38 v11[64]];
      v43 = [v6 v11[64]];

      if (v42 < v43)
      {
        goto LABEL_44;
      }

LABEL_36:
      v11 = &selRef_systemImageNamed_withConfiguration_;
LABEL_37:
      v9 = (v9 + 1);
      v34 = v104 + 8;
      --v35;
      if ((v106 + 1) == v103)
      {
        v9 = v103;
        v12 = v97;
        v7 = v98;
        v10 = v101;
        goto LABEL_50;
      }

      goto LABEL_38;
    }

    v39 = [v38 state];
    if (v39 == [v6 state])
    {

      goto LABEL_37;
    }

    v40 = [v38 state];
    v41 = [v6 state];

    if (v41 >= v40)
    {
      goto LABEL_36;
    }

LABEL_44:
    if (!v33)
    {
      break;
    }

    v44 = *v34;
    v36 = *(v34 + 8);
    *v34 = v36;
    *(v34 + 8) = v44;
    v34 -= 8;
    v45 = __CFADD__(v4++, 1);
    v11 = &selRef_systemImageNamed_withConfiguration_;
    if (v45)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, void **__src, void **a3, void **a4)
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
    v32 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 >= 8 && v32 > v6)
    {
      v33 = &selRef_systemImageNamed_withConfiguration_;
      v48 = v4;
LABEL_31:
      v50 = v32;
      v34 = v32 - 1;
      --v5;
      v35 = v14;
      do
      {
        v36 = *--v35;
        v37 = v34;
        v38 = *v34;
        v39 = v36;
        v40 = v38;
        v41 = [v39 v33[64]];
        if (v41 == [v40 v33[64]])
        {
          v42 = [v39 state];
          if (v42 == [v40 state])
          {

            v34 = v37;
          }

          else
          {
            v45 = [v39 state];
            v46 = [v40 state];

            v34 = v37;
            if (v46 < v45)
            {
LABEL_41:
              v4 = v48;
              if (v5 + 1 != v50)
              {
                *v5 = *v34;
              }

              v33 = &selRef_systemImageNamed_withConfiguration_;
              if (v14 <= v48 || (v32 = v34, v34 <= v6))
              {
                v32 = v34;
                goto LABEL_47;
              }

              goto LABEL_31;
            }
          }
        }

        else
        {
          v43 = [v39 v33[64]];
          v44 = [v40 v33[64]];

          v34 = v37;
          if (v43 < v44)
          {
            goto LABEL_41;
          }
        }

        v4 = v48;
        if (v5 + 1 != v14)
        {
          *v5 = *v35;
        }

        --v5;
        v14 = v35;
        v33 = &selRef_systemImageNamed_withConfiguration_;
      }

      while (v35 > v48);
      v14 = v35;
      v32 = v50;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      v16 = 0x1FAAE9000uLL;
      v17 = &selRef_systemImageNamed_withConfiguration_;
      v49 = v14;
      do
      {
        v18 = v15;
        v19 = v16;
        v20 = *v4;
        v21 = *v15;
        v22 = v20;
        v16 = v19;
        v23 = v22;
        v24 = [v21 (v16 + 888)];
        if (v24 == [v23 (v16 + 888)])
        {
          v25 = [v21 v17[57]];
          if (v25 == [v23 v17[57]])
          {

            v15 = v18;
LABEL_20:
            v28 = v4;
            v29 = v6 == v4++;
            v14 = v49;
            if (v29)
            {
              goto LABEL_22;
            }

LABEL_21:
            *v6 = *v28;
            goto LABEL_22;
          }

          v30 = [v21 v17[57]];
          v31 = [v23 v17[57]];

          v15 = v18;
          if (v31 >= v30)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v26 = [v21 (v16 + 888)];
          v27 = [v23 (v16 + 888)];

          v15 = v18;
          if (v26 >= v27)
          {
            goto LABEL_20;
          }
        }

        v28 = v15;
        v29 = v6 == v15++;
        v14 = v49;
        if (!v29)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        v17 = &selRef_systemImageNamed_withConfiguration_;
      }

      while (v4 < v14 && v15 < v5);
    }

    v32 = v6;
  }

LABEL_47:
  if (v32 != v4 || v32 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v32, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D0D9A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D0D9A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo19CAFAutomakerSettingC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo19CAFAutomakerSettingC_Tt1g5, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized CAFPairedDevicesInformation.deviceImage.getter()
{
  v0 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (v0)
  {
    v1 = v0;
    v2 = objc_opt_self();
    v3 = [v2 configurationWithFont:v1 scale:2];
    v4 = [v2 configurationWithPointSize_];
    v5 = [v3 configurationByApplyingConfiguration_];

    v6 = v5;
    v7 = MEMORY[0x245D0D180](0x672E656E6F687069, 0xEB00000000336E65);
    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    if (v8)
    {

      return v8;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with take of CAFUIImageRepresentableItemProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of CAFUIImageRepresentableItemProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242364390()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CAFSingleSelectNotificationSource.output.getter()
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

BOOL String.isSingleSelectNotification.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20]();
  v1 = &v11 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v1, &_s10Foundation3URLVSgMd);
    return 0;
  }

  (*(v3 + 32))(v5, v1, v2);
  v7 = URL.scheme.getter();
  if (!v8)
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  if (v7 != 0xD00000000000001ELL || v8 != 0x8000000242429480)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v3 + 8))(v5, v2);
    return (v10 & 1) != 0;
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

void *CAFSingleSelectNotificationSource.__allocating_init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a2;
  v31 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v34);
  v32 = v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x28223BE20](v14);
  v30 = v29 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v29 - v18;

  v20 = swift_allocObject();
  v20[2] = 0;
  v21 = type metadata accessor for NotificationModel();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v20[3] = CurrentValueSubject.init(_:)();
  v20[4] = MEMORY[0x277D84FA0];
  v20[5] = a7;
  v20[6] = a8;
  v29[1] = a8;
  v37 = a1;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v29[0];
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v24 = v30;
  Publishers.CombineLatest.init(_:_:)();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #3 in CAFSingleSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v26 + 24) = v25;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v27 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v24, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v20;
}

void *CAFSingleSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a2;
  v31[3] = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v31[2] = v31 - v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v32);
  v31[0] = v31 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v36;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  Publishers.CombineLatest.init(_:_:)();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = closure #3 in CAFSingleSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)partial apply;
  *(v28 + 24) = v27;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v29 = v34;
  Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v20, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v9;
}

uint64_t sub_2423652F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t closure #1 in CAFSingleSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_24236541C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #3 in CAFSingleSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t (*a1)(void, void, void), void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFSingleSelectNotificationSource.updateNotification(remoteNotification:requestContent:)(a1, a2);
  }

  return result;
}

uint64_t sub_2423654D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CAFSingleSelectNotificationSource.updateNotification(remoteNotification:requestContent:)(uint64_t (*a1)(void, void, void), void *a2)
{
  v62 = a1;
  v59 = *v2;
  v4 = type metadata accessor for NotificationModel();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v63 = &v56 - v25;
  dispatch thunk of CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
  v26 = String.isSingleSelectNotification.getter();

  if (v26 && (dispatch thunk of CAFRequestTemporaryContentObservable.on.getter() & 1) != 0)
  {
    v27 = v62;
    v28 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.displayPanelIdentifier.getter();
    v58 = v29;
    CAFSingleSelectNotificationSource.convert(message:requestContent:)(v27, a2, v21);
    outlined init with copy of NotificationModel.Symbol?(v21, v18, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    v30 = v4;
    v62 = *(v5 + 48);
    v31 = v62(v18, 1, v4);
    v57 = v28;
    if (v31 == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      (*(v5 + 56))(v24, 1, 1, v4);
    }

    else
    {
      (*(v5 + 32))(v11, v18, v4);
      static CAFSingleSelectNotificationSource.sanitize(notification:displayID:)(v11, v28, v58, v24);
      v30 = v4;
      (*(v5 + 8))(v11, v4);
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    }

    v32 = v63;
    outlined init with take of NotificationModel?(v24, v63);
    outlined init with copy of NotificationModel.Symbol?(v32, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    if (v62(v15, 1, v30) == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v34 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v35 = static OS_os_log.default.getter();
      v36 = os_log_type_enabled(v35, v34);
      v38 = v57;
      v37 = v58;
      if (v36)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v64 = v40;
        *v39 = 136315138;
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v64);

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
      v42 = v61;
      (*(v5 + 32))(v61, v15, v30);
      v43 = static os_log_type_t.info.getter();
      v44 = v60;
      (*(v5 + 16))(v60, v42, v30);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v45 = v30;
      v46 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v46, v43))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v64 = v48;
        *v47 = 136315394;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v64);

        *(v47 + 4) = v49;
        *(v47 + 12) = 2080;
        v50 = NotificationModel.id.getter();
        v52 = v51;
        v53 = *(v5 + 8);
        v53(v44, v45);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v64);
        v32 = v63;

        *(v47 + 14) = v54;
        _os_log_impl(&dword_24234D000, v46, v43, "Presenting notification: %s:%s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D0E5A0](v48, -1, -1);
        MEMORY[0x245D0E5A0](v47, -1, -1);

        v53(v42, v45);
      }

      else
      {

        v55 = *(v5 + 8);
        v55(v44, v30);
        v55(v42, v30);
      }
    }
  }

  else
  {
    v32 = v63;
    (*(v5 + 56))(v63, 1, 1, v4);
  }

  CurrentValueSubject.send(_:)();

  return outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd);
}

uint64_t static CAFSingleSelectNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v6 = type metadata accessor for NotificationModel();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationModel.ValidationError();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = NotificationModel.validate(automakerSymbolValidator:)();
  v22 = a1;
  v23 = v18;
  (*(v7 + 16))(v20, v22, v6);
  v46 = v7;
  v24 = *(v7 + 56);
  v50 = v6;
  v40 = v24;
  v41 = v7 + 56;
  v24(v20, 0, 1, v6);
  v36 = v20;
  v25 = v20;
  v26 = v21;
  v27 = a4;
  outlined init with copy of NotificationModel.Symbol?(v25, a4, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  v51 = *(v21 + 16);
  if (v51)
  {
    v28 = 0;
    v49 = v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v47 = (v46 + 6);
    v48 = v52 + 16;
    v37 = (v46 + 4);
    v38 = (v46 + 1);
    v45 = 0;
    v46 = (v52 + 8);
    v29 = &_s14CarPlayAssetUI17NotificationModelVSgMR;
    v39 = v26;
    while (v28 < *(v26 + 16))
    {
      (*(v52 + 16))(v11, v49 + *(v52 + 72) * v28, v53);
      outlined init with copy of NotificationModel.Symbol?(v27, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v30 = v50;
      if ((*v47)(v15, 1, v50) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v27, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v40(v23, 1, 1, v30);
      }

      else
      {
        v31 = v29;
        v32 = v27;
        v27 = v30;
        v29 = v42;
        v33 = v15;
        (*v37)(v42, v15, v27);
        v34 = v45;
        closure #1 in closure #2 in static CAFSingleSelectNotificationSource.sanitize(notification:displayID:)(v29, v11, v43, v44, v23);
        v45 = v34;
        if (v34)
        {
          goto LABEL_11;
        }

        (*v38)(v29, v27);
        v27 = v32;
        v29 = v31;
        outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v15 = v33;
        v26 = v39;
      }

      ++v28;
      (*v46)(v11, v53);
      outlined init with take of NotificationModel?(v23, v27);
      if (v51 == v28)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    result = (*v38)(v29, v27);
    __break(1u);
  }

  else
  {
LABEL_9:

    return outlined destroy of RequestTemporaryContentModel?(v36, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  }

  return result;
}

uint64_t closure #1 in closure #2 in static CAFSingleSelectNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
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

uint64_t CAFSingleSelectNotificationSource.convert(message:requestContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v174 = a3;
  v163 = type metadata accessor for UUID();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for NotificationModel();
  v178 = *(v173 - 8);
  v6 = MEMORY[0x28223BE20](v173);
  v8 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v172 = &v157 - v9;
  v10 = type metadata accessor for NotificationModel.Style();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v168 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v200 = &v157 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v167 = &v157 - v16;
  v199 = type metadata accessor for NotificationModel.FancyModel();
  v170 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v201 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v198 = &v157 - v19;
  v197 = type metadata accessor for NotificationModel.FancyModel.ActionConfiguration();
  v182 = *(v197 - 8);
  v20 = MEMORY[0x28223BE20](v197);
  v196 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v181 = &v157 - v22;
  v203 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
  v23 = *(v203 - 8);
  MEMORY[0x28223BE20](v203 - 8);
  v177 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v183 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v208 = &v157 - v29;
  MEMORY[0x28223BE20](v28);
  v176 = &v157 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v157 - v32;
  v180 = type metadata accessor for NotificationModel.Text();
  v179 = *(v180 - 8);
  v34 = MEMORY[0x28223BE20](v180);
  v165 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v205 = &v157 - v36;
  v185 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.displayPanelIdentifier.getter();
  v187 = v37;
  v184 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.identifier.getter();
  v186 = v38;
  v39 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.userVisibleLabel.getter();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v169 = v8;
  v171 = v23;
  if (v42)
  {
    dispatch thunk of CAFSingleSelectRemoteNotificationObservable.userVisibleLabel.getter();
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.userVisibleDescription.getter();
  v47 = v46;

  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    dispatch thunk of CAFSingleSelectRemoteNotificationObservable.userVisibleDescription.getter();
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  NotificationModel.Text.init(title:body:)();
  v51 = v44;
  v52 = v179;
  v53 = v180;
  v54 = (*(v179 + 48))(v33, 1, v180);
  v55 = v203;
  if (v54 == 1)
  {

    outlined destroy of RequestTemporaryContentModel?(v33, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
    v56 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v57 = static OS_os_log.default.getter();
    v58 = os_log_type_enabled(v57, v56);
    v59 = v173;
    if (v58)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v209 = v61;
      *v60 = 136315138;
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v187, &v209);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_24234D000, v57, v56, "No text added to notification on display: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x245D0E5A0](v61, -1, -1);
      MEMORY[0x245D0E5A0](v60, -1, -1);
    }

    else
    {
    }

    return (*(v178 + 56))(v174, 1, 1, v59);
  }

  v159 = v50;
  v160 = v51;
  v63 = *(v52 + 32);
  v64 = v205;
  v63(v205, v33, v53);
  v166 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.symbolNameAndColor.getter();
  v65 = [v166 name];
  if (v65)
  {
    v66 = v65;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  v71 = v10;
  v72 = [v166 color];
  static NotificationModel.getSymbol(symbolName:symbolColor:)(v67, v69, v72, v176);

  v73 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.trailingButton.getter();
  v74 = [v73 type];

  v75 = 0xE000000000000000;
  if (v74 == 2)
  {
    v75 = 0x8000000242428D90;
  }

  if (v74 == 1)
  {
    v76 = 0x8000000242428DB0;
  }

  else
  {
    v76 = v75;
  }

  v77 = swift_allocObject();
  swift_weakInit();
  v78 = swift_allocObject();
  v78[2] = v77;
  v78[3] = a2;
  v78[4] = a1;

  v158 = a2;
  v79 = a1;
  v157 = v76;
  NotificationModel.TrailingButtonConfiguration.init(symbolName:handler:)();
  v206 = v79;
  v80 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.selectableNotificationEntries.getter();
  v81 = [v80 selectableNotificationEntrys];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectableNotificationEntry);
  v82 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v82 >> 62)
  {
    goto LABEL_69;
  }

  v84 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
  v86 = v199;
  v85 = v200;
  v87 = v201;
  v88 = v208;
  v164 = v71;
  if (v84)
  {
    v89 = 0;
    v194 = v82 & 0xFFFFFFFFFFFFFF8;
    v195 = v82 & 0xC000000000000001;
    v190 = (v182 + 56);
    v189 = (v182 + 48);
    v188 = (v182 + 32);
    v204 = MEMORY[0x277D84F90];
    *&v83 = 136315394;
    v175 = v83;
    v192 = v82;
    v193 = v11;
    v191 = v84;
    while (1)
    {
      if (v195)
      {
        v92 = MEMORY[0x245D0D9A0](v89, v82);
      }

      else
      {
        if (v89 >= *(v194 + 16))
        {
          goto LABEL_67;
        }

        v92 = *(v82 + 8 * v89 + 32);
      }

      v71 = v92;
      v11 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v84 = __CocoaSet.count.getter();
        goto LABEL_26;
      }

      v64 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.getter();
      if (v89 == v64)
      {
        v93 = [v71 onUserVisibleLabel];
        if (v93)
        {
          v94 = v93;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;
        }

        else
        {
          v96 = 0;
        }

        v100 = [v71 onSymbolName];
        if (v100)
        {
          v101 = v100;
          v102 = &selRef_onSymbolColor;
LABEL_45:
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          goto LABEL_48;
        }

        v55 = 0;
        v105 = 0;
        v102 = &selRef_onSymbolColor;
      }

      else
      {
        v97 = [v71 offUserVisibleLabel];
        if (v97)
        {
          v98 = v97;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v99;
        }

        else
        {
          v96 = 0;
        }

        v103 = [v71 offSymbolName];
        if (v103)
        {
          v101 = v103;
          v102 = &selRef_offSymbolColor;
          goto LABEL_45;
        }

        v55 = 0;
        v105 = 0;
        v102 = &selRef_offSymbolColor;
      }

LABEL_48:
      v106 = [v71 *v102];
      v82 = v208;
      v207 = v89 + 1;
      if (v96)
      {
        static NotificationModel.getSymbol(symbolName:symbolColor:)(v55, v105, v106, v208);

        v107 = [v71 disabled];
        if (v89 > 0xFF)
        {
          goto LABEL_68;
        }

        v108 = v107;
        v202 = v89 == v64;
        outlined init with copy of NotificationModel.Symbol?(v82, v183, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
        v109 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v110 = swift_allocObject();
        v111 = v185;
        *(v110 + 16) = v89;
        *(v110 + 24) = v111;
        v112 = v184;
        *(v110 + 32) = v187;
        *(v110 + 40) = v112;
        v113 = v71;
        v71 = v96;
        *(v110 + 48) = v186;
        *(v110 + 56) = v108;
        *(v110 + 64) = v109;

        v114 = v198;
        NotificationModel.FancyModel.ActionConfiguration.init(id:symbol:title:pressed:highlighted:disabled:handler:)();
        outlined destroy of RequestTemporaryContentModel?(v82, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
        v115 = v114;

        v116 = v197;
        (*v190)(v114, 0, 1, v197);

        v117 = (*v189)(v114, 1, v116);
        v86 = v199;
        v85 = v200;
        v64 = v205;
        if (v117 != 1)
        {
LABEL_55:
          v122 = *v188;
          v123 = v181;
          (*v188)(v181, v115, v116);
          v122(v196, v123, v116);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v203;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v204 + 2) + 1, 1, v204);
          }

          v126 = *(v204 + 2);
          v125 = *(v204 + 3);
          v90 = v207;
          if (v126 >= v125 >> 1)
          {
            v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v125 > 1, v126 + 1, 1, v204);
          }

          v127 = v204;
          *(v204 + 2) = v126 + 1;
          v122(&v127[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v126], v196, v116);
          v64 = v205;
          goto LABEL_29;
        }
      }

      else
      {

        v118 = static os_log_type_t.error.getter();
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
        v119 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v119, v118))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v209 = v121;
          *v120 = v175;
          *(v120 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v187, &v209);
          *(v120 + 12) = 2080;
          *(v120 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v186, &v209);
          _os_log_impl(&dword_24234D000, v119, v118, "Notification (%s:%s) - User action does not have text", v120, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245D0E5A0](v121, -1, -1);
          MEMORY[0x245D0E5A0](v120, -1, -1);
        }

        v86 = v199;
        v85 = v200;
        v64 = v205;
        v116 = v197;
        v115 = v198;
        (*v190)(v198, 1, 1, v197);

        if ((*v189)(v115, 1, v116) != 1)
        {
          goto LABEL_55;
        }
      }

      outlined destroy of RequestTemporaryContentModel?(v115, &_s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationVSgMd);
      v55 = v203;
      v90 = v207;
LABEL_29:
      ++v89;
      v82 = v192;
      v91 = v90 == v191;
      v11 = v193;
      v87 = v201;
      v88 = v208;
      if (v91)
      {
        goto LABEL_62;
      }
    }
  }

  v204 = MEMORY[0x277D84F90];
LABEL_62:

  (*(v179 + 16))(v165, v64, v180);
  outlined init with copy of NotificationModel.Symbol?(v176, v88, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
  v128 = v171;
  v129 = v167;
  (*(v171 + 16))(v167, v177, v55);
  (*(v128 + 56))(v129, 0, 1, v55);
  v130 = swift_allocObject();
  v131 = v158;
  *(v130 + 16) = v158;
  v132 = v131;
  v133 = v164;
  NotificationModel.FancyModel.init(text:symbol:trailingButtonConfiguration:actionButtons:dismissalHandler:)();
  v134 = v170;
  (*(v170 + 16))(v85, v87, v86);
  (*(v11 + 104))(v85, *MEMORY[0x277CF8BE0], v133);
  (*(v11 + 16))(v168, v85, v133);
  v135 = v172;
  NotificationModel.init(id:style:)();
  LODWORD(v129) = static os_log_type_t.info.getter();
  v136 = v169;
  v137 = v173;
  (*(v178 + 16))(v169, v135);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v138 = static OS_os_log.default.getter();
  LODWORD(v208) = v129;
  if (os_log_type_enabled(v138, v129))
  {
    v139 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    v209 = v207;
    *v139 = 136315650;
    v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v187, &v209);

    *(v139 + 4) = v140;
    *(v139 + 12) = 2080;
    v141 = CAFSingleSelectRemoteNotificationObservable.observed.getter();
    v142 = v161;
    CAFService.id.getter();

    lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v143 = v163;
    v144 = dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v145;
    (*(v162 + 8))(v142, v143);
    v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, &v209);

    *(v139 + 14) = v147;
    *(v139 + 22) = 2080;
    v148 = NotificationModel.description.getter();
    v150 = v149;
    v151 = v178;
    (*(v178 + 8))(v136, v137);
    v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, &v209);

    *(v139 + 24) = v152;
    _os_log_impl(&dword_24234D000, v138, v208, "Converted notification (displayID = (%s), message.id = %s) to %s", v139, 0x20u);
    v153 = v207;
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v153, -1, -1);
    MEMORY[0x245D0E5A0](v139, -1, -1);

    (*(v11 + 8))(v200, v164);
    (*(v170 + 8))(v201, v199);
    (*(v171 + 8))(v177, v203);
    outlined destroy of RequestTemporaryContentModel?(v176, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
    (*(v179 + 8))(v205, v180);
    v154 = v151;
  }

  else
  {

    v155 = v178;
    (*(v178 + 8))(v136, v137);
    (*(v11 + 8))(v85, v164);
    (*(v134 + 8))(v201, v86);
    (*(v171 + 8))(v177, v203);
    outlined destroy of RequestTemporaryContentModel?(v176, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
    (*(v179 + 8))(v64, v180);
    v154 = v155;
  }

  v156 = v174;
  (*(v154 + 32))(v174, v172, v137);
  return (*(v154 + 56))(v156, 0, 1, v137);
}

uint64_t closure #1 in CAFSingleSelectNotificationSource.convert(message:requestContent:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    dispatch thunk of CAFRequestTemporaryContentObservable.on.setter();
    dispatch thunk of CAFSingleSelectRemoteNotificationObservable.trailingButtonState.setter();
    v2 = dispatch thunk of CAFSingleSelectRemoteNotificationObservable.trailingButton.getter();
    v3 = [v2 contentURLAction];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v7 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      (*(v1 + 40))(v4, v6);
    }
  }

  return result;
}

void closure #1 in closure #2 in CAFSingleSelectNotificationSource.convert(message:requestContent:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = a1;
  if (a1 > 0xFF)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v11 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v22);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v22);
    *(v12 + 22) = 256;
    *(v12 + 24) = v6;
    _os_log_impl(&dword_24234D000, v11, v10, "Notification (%s:%s) button %hhu pressed", v12, 0x19u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v13, -1, -1);
    MEMORY[0x245D0E5A0](v12, -1, -1);
  }

  if (a6)
  {
    v14 = static os_log_type_t.info.getter();
    log = static OS_os_log.default.getter();
    if (os_log_type_enabled(log, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315650;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v22);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v22);
      *(v15 + 22) = 256;
      *(v15 + 24) = v6;
      _os_log_impl(&dword_24234D000, log, v14, "Notification (%s:%s) button %hhu is disabled.", v15, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v16, -1, -1);
      MEMORY[0x245D0E5A0](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      dispatch thunk of CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.setter();
    }
  }
}

uint64_t CAFSingleSelectNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFSingleSelectNotificationSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFSingleSelectNotificationSource()
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

uint64_t sub_2423684CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242368520()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242368558()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2423685B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

id CAFUIAutomakerSettingCell.primaryTextColor.getter()
{
  v1 = &v0[OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable];
  swift_beginAccess();
  if (*v1)
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 40);
    swift_unknownObjectRetain();
    if ((v4(ObjectType, v2) & 1) == 0)
    {
      v5 = [objc_opt_self() systemGrayColor];
      goto LABEL_10;
    }

    if (((*(v2 + 56))(ObjectType, v2) & 1) != 0 && (([v0 isSelected] & 1) != 0 || objc_msgSend(v0, sel_isHighlighted)))
    {
      v5 = [objc_opt_self() _carSystemFocusLabelColor];
LABEL_10:
      v6 = v5;
      swift_unknownObjectRelease();
      return v6;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v5 = [objc_opt_self() systemCyanColor];
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v8 = [objc_opt_self() _carSystemPrimaryColor];

  return v8;
}

id CAFUIAutomakerSettingCell.imageColor.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable;
  swift_beginAccess();
  if (*(v0 + v1) && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    return CAFUIAutomakerSettingCell.primaryTextColor.getter();
  }

  else
  {
    return specialized CAFUICellProtocol.defaultImageColor.getter();
  }
}

uint64_t CAFUIAutomakerSettingCell.isHighlightable.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable);
  swift_beginAccess();
  if (*v1)
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 56);
    swift_unknownObjectRetain();
    if (v4(ObjectType, v2))
    {
      if (*v1)
      {
        v5 = v1[1];
        v6 = swift_getObjectType();
        v7 = *(v5 + 40);
        swift_unknownObjectRetain();
        v8 = v7(v6, v5);
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t CAFUIAutomakerSettingCell.isCellEnabled.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable);
  swift_beginAccess();
  if (*v1)
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 40);
    swift_unknownObjectRetain();
    v5 = v4(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t CAFUIAutomakerSettingCell.isInfoButtonEnabled.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable);
  swift_beginAccess();
  if (!*v1)
  {
    goto LABEL_6;
  }

  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 32);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  if (!v5 || (v5, ((*(v2 + 40))(ObjectType, v2) & 1) == 0))
  {
    swift_unknownObjectRelease();
LABEL_6:
    v7 = 0;
    return v7 & 1;
  }

  v6 = CAFListContentRepresentable.isInfoButtonLimitedUI.getter();
  swift_unknownObjectRelease();
  v7 = v6 ^ 1;
  return v7 & 1;
}

uint64_t CAFUIAutomakerSettingCell.representable.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*v5)
  {
    v6 = v5[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 88);
    swift_unknownObjectRetain();
    v8(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v10 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
    result = swift_beginAccess();
    *(v2 + v10) = 0;
  }

  return result;
}

uint64_t CAFUIAutomakerSettingCell.configure(for:isParentCell:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3 & (a1 != 0);
  v6 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
  swift_beginAccess();
  *(v3 + v6) = v5;
  v7 = swift_unknownObjectRetain();
  return CAFUIAutomakerSettingCell.representable.setter(v7, a2);
}

Swift::Void __swiftcall CAFUIAutomakerSettingCell.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CAFUIAutomakerSettingCell();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  CAFUIAutomakerSettingCell.representable.setter(0, 0);
}

uint64_t CAFUIAutomakerSettingCell.canBecomeFocused.getter()
{
  v1 = type metadata accessor for CAFUITileCellConfiguration(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for CAFUIAutomakerSettingCell();
  v15.receiver = v0;
  v15.super_class = v8;
  result = objc_msgSendSuper2(&v15, sel_canBecomeFocused);
  if (result)
  {
    v10 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
    swift_beginAccess();
    outlined init with copy of CAFUITileCellConfiguration?(v0 + v10, v7);
    if ((*(v2 + 48))(v7, 1, v1))
    {
      outlined destroy of CAFUITileCellConfiguration?(v7);
      return 1;
    }

    outlined init with copy of CAFUITileCellConfiguration(v7, v4);
    outlined destroy of CAFUITileCellConfiguration?(v7);
    v11 = *&v4[*(v1 + 32)];
    v12 = v11;
    outlined destroy of CAFUITileCellConfiguration(v4);
    if (!v11)
    {
      return 1;
    }

    type metadata accessor for CAFUINumericInputView();
    v13 = swift_dynamicCastClass() == 0;

    return v13;
  }

  return result;
}

uint64_t CAFUIAutomakerSettingCell.preferredFocusEnvironments.getter()
{
  v1 = type metadata accessor for CAFUITileCellConfiguration(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of CAFUITileCellConfiguration?(v0 + v8, v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    outlined destroy of CAFUITileCellConfiguration?(v7);
  }

  else
  {
    outlined init with copy of CAFUITileCellConfiguration(v7, v4);
    outlined destroy of CAFUITileCellConfiguration?(v7);
    v13 = *&v4[*(v1 + 32)];
    v14 = v13;
    outlined destroy of CAFUITileCellConfiguration(v4);
    if (v13)
    {
      type metadata accessor for CAFUINumericInputView();
      if (swift_dynamicCastClass())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_242423BD0;
        *(v11 + 32) = v14;
        return v11;
      }
    }
  }

  v9 = type metadata accessor for CAFUIAutomakerSettingCell();
  v16.receiver = v0;
  v16.super_class = v9;
  v10 = objc_msgSendSuper2(&v16, sel_preferredFocusEnvironments);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

uint64_t CAFUIAutomakerSettingObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CAFUIAutomakerSettingObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return CAFUIAutomakerSettingObserver.delegate.modify;
}

void CAFUIAutomakerSettingObserver.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t @objc CAFUIAutomakerSettingObserver.BOOLeanSettingService(_:didUpdateUserVisibleDescription:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a3;
  v13 = a1;
  specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(v12, a5, a6, a7);
}

uint64_t CAFUIAutomakerSettingObserver.floatSettingService(_:didUpdateUserVisibleDetailedDescription:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(v11 + 8);
    type metadata accessor for OS_dispatch_queue();
    v15 = static OS_dispatch_queue.main.getter();
    v20 = v7;
    v16 = v15;
    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = a1;
    aBlock[4] = closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)partial apply;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_7;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v19 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x245D0D520](0, v10, v6, v18);
    _Block_release(v18);
    swift_unknownObjectRelease();

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v20);
  }

  return result;
}

uint64_t CAFUIAutomakerSettingObserver.buttonSettingService(_:didUpdateUserVisibleDescription:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[1] = a4;
  v27 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v6 + OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v26[0] = v13;
    v20 = *(v17 + 8);
    type metadata accessor for OS_dispatch_queue();
    v21 = a6;
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    v23[2] = v19;
    v23[3] = v20;
    v23[4] = a1;
    aBlock[4] = v27;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = v21;
    v24 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v25 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x245D0D520](0, v16, v12, v24);
    _Block_release(v24);
    swift_unknownObjectRelease();

    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v16, v26[0]);
  }

  return result;
}

id CAFUIAutomakerSettingObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAFUIAutomakerSettingObserver.init()()
{
  *&v0[OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIAutomakerSettingObserver();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CAFUIAutomakerSettingCell.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id specialized CAFUICellProtocol.defaultImageColor.getter()
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
      v2 = &selRef_systemCyanColor;
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
      v2 = &selRef_systemCyanColor;
    }
  }

  else
  {
    v2 = &selRef_systemGrayColor;
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

uint64_t type metadata accessor for CAFUIAutomakerSettingCell()
{
  result = type metadata singleton initialization cache for CAFUIAutomakerSettingCell;
  if (!type metadata singleton initialization cache for CAFUIAutomakerSettingCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of CAFUITileCellConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CAFUITileCellConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of CAFUITileCellConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CAFUITileCellConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t specialized CAFUIAutomakerSettingObserver.automakerSettingService(_:didUpdateProminenceInfo:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a2;
  v25 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4 + OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v24[0] = v11;
    v18 = *(v15 + 8);
    type metadata accessor for OS_dispatch_queue();
    v19 = a4;
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = v18;
    v21[4] = a1;
    aBlock[4] = v25;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = v19;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v23 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x245D0D520](0, v14, v10, v22);
    _Block_release(v22);
    swift_unknownObjectRelease();

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v24[0]);
  }

  return result;
}

uint64_t sub_24236C934@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_24236C994(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return CAFUIAutomakerSettingCell.representable.setter(v2, v1);
}

uint64_t sub_24236C9D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24236CA2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC5CAFUI29CAFUIAutomakerSettingObserver_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t dispatch thunk of CAFUIAutomakerSettingObserver.multipleSelectImageSettingService(_:didUpdateUserVisibleDescription:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x258))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x298))();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in CAFUIAutomakerSettingObserver.settingUpdated(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(v2, ObjectType, v1);
}

uint64_t SoundSettingPage.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ())?(*(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ())?(*(v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}