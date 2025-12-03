@interface _HDUserDomainConceptObserverRecord
- (_HDUserDomainConceptObserverRecord)init;
- (_HDUserDomainConceptObserverRecord)initWithUserDomainConcept:(id)concept modificationType:(int64_t)type;
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

- (_HDUserDomainConceptObserverRecord)initWithUserDomainConcept:(id)concept modificationType:(int64_t)type
{
  conceptCopy = concept;
  v11.receiver = self;
  v11.super_class = _HDUserDomainConceptObserverRecord;
  v8 = [(_HDUserDomainConceptObserverRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userDomainConcept, concept);
    v9->_changeType = type;
  }

  return v9;
}

@end