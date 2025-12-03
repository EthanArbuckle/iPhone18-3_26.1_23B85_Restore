@interface IRServicePackageAdapterHome
- (BOOL)generateClassificationsWithCandiatesContainer:(id)container systemState:(id)state historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection date:(id)date;
- (BOOL)shouldAskForLowLatencyMiLo:(id)lo historyEventsAsc:(id)asc;
- (BOOL)shouldRejectEvent:(id)event withHistoryEventsContainer:(id)container withSystemState:(id)state forCandidate:(id)candidate date:(id)date;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (NSString)PREFIX;
- (id)getSignificantBundlesWithCandidates:(id)candidates fromHistory:(id)history;
- (void)setContext:(id)context;
@end

@implementation IRServicePackageAdapterHome

- (NSString)PREFIX
{
  v2 = *(self + OBJC_IVAR___IRServicePackageAdapterHome_PREFIX);
  v3 = *(self + OBJC_IVAR___IRServicePackageAdapterHome_PREFIX + 8);

  v4 = MEMORY[0x259C34C30](v2, v3);

  return v4;
}

- (void)setContext:(id)context
{
  v4 = *(self + OBJC_IVAR___IRServicePackageAdapterHome_context);
  *(self + OBJC_IVAR___IRServicePackageAdapterHome_context) = context;
  contextCopy = context;
}

- (NSDictionary)contexts
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So9IRContextCtGMd, &_ss23_ContiguousArrayStorageCySS_So9IRContextCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2554B27D0;
  v4 = *MEMORY[0x277D21248];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  selfCopy = self;
  *(inited + 48) = [(IRServicePackageAdapterHome *)selfCopy context];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So9IRContextCTt0g5Tf4g_nTm(inited, &_ss18_DictionaryStorageCySSSo9IRContextCGMd, &_ss18_DictionaryStorageCySSSo9IRContextCGMR);
  swift_setDeallocating();
  outlined destroy of (String, IRContext)(inited + 32);

  type metadata accessor for IRCandidateResult(0, &lazy cache variable for type metadata for IRContext, 0x277D212A8);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (NSDictionary)policyInspections
{
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So9IRContextCTt0g5Tf4g_nTm(MEMORY[0x277D84F90], &_ss18_DictionaryStorageCySSSo18IRPolicyInspectionCGMd, &_ss18_DictionaryStorageCySSSo18IRPolicyInspectionCGMR);
  type metadata accessor for IRCandidateResult(0, &lazy cache variable for type metadata for IRPolicyInspection, off_2797E05C0);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)shouldRejectEvent:(id)event withHistoryEventsContainer:(id)container withSystemState:(id)state forCandidate:(id)candidate date:(id)date
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v8 + 8))(v11, v7);
  return 0;
}

- (BOOL)shouldAskForLowLatencyMiLo:(id)lo historyEventsAsc:(id)asc
{
  type metadata accessor for IRCandidateResult(0, &lazy cache variable for type metadata for IRHistoryEventDO, off_2797E04D0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  loCopy = lo;
  selfCopy = self;
  specialized IRServicePackageAdapterHome.shouldAsk(forLowLatencyMiLo:historyEventsAsc:)(loCopy, v6);
  v10 = v9;

  return v10 & 1;
}

- (id)getSignificantBundlesWithCandidates:(id)candidates fromHistory:(id)history
{
  type metadata accessor for IRCandidateResult(0, &lazy cache variable for type metadata for IRBundle, 0x277D21288);
  lazy protocol witness table accessor for type IRCandidateResult and conformance NSObject(&lazy protocol witness table cache variable for type IRBundle and conformance NSObject, &lazy cache variable for type metadata for IRBundle, 0x277D21288);
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)generateClassificationsWithCandiatesContainer:(id)container systemState:(id)state historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection date:(id)date
{
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  containerCopy = container;
  stateCopy = state;
  eventsContainerCopy = eventsContainer;
  predictionCopy = prediction;
  deviceContainerCopy = deviceContainer;
  selfCopy = self;
  LOBYTE(prediction) = specialized IRServicePackageAdapterHome.generateClassifications(withCandiatesContainer:systemState:historyEventsContainer:miloPrediction:nearbyDeviceContainer:fillInspection:date:)(containerCopy, eventsContainerCopy, prediction, v19);

  (*(v16 + 8))(v19, v15);
  return prediction & 1;
}

@end