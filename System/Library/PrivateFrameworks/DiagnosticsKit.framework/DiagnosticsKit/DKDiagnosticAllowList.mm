@interface DKDiagnosticAllowList
- (BOOL)containsIdentifier:(id)a3;
- (DKDiagnosticAllowList)initWithIdentifiers:(id)a3 contactMessage:(id)a4;
@end

@implementation DKDiagnosticAllowList

- (DKDiagnosticAllowList)initWithIdentifiers:(id)a3 contactMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DKDiagnosticAllowList;
  v8 = [(DKDiagnosticAllowList *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    contactMessage = v8->_contactMessage;
    v8->_contactMessage = v9;

    v11 = [v6 copy];
    allowList = v8->_allowList;
    v8->_allowList = v11;
  }

  return v8;
}

- (BOOL)containsIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticAllowList *)self allowList];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end