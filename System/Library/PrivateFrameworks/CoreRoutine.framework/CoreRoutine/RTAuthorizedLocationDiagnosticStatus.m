@interface RTAuthorizedLocationDiagnosticStatus
- (RTAuthorizedLocationDiagnosticStatus)initWithCoder:(id)a3;
- (RTAuthorizedLocationDiagnosticStatus)initWithStatus:(id)a3 zdrConfirmationList:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTAuthorizedLocationDiagnosticStatus

- (RTAuthorizedLocationDiagnosticStatus)initWithStatus:(id)a3 zdrConfirmationList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTAuthorizedLocationDiagnosticStatus;
  v9 = [(RTAuthorizedLocationDiagnosticStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fullConfirmationList, a3);
    objc_storeStrong(&v10->_zdrConfirmationList, a4);
  }

  return v10;
}

- (RTAuthorizedLocationDiagnosticStatus)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"RTAuthorizedLocationDiagnosticStatusFullConfirmation"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"RTAuthorizedLocationDiagnosticStatusZdrConfirmation"];

  v13 = [(RTAuthorizedLocationDiagnosticStatus *)self initWithStatus:v8 zdrConfirmationList:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  fullConfirmationList = self->_fullConfirmationList;
  v5 = a3;
  [v5 encodeObject:fullConfirmationList forKey:@"RTAuthorizedLocationDiagnosticStatusFullConfirmation"];
  [v5 encodeObject:self->_zdrConfirmationList forKey:@"RTAuthorizedLocationDiagnosticStatusZdrConfirmation"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  fullConfirmationList = self->_fullConfirmationList;
  zdrConfirmationList = self->_zdrConfirmationList;

  return [v4 initWithStatus:fullConfirmationList zdrConfirmationList:zdrConfirmationList];
}

@end