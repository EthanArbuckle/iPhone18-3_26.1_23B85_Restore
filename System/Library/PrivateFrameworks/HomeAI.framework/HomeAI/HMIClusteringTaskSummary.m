@interface HMIClusteringTaskSummary
- (HMIClusteringTaskSummary)init;
- (id)attributeDescriptions;
@end

@implementation HMIClusteringTaskSummary

- (HMIClusteringTaskSummary)init
{
  v6.receiver = self;
  v6.super_class = HMIClusteringTaskSummary;
  v2 = [(HMIClusteringTaskSummary *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfFaceprintsClustered = 0;
    v2->_numberOfClusters = 0;
    v2->_numberOfPersonsCreated = 0;
    v2->_numberOfUnknownFaceprintsAssociated = 0;
    v2->_faceprintingDuration = 0.0;
    v2->_clusteringDuration = 0.0;
    v2->_totalDuration = 0.0;
    error = v2->_error;
    v2->_error = 0;
  }

  return v3;
}

- (id)attributeDescriptions
{
  v32[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMIClusteringTaskSummary numberOfFaceprintsClustered](self, "numberOfFaceprintsClustered")}];
  v30 = [v3 initWithName:@"Faceprints" value:v31];
  v32[0] = v30;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMIClusteringTaskSummary numberOfClusters](self, "numberOfClusters")}];
  v28 = [v4 initWithName:@"Clusters" value:v29];
  v32[1] = v28;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMIClusteringTaskSummary numberOfPersonsCreated](self, "numberOfPersonsCreated")}];
  v26 = [v5 initWithName:@"Persons" value:v27];
  v32[2] = v26;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMIClusteringTaskSummary numberOfUnknownFaceprintsAssociated](self, "numberOfUnknownFaceprintsAssociated")}];
  v7 = [v6 initWithName:@"Associated" value:v25];
  v32[3] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self faceprintingDuration];
  v10 = [v9 numberWithDouble:?];
  v11 = [v8 initWithName:@"Faceprinting Duration" value:v10];
  v32[4] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self clusteringDuration];
  v14 = [v13 numberWithDouble:?];
  v15 = [v12 initWithName:@"Clustering Duration" value:v14];
  v32[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  v17 = MEMORY[0x277CCABB0];
  [(HMIClusteringTaskSummary *)self totalDuration];
  v18 = [v17 numberWithDouble:?];
  v19 = [v16 initWithName:@"Total Duration" value:v18];
  v32[6] = v19;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMIClusteringTaskSummary *)self error];
  v22 = [v20 initWithName:@"Error" value:v21];
  v32[7] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:8];

  return v23;
}

@end