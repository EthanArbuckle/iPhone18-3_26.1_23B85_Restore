@interface RTAuthorizedLocationDiagnosticStatus
- (RTAuthorizedLocationDiagnosticStatus)initWithCoder:(id)coder;
- (RTAuthorizedLocationDiagnosticStatus)initWithStatus:(id)status zdrConfirmationList:(id)list;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAuthorizedLocationDiagnosticStatus

- (RTAuthorizedLocationDiagnosticStatus)initWithStatus:(id)status zdrConfirmationList:(id)list
{
  statusCopy = status;
  listCopy = list;
  v12.receiver = self;
  v12.super_class = RTAuthorizedLocationDiagnosticStatus;
  v9 = [(RTAuthorizedLocationDiagnosticStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fullConfirmationList, status);
    objc_storeStrong(&v10->_zdrConfirmationList, list);
  }

  return v10;
}

- (RTAuthorizedLocationDiagnosticStatus)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"RTAuthorizedLocationDiagnosticStatusFullConfirmation"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"RTAuthorizedLocationDiagnosticStatusZdrConfirmation"];

  v13 = [(RTAuthorizedLocationDiagnosticStatus *)self initWithStatus:v8 zdrConfirmationList:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  fullConfirmationList = self->_fullConfirmationList;
  coderCopy = coder;
  [coderCopy encodeObject:fullConfirmationList forKey:@"RTAuthorizedLocationDiagnosticStatusFullConfirmation"];
  [coderCopy encodeObject:self->_zdrConfirmationList forKey:@"RTAuthorizedLocationDiagnosticStatusZdrConfirmation"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  fullConfirmationList = self->_fullConfirmationList;
  zdrConfirmationList = self->_zdrConfirmationList;

  return [v4 initWithStatus:fullConfirmationList zdrConfirmationList:zdrConfirmationList];
}

@end