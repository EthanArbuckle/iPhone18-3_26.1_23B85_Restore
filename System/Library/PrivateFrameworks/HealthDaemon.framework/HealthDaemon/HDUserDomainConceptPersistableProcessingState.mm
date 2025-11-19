@interface HDUserDomainConceptPersistableProcessingState
+ (BOOL)fetchFromKeyValueDomain:(id)a3 stateOut:(id *)a4 error:(id *)a5;
- (BOOL)persistInKeyValueDomain:(id)a3 error:(id *)a4;
- (HDUserDomainConceptPersistableProcessingState)init;
- (HDUserDomainConceptPersistableProcessingState)initWithAnchor:(int64_t)a3 ontologyVersion:(int64_t)a4 maximumPropertyType:(int64_t)a5;
- (HDUserDomainConceptPersistableProcessingState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDUserDomainConceptPersistableProcessingState

- (HDUserDomainConceptPersistableProcessingState)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDUserDomainConceptPersistableProcessingState)initWithAnchor:(int64_t)a3 ontologyVersion:(int64_t)a4 maximumPropertyType:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = HDUserDomainConceptPersistableProcessingState;
  result = [(HDUserDomainConceptPersistableProcessingState *)&v9 init];
  if (result)
  {
    result->_anchor = a3;
    result->_ontologyVersion = a4;
    result->_maximumPropertyType = a5;
  }

  return result;
}

- (HDUserDomainConceptPersistableProcessingState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HDUserDomainConceptPersistableProcessingState;
  v5 = [(HDUserDomainConceptPersistableProcessingState *)&v7 init];
  if (v5)
  {
    v5->_anchor = [v4 decodeInt64ForKey:@"Anchor"];
    v5->_ontologyVersion = [v4 decodeIntegerForKey:@"OntologyVersion"];
    v5->_maximumPropertyType = [v4 decodeIntegerForKey:@"MaximumPropertyType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  anchor = self->_anchor;
  v5 = a3;
  [v5 encodeInt64:anchor forKey:@"Anchor"];
  [v5 encodeInteger:self->_ontologyVersion forKey:@"OntologyVersion"];
  [v5 encodeInteger:self->_maximumPropertyType forKey:@"MaximumPropertyType"];
}

+ (BOOL)fetchFromKeyValueDomain:(id)a3 stateOut:(id *)a4 error:(id *)a5
{
  v13 = 0;
  v7 = [a3 dataForKey:@"LastProcessedUserDomainConceptStateKey" error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
    }

    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  if (a5)
  {
    v10 = v8;
    v11 = 0;
    *a5 = v9;
  }

  else
  {
    _HKLogDroppedError();
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (BOOL)persistInKeyValueDomain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:a4];
  if (v7)
  {
    v8 = [v6 setData:v7 forKey:@"LastProcessedUserDomainConceptStateKey" error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end