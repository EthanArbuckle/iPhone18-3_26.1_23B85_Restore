@interface IEInputGroup
- (IEInputGroup)initWithId:(id)id;
@end

@implementation IEInputGroup

- (IEInputGroup)initWithId:(id)id
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = IEInputGroup;
  v6 = [(IEInputGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputGroupId, id);
    *&v7->_listenAfterSpeaking = 257;
    dialogPhase = v7->_dialogPhase;
    v7->_dialogPhase = &stru_28671CC40;

    nlParameters = v7->_nlParameters;
    v7->_nlParameters = MEMORY[0x277CBEC10];
  }

  return v7;
}

@end