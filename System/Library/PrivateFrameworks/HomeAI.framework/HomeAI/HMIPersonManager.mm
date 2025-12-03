@interface HMIPersonManager
- (HMIPersonManager)initWithUUID:(id)d homeUUID:(id)iD;
- (HMIPersonManagerDataSource)dataSource;
- (void)handleDataChanged;
- (void)handleRemovedFaceCropWithUUID:(id)d;
- (void)handleRemovedFaceprintWithUUID:(id)d;
- (void)handleRemovedPersonWithUUID:(id)d;
- (void)handleUpdatedFaceprint:(id)faceprint;
- (void)handleUpdatedPerson:(id)person;
- (void)handleUpdatedPersonFaceCrop:(id)crop;
- (void)handleUpdatedUnassociatedFaceCrop:(id)crop;
@end

@implementation HMIPersonManager

- (HMIPersonManager)initWithUUID:(id)d homeUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HMIPersonManager;
  v8 = [(HMIPersonManager *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    UUID = v8->_UUID;
    v8->_UUID = v9;

    v11 = [iDCopy copy];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = v11;
  }

  return v8;
}

- (void)handleDataChanged
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)handleUpdatedPerson:(id)person
{
  personCopy = person;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handleUpdatedUnassociatedFaceCrop:(id)crop
{
  cropCopy = crop;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handleUpdatedPersonFaceCrop:(id)crop
{
  cropCopy = crop;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handleUpdatedFaceprint:(id)faceprint
{
  faceprintCopy = faceprint;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handleRemovedPersonWithUUID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handleRemovedFaceCropWithUUID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handleRemovedFaceprintWithUUID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMIPersonManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end