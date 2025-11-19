@interface _HDUserDomainConceptObserverRecord
- (_HDUserDomainConceptObserverRecord)init;
- (_HDUserDomainConceptObserverRecord)initWithUserDomainConcept:(id)a3 modificationType:(int64_t)a4;
@end

@implementation _HDUserDomainConceptObserverRecord

- (_HDUserDomainConceptObserverRecord)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HDUserDomainConceptObserverRecord)initWithUserDomainConcept:(id)a3 modificationType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _HDUserDomainConceptObserverRecord;
  v8 = [(_HDUserDomainConceptObserverRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userDomainConcept, a3);
    v9->_changeType = a4;
  }

  return v9;
}

@end