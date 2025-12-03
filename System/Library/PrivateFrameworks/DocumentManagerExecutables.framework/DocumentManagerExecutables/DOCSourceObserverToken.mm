@interface DOCSourceObserverToken
- (DOCSourceObserverToken)init;
@end

@implementation DOCSourceObserverToken

- (DOCSourceObserverToken)init
{
  v6.receiver = self;
  v6.super_class = DOCSourceObserverToken;
  v2 = [(DOCSourceObserverToken *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;
  }

  return v2;
}

@end