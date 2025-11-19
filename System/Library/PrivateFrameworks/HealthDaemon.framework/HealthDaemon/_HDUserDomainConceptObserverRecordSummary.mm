@interface _HDUserDomainConceptObserverRecordSummary
- (_HDUserDomainConceptObserverRecordSummary)init;
- (_HDUserDomainConceptObserverRecordSummary)initWithJournaledConcepts:(id)a3 addedConcepts:(id)a4 updatedConcepts:(id)a5 removedConcepts:(id)a6;
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

- (_HDUserDomainConceptObserverRecordSummary)initWithJournaledConcepts:(id)a3 addedConcepts:(id)a4 updatedConcepts:(id)a5 removedConcepts:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = _HDUserDomainConceptObserverRecordSummary;
  v14 = [(_HDUserDomainConceptObserverRecordSummary *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    journaledConcepts = v14->_journaledConcepts;
    v14->_journaledConcepts = v15;

    v17 = [v11 copy];
    addedConcepts = v14->_addedConcepts;
    v14->_addedConcepts = v17;

    v19 = [v12 copy];
    updatedConcepts = v14->_updatedConcepts;
    v14->_updatedConcepts = v19;

    v21 = [v13 copy];
    removedConcepts = v14->_removedConcepts;
    v14->_removedConcepts = v21;
  }

  return v14;
}

@end