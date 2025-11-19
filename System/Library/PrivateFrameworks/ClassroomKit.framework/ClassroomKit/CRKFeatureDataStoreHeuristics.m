@interface CRKFeatureDataStoreHeuristics
@end

@implementation CRKFeatureDataStoreHeuristics

void __62__CRKFeatureDataStoreHeuristics_MCX_overrideIsForcedByFeature__block_invoke()
{
  v12[2] = *MEMORY[0x277D85DE8];
  v0 = +[CRKRestrictions remoteScreenObservationAllowed];
  v11[0] = v0;
  v1 = +[CRKRestrictions screenShotAllowed];
  v10 = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[0] = v2;
  v3 = +[CRKRestrictions classroomScreenObservationAllowed];
  v11[1] = v3;
  v4 = +[CRKRestrictions remoteScreenObservationAllowed];
  v5 = +[CRKRestrictions screenShotAllowed];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = overrideIsForcedByFeature_overrideIsForcedByFeature;
  overrideIsForcedByFeature_overrideIsForcedByFeature = v7;
}

void __62__CRKFeatureDataStoreHeuristics_MCX_overrideFeaturesByFeature__block_invoke()
{
  v12[2] = *MEMORY[0x277D85DE8];
  v0 = +[CRKRestrictions remoteScreenObservationAllowed];
  v11[0] = v0;
  v1 = +[CRKRestrictions screenShotAllowed];
  v10 = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[0] = v2;
  v3 = +[CRKRestrictions classroomScreenObservationAllowed];
  v11[1] = v3;
  v4 = +[CRKRestrictions remoteScreenObservationAllowed];
  v5 = +[CRKRestrictions screenShotAllowed];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = overrideFeaturesByFeature_overrideFeaturesByFeature;
  overrideFeaturesByFeature_overrideFeaturesByFeature = v7;
}

@end