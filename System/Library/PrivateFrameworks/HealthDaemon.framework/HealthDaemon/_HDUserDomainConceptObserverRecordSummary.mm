@interface _HDUserDomainConceptObserverRecordSummary
- (_HDUserDomainConceptObserverRecordSummary)init;
- (_HDUserDomainConceptObserverRecordSummary)initWithJournaledConcepts:(id)concepts addedConcepts:(id)addedConcepts updatedConcepts:(id)updatedConcepts removedConcepts:(id)removedConcepts;
@end

@implementation _HDUserDomainConceptObserverRecordSummary

- (_HDUserDomainConceptObserverRecordSummary)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HDUserDomainConceptObserverRecordSummary)initWithJournaledConcepts:(id)concepts addedConcepts:(id)addedConcepts updatedConcepts:(id)updatedConcepts removedConcepts:(id)removedConcepts
{
  conceptsCopy = concepts;
  addedConceptsCopy = addedConcepts;
  updatedConceptsCopy = updatedConcepts;
  removedConceptsCopy = removedConcepts;
  v24.receiver = self;
  v24.super_class = _HDUserDomainConceptObserverRecordSummary;
  v14 = [(_HDUserDomainConceptObserverRecordSummary *)&v24 init];
  if (v14)
  {
    v15 = [conceptsCopy copy];
    journaledConcepts = v14->_journaledConcepts;
    v14->_journaledConcepts = v15;

    v17 = [addedConceptsCopy copy];
    addedConcepts = v14->_addedConcepts;
    v14->_addedConcepts = v17;

    v19 = [updatedConceptsCopy copy];
    updatedConcepts = v14->_updatedConcepts;
    v14->_updatedConcepts = v19;

    v21 = [removedConceptsCopy copy];
    removedConcepts = v14->_removedConcepts;
    v14->_removedConcepts = v21;
  }

  return v14;
}

@end