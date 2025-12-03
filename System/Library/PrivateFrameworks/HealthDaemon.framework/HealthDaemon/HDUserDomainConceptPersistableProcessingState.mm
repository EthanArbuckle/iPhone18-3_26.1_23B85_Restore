@interface HDUserDomainConceptPersistableProcessingState
+ (BOOL)fetchFromKeyValueDomain:(id)domain stateOut:(id *)out error:(id *)error;
- (BOOL)persistInKeyValueDomain:(id)domain error:(id *)error;
- (HDUserDomainConceptPersistableProcessingState)init;
- (HDUserDomainConceptPersistableProcessingState)initWithAnchor:(int64_t)anchor ontologyVersion:(int64_t)version maximumPropertyType:(int64_t)type;
- (HDUserDomainConceptPersistableProcessingState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (HDUserDomainConceptPersistableProcessingState)initWithAnchor:(int64_t)anchor ontologyVersion:(int64_t)version maximumPropertyType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = HDUserDomainConceptPersistableProcessingState;
  result = [(HDUserDomainConceptPersistableProcessingState *)&v9 init];
  if (result)
  {
    result->_anchor = anchor;
    result->_ontologyVersion = version;
    result->_maximumPropertyType = type;
  }

  return result;
}

- (HDUserDomainConceptPersistableProcessingState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HDUserDomainConceptPersistableProcessingState;
  v5 = [(HDUserDomainConceptPersistableProcessingState *)&v7 init];
  if (v5)
  {
    v5->_anchor = [coderCopy decodeInt64ForKey:@"Anchor"];
    v5->_ontologyVersion = [coderCopy decodeIntegerForKey:@"OntologyVersion"];
    v5->_maximumPropertyType = [coderCopy decodeIntegerForKey:@"MaximumPropertyType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  anchor = self->_anchor;
  coderCopy = coder;
  [coderCopy encodeInt64:anchor forKey:@"Anchor"];
  [coderCopy encodeInteger:self->_ontologyVersion forKey:@"OntologyVersion"];
  [coderCopy encodeInteger:self->_maximumPropertyType forKey:@"MaximumPropertyType"];
}

+ (BOOL)fetchFromKeyValueDomain:(id)domain stateOut:(id *)out error:(id *)error
{
  v13 = 0;
  v7 = [domain dataForKey:@"LastProcessedUserDomainConceptStateKey" error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    if (out)
    {
      *out = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
    }

    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  if (error)
  {
    v10 = v8;
    v11 = 0;
    *error = v9;
  }

  else
  {
    _HKLogDroppedError();
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (BOOL)persistInKeyValueDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:error];
  if (v7)
  {
    v8 = [domainCopy setData:v7 forKey:@"LastProcessedUserDomainConceptStateKey" error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end