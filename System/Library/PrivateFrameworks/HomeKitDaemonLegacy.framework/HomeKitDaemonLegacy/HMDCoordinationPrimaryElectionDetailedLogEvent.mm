@interface HMDCoordinationPrimaryElectionDetailedLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCoordinationPrimaryElectionDetailedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(HMDCoordinationPrimaryElectionLogEvent *)self isPrimary])
  {
    v4 = &unk_286628D50;
  }

  else
  {
    v4 = &unk_286628D68;
  }

  [dictionary setObject:v4 forKeyedSubscript:@"isPrimary"];
  if ([(HMDCoordinationPrimaryElectionLogEvent *)self didChangePrimary])
  {
    v5 = &unk_286628D50;
  }

  else
  {
    v5 = &unk_286628D68;
  }

  [dictionary setObject:v5 forKeyedSubscript:@"didChangePrimary"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self electionTriggerReason]== 1)
  {
    v6 = &unk_286628D50;
  }

  else
  {
    v6 = &unk_286628D68;
  }

  [dictionary setObject:v6 forKeyedSubscript:@"triggerReasonCoordinationUpdate"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self electionTriggerReason])
  {
    v7 = &unk_286628D68;
  }

  else
  {
    v7 = &unk_286628D50;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"triggerReasonPrimaryPingTimeout"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self electionTriggerReason]== 2)
  {
    v8 = &unk_286628D50;
  }

  else
  {
    v8 = &unk_286628D68;
  }

  [dictionary setObject:v8 forKeyedSubscript:@"triggerReasonCoordinationPrimaryMesh"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self electionTriggerReason]== 3)
  {
    v9 = &unk_286628D50;
  }

  else
  {
    v9 = &unk_286628D68;
  }

  [dictionary setObject:v9 forKeyedSubscript:@"triggerReasonUnknownMeshState"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self electionTriggerReason]== 4)
  {
    v10 = &unk_286628D50;
  }

  else
  {
    v10 = &unk_286628D68;
  }

  [dictionary setObject:v10 forKeyedSubscript:@"triggerReasonPrimaryMissing"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self electionTriggerReason]== 5)
  {
    v11 = &unk_286628D50;
  }

  else
  {
    v11 = &unk_286628D68;
  }

  [dictionary setObject:v11 forKeyedSubscript:@"triggerReasonNodesAdded"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self electionTriggerReason]== 6)
  {
    v12 = &unk_286628D50;
  }

  else
  {
    v12 = &unk_286628D68;
  }

  [dictionary setObject:v12 forKeyedSubscript:@"triggerReasonCoordinationLeaderChange"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria])
  {
    v13 = &unk_286628D68;
  }

  else
  {
    v13 = &unk_286628D50;
  }

  [dictionary setObject:v13 forKeyedSubscript:@"confirmationCriteriaSame"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 1)
  {
    v14 = &unk_286628D50;
  }

  else
  {
    v14 = &unk_286628D68;
  }

  [dictionary setObject:v14 forKeyedSubscript:@"confirmationCriteriaEnabled"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 2)
  {
    v15 = &unk_286628D50;
  }

  else
  {
    v15 = &unk_286628D68;
  }

  [dictionary setObject:v15 forKeyedSubscript:@"confirmationCriteriaCapabilities"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 3)
  {
    v16 = &unk_286628D50;
  }

  else
  {
    v16 = &unk_286628D68;
  }

  [dictionary setObject:v16 forKeyedSubscript:@"confirmationCriteriaLocation"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 4)
  {
    v17 = &unk_286628D50;
  }

  else
  {
    v17 = &unk_286628D68;
  }

  [dictionary setObject:v17 forKeyedSubscript:@"confirmationCriteriaProduct"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 5)
  {
    v18 = &unk_286628D50;
  }

  else
  {
    v18 = &unk_286628D68;
  }

  [dictionary setObject:v18 forKeyedSubscript:@"confirmationCriteriaVersion"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 16)
  {
    v19 = &unk_286628D50;
  }

  else
  {
    v19 = &unk_286628D68;
  }

  [dictionary setObject:v19 forKeyedSubscript:@"confirmationCriteriaSoftwareVersion"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 6)
  {
    v20 = &unk_286628D50;
  }

  else
  {
    v20 = &unk_286628D68;
  }

  [dictionary setObject:v20 forKeyedSubscript:@"confirmationCriteriaMajorVersion"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 7)
  {
    v21 = &unk_286628D50;
  }

  else
  {
    v21 = &unk_286628D68;
  }

  [dictionary setObject:v21 forKeyedSubscript:@"confirmationCriteriaMinorVersion"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 8)
  {
    v22 = &unk_286628D50;
  }

  else
  {
    v22 = &unk_286628D68;
  }

  [dictionary setObject:v22 forKeyedSubscript:@"confirmationCriteriaElectionVersion"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 9)
  {
    v23 = &unk_286628D50;
  }

  else
  {
    v23 = &unk_286628D68;
  }

  [dictionary setObject:v23 forKeyedSubscript:@"confirmationCriteriaReachableAccessories"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 10)
  {
    v24 = &unk_286628D50;
  }

  else
  {
    v24 = &unk_286628D68;
  }

  [dictionary setObject:v24 forKeyedSubscript:@"confirmationCriteriaCurrentPrimary"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 11)
  {
    v25 = &unk_286628D50;
  }

  else
  {
    v25 = &unk_286628D68;
  }

  [dictionary setObject:v25 forKeyedSubscript:@"confirmationCriteriaCurrentDevice"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 12)
  {
    v26 = &unk_286628D50;
  }

  else
  {
    v26 = &unk_286628D68;
  }

  [dictionary setObject:v26 forKeyedSubscript:@"confirmationCriteriaOverride"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 13)
  {
    v27 = &unk_286628D50;
  }

  else
  {
    v27 = &unk_286628D68;
  }

  [dictionary setObject:v27 forKeyedSubscript:@"confirmationCriteriaIDSIdentifier"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 14)
  {
    v28 = &unk_286628D50;
  }

  else
  {
    v28 = &unk_286628D68;
  }

  [dictionary setObject:v28 forKeyedSubscript:@"confirmationCriteriaConnectionType"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self confirmationCriteria]== 15)
  {
    v29 = &unk_286628D50;
  }

  else
  {
    v29 = &unk_286628D68;
  }

  [dictionary setObject:v29 forKeyedSubscript:@"confirmationCriteriaPCSEnabled"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self meshAndPrimaryCandidateCountEqual])
  {
    v30 = &unk_286628D50;
  }

  else
  {
    v30 = &unk_286628D68;
  }

  [dictionary setObject:v30 forKeyedSubscript:@"meshAndPrimaryCountEqual"];
  if ([(HMDCoordinationPrimaryElectionDetailedLogEvent *)self previousPrimaryInMesh])
  {
    v31 = &unk_286628D50;
  }

  else
  {
    v31 = &unk_286628D68;
  }

  [dictionary setObject:v31 forKeyedSubscript:@"previousPrimaryInMesh"];
  v32 = [dictionary copy];

  return v32;
}

@end