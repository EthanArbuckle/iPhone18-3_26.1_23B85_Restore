@interface HMDResidentTakeOverInfo
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentTakeOverInfo)initWithContext:(id)a3 takeOverTrigger:(unint64_t)a4;
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
  v5 = [(HMDResidentTakeOverInfo *)self takeOverTrigger];
  if (v5 >= 7)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown trigger: %lu", v5];
  }

  else
  {
    v6 = off_2786728E0[v5];
  }

  v7 = [(HMDResidentTakeOverInfo *)self takeOverFinding];
  if (v7 >= 6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown finding: %lu", v7];
  }

  else
  {
    v8 = off_278672918[v7];
  }

  [(HMDResidentTakeOverInfo *)self hasViablePrimary];
  v9 = HMFBooleanToString();
  v10 = [(HMDResidentTakeOverInfo *)self viablePrimaryResult];
  if (v10 >= 6)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown result: %lu", v10];
  }

  else
  {
    v11 = off_278672948[v10];
  }

  v12 = [(HMDResidentTakeOverInfo *)self bestCandidateForPrimary];
  v13 = [v12 shortDescription];
  [(HMDResidentTakeOverInfo *)self finalDecision];
  v14 = HMFBooleanToString();
  v15 = [v4 stringWithFormat:@"evaluation trigger: %@, my pos: %@, take over finding: %@, primary is viable: %@, viable primary check result: %@, best candidate for primary: %@, final decision: %@", v6, v3, v8, v9, v11, v13, v14];

  return v15;
}

- (HMDResidentTakeOverInfo)initWithContext:(id)a3 takeOverTrigger:(unint64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = HMDResidentTakeOverInfo;
  v7 = [(HMDResidentTakeOverInfo *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_context, v6);
    v8->_takeOverTrigger = a4;
    v8->_takeOverFinding = 0;
    v8->_viablePrimaryResult = 0;
    v8->_hasViablePrimary = 0;
    v9 = [v6 electorsPreferredResidentsList];
    v10 = [v9 residentIDSIdentifiers];

    v11 = [v6 currentResidentDevice];
    v12 = [v11 device];
    v13 = [v12 idsIdentifier];
    v8->_ourPositionInList = [v10 indexOfObject:v13];

    v8->_totalResidentCount = [v10 count];
    v8->_weAreQualifiedToTakeOver = 0;
    v8->_finalDecision = 0;
  }

  return v8;
}

@end