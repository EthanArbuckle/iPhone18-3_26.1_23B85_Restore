@interface IRServicePackageAdapterHome
- (BOOL)generateClassificationsWithCandiatesContainer:(id)a3 systemState:(id)a4 historyEventsContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 fillInspection:(BOOL)a8 date:(id)a9;
- (BOOL)shouldAskForLowLatencyMiLo:(id)a3 historyEventsAsc:(id)a4;
- (BOOL)shouldRejectEvent:(id)a3 withHistoryEventsContainer:(id)a4 withSystemState:(id)a5 forCandidate:(id)a6 date:(id)a7;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (NSString)PREFIX;
- (id)getSignificantBundlesWithCandidates:(id)a3 fromHistory:(id)a4;
- (void)setContext:(id)a3;
@end

@implementation IRServicePackageAdapterHome

- (NSString)PREFIX
{
  v2 = *(self + OBJC_IVAR___IRServicePackageAdapterHome_PREFIX);
  v3 = *(self + OBJC_IVAR___IRServicePackageAdapterHome_PREFIX + 8);

  v4 = MEMORY[0x259C34C30](v2, v3);

  return v4;
}

- (void)setContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___IRServicePackageAdapterHome_context);
  *(self + OBJC_IVAR___IRServicePackageAdapterHome_context) = a3;
  v3 = a3;
}

- (NSDictionary)contexts
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So9IRContextCtGMd, &_ss23_ContiguousArrayStorageCySS_So9IRContextCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2554B27D0;
  v4 = *MEMORY[0x277D21248];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  v6 = self;
  *(inited + 48) = [(IRServicePackageAdapterHome *)v6 context];
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

- (BOOL)shouldRejectEvent:(id)a3 withHistoryEventsContainer:(id)a4 withSystemState:(id)a5 forCandidate:(id)a6 date:(id)a7
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

- (BOOL)shouldAskForLowLatencyMiLo:(id)a3 historyEventsAsc:(id)a4
{
  type metadata accessor for IRCandidateResult(0, &lazy cache variable for type metadata for IRHistoryEventDO, off_2797E04D0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized IRServicePackageAdapterHome.shouldAsk(forLowLatencyMiLo:historyEventsAsc:)(v7, v6);
  v10 = v9;

  return v10 & 1;
}

- (id)getSignificantBundlesWithCandidates:(id)a3 fromHistory:(id)a4
{
  type metadata accessor for IRCandidateResult(0, &lazy cache variable for type metadata for IRBundle, 0x277D21288);
  lazy protocol witness table accessor for type IRCandidateResult and conformance NSObject(&lazy protocol witness table cache variable for type IRBundle and conformance NSObject, &lazy cache variable for type metadata for IRBundle, 0x277D21288);
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)generateClassificationsWithCandiatesContainer:(id)a3 systemState:(id)a4 historyEventsContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 fillInspection:(BOOL)a8 date:(id)a9
{
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = self;
  LOBYTE(a6) = specialized IRServicePackageAdapterHome.generateClassifications(withCandiatesContainer:systemState:historyEventsContainer:miloPrediction:nearbyDeviceContainer:fillInspection:date:)(v20, v22, a6, v19);

  (*(v16 + 8))(v19, v15);
  return a6 & 1;
}

@end