@interface HMDResidentTakeOverInfo
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentTakeOverInfo)initWithContext:(id)context takeOverTrigger:(unint64_t)trigger;
- (id)description;
@end

@implementation HMDResidentTakeOverInfo

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu of %lu", -[HMDResidentTakeOverInfo ourPositionInList](self, "ourPositionInList") + 1, -[HMDResidentTakeOverInfo totalResidentCount](self, "totalResidentCount")];
  v4 = MEMORY[0x277CCACA8];
  takeOverTrigger = [(HMDResidentTakeOverInfo *)self takeOverTrigger];
  if (takeOverTrigger >= 7)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown trigger: %lu", takeOverTrigger];
  }

  else
  {
    v6 = off_2786728E0[takeOverTrigger];
  }

  takeOverFinding = [(HMDResidentTakeOverInfo *)self takeOverFinding];
  if (takeOverFinding >= 6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown finding: %lu", takeOverFinding];
  }

  else
  {
    v8 = off_278672918[takeOverFinding];
  }

  [(HMDResidentTakeOverInfo *)self hasViablePrimary];
  v9 = HMFBooleanToString();
  viablePrimaryResult = [(HMDResidentTakeOverInfo *)self viablePrimaryResult];
  if (viablePrimaryResult >= 6)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown result: %lu", viablePrimaryResult];
  }

  else
  {
    v11 = off_278672948[viablePrimaryResult];
  }

  bestCandidateForPrimary = [(HMDResidentTakeOverInfo *)self bestCandidateForPrimary];
  shortDescription = [bestCandidateForPrimary shortDescription];
  [(HMDResidentTakeOverInfo *)self finalDecision];
  v14 = HMFBooleanToString();
  v15 = [v4 stringWithFormat:@"evaluation trigger: %@, my pos: %@, take over finding: %@, primary is viable: %@, viable primary check result: %@, best candidate for primary: %@, final decision: %@", v6, v3, v8, v9, v11, shortDescription, v14];

  return v15;
}

- (HMDResidentTakeOverInfo)initWithContext:(id)context takeOverTrigger:(unint64_t)trigger
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = HMDResidentTakeOverInfo;
  v7 = [(HMDResidentTakeOverInfo *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_context, contextCopy);
    v8->_takeOverTrigger = trigger;
    v8->_takeOverFinding = 0;
    v8->_viablePrimaryResult = 0;
    v8->_hasViablePrimary = 0;
    electorsPreferredResidentsList = [contextCopy electorsPreferredResidentsList];
    residentIDSIdentifiers = [electorsPreferredResidentsList residentIDSIdentifiers];

    currentResidentDevice = [contextCopy currentResidentDevice];
    device = [currentResidentDevice device];
    idsIdentifier = [device idsIdentifier];
    v8->_ourPositionInList = [residentIDSIdentifiers indexOfObject:idsIdentifier];

    v8->_totalResidentCount = [residentIDSIdentifiers count];
    v8->_weAreQualifiedToTakeOver = 0;
    v8->_finalDecision = 0;
  }

  return v8;
}

@end