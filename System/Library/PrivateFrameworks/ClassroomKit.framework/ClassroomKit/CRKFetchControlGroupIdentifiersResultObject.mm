@interface CRKFetchControlGroupIdentifiersResultObject
- (CRKFetchControlGroupIdentifiersResultObject)initWithCoder:(id)coder;
- (CRKFetchControlGroupIdentifiersResultObject)initWithGroupIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchControlGroupIdentifiersResultObject

- (CRKFetchControlGroupIdentifiersResultObject)initWithGroupIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = CRKFetchControlGroupIdentifiersResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v6;
  }

  return v5;
}

- (CRKFetchControlGroupIdentifiersResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRKFetchControlGroupIdentifiersResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"groupIdentifiers"];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchControlGroupIdentifiersResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchControlGroupIdentifiersResultObject *)self groupIdentifiers:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"groupIdentifiers"];
}

@end