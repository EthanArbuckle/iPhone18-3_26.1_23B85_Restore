@interface CSIssue
- (CSIssue)initWithIdentifier:(id)identifier andLaunchdName:(id)name andIssueType:(int)type andStartTime:(id)time andEndTime:(id)endTime;
- (CSIssue)initWithIdentifier:(id)identifier andProcessName:(id)name andIssueType:(int)type andStartTime:(id)time andEndTime:(id)endTime;
- (id)description;
@end

@implementation CSIssue

- (CSIssue)initWithIdentifier:(id)identifier andLaunchdName:(id)name andIssueType:(int)type andStartTime:(id)time andEndTime:(id)endTime
{
  typeCopy = type;
  identifierCopy = identifier;
  nameCopy = name;
  timeCopy = time;
  endTimeCopy = endTime;
  v26.receiver = self;
  v26.super_class = CSIssue;
  v17 = [(CSIssue *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_launchdName, name);
    v18->_issueType = typeCopy;
    objc_storeStrong(&v18->_startTime, time);
    objc_storeStrong(&v18->_endTime, endTime);
    processName = v18->_processName;
    v18->_processName = 0;

    v18->_lastPID = -1;
    lastPUUID = v18->_lastPUUID;
    v18->_lastPUUID = 0;

    value = v18->_value;
    v18->_coalitionID = 0;
    v18->_value = 0;

    rule = v18->_rule;
    v18->_rule = 0;

    *&v18->_mitigationSuggestion = -65281;
    v18->_mitigationSuggestionReason = -1;
    v18->_overridden = 0;
    errorString = v18->_errorString;
    v18->_errorString = 0;

    detectorString = v18->_detectorString;
    v18->_detectorString = 0;
  }

  return v18;
}

- (CSIssue)initWithIdentifier:(id)identifier andProcessName:(id)name andIssueType:(int)type andStartTime:(id)time andEndTime:(id)endTime
{
  typeCopy = type;
  identifierCopy = identifier;
  nameCopy = name;
  timeCopy = time;
  endTimeCopy = endTime;
  v26.receiver = self;
  v26.super_class = CSIssue;
  v17 = [(CSIssue *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_processName, name);
    v18->_issueType = typeCopy;
    objc_storeStrong(&v18->_startTime, time);
    objc_storeStrong(&v18->_endTime, endTime);
    launchdName = v18->_launchdName;
    v18->_launchdName = 0;

    v18->_lastPID = -1;
    lastPUUID = v18->_lastPUUID;
    v18->_lastPUUID = 0;

    value = v18->_value;
    v18->_coalitionID = 0;
    v18->_value = 0;

    rule = v18->_rule;
    v18->_rule = 0;

    *&v18->_mitigationSuggestion = -65281;
    v18->_mitigationSuggestionReason = -1;
    v18->_overridden = 0;
    errorString = v18->_errorString;
    v18->_errorString = 0;

    detectorString = v18->_detectorString;
    v18->_detectorString = 0;
  }

  return v18;
}

- (id)description
{
  v25 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  launchdName = self->_launchdName;
  v26 = getDateFormatter();
  v24 = [v26 stringFromDate:self->_startTime];
  v3 = getDateFormatter();
  v4 = [v3 stringFromDate:self->_endTime];
  [(NSNumber *)self->_value doubleValue];
  v6 = v5;
  processName = self->_processName;
  lastPUUID = self->_lastPUUID;
  coalitionID = self->_coalitionID;
  mitigationSuggestion = self->_mitigationSuggestion;
  forceMitigationSuggestion = self->_forceMitigationSuggestion;
  lastPID = self->_lastPID;
  mitigationSuggestionReason = self->_mitigationSuggestionReason;
  overridden = self->_overridden;
  rule = self->_rule;
  if (rule)
  {
    v16 = self->_processName;
    v21 = v4;
    v17 = self->_lastPID;
    ruleID = [(CSDetectionRule *)rule ruleID];
    lastPID = v17;
    v4 = v21;
    processName = v16;
  }

  else
  {
    ruleID = 0xFFFFFFFFLL;
  }

  v19 = [v25 stringWithFormat:@"CSIssue with nameIdentifier: %@, \nlaunchdName:%@, \nstartTime:%@, \nendTime:%@, \nvalue:%.4f \nprocessName:%@, \npid: %d, \npuuid: %@, \ncoalitionID: %llu, \nmitigationSuggestion: %d, \nforceMitigationSuggestion: %d, \nmitigationSuggestionReason: %d, \noverridden: %d, \nruleID: %d, \nmitigationDecisionType: %d, \nmitigationDecisionReason:%d", identifier, launchdName, v24, v4, v6, processName, lastPID, lastPUUID, coalitionID, mitigationSuggestion, forceMitigationSuggestion, mitigationSuggestionReason, overridden, ruleID, self->_mitigationDecisionType, self->_mitigationDecisionReason];

  return v19;
}

@end