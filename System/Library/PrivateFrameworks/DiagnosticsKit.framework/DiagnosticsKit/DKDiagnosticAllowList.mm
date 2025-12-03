@interface DKDiagnosticAllowList
- (BOOL)containsIdentifier:(id)identifier;
- (DKDiagnosticAllowList)initWithIdentifiers:(id)identifiers contactMessage:(id)message;
@end

@implementation DKDiagnosticAllowList

- (DKDiagnosticAllowList)initWithIdentifiers:(id)identifiers contactMessage:(id)message
{
  identifiersCopy = identifiers;
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = DKDiagnosticAllowList;
  v8 = [(DKDiagnosticAllowList *)&v14 init];
  if (v8)
  {
    v9 = [messageCopy copy];
    contactMessage = v8->_contactMessage;
    v8->_contactMessage = v9;

    v11 = [identifiersCopy copy];
    allowList = v8->_allowList;
    v8->_allowList = v11;
  }

  return v8;
}

- (BOOL)containsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allowList = [(DKDiagnosticAllowList *)self allowList];
  v6 = [allowList containsObject:identifierCopy];

  return v6;
}

@end