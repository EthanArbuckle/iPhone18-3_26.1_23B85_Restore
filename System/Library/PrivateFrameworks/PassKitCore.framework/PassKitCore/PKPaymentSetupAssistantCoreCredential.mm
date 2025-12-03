@interface PKPaymentSetupAssistantCoreCredential
- (PKPaymentSetupAssistantCoreCredential)initWithPaymentCredential:(id)credential;
- (PKPaymentSetupAssistantCoreCredential)initWithPaymentPass:(id)pass;
- (id)description;
@end

@implementation PKPaymentSetupAssistantCoreCredential

- (PKPaymentSetupAssistantCoreCredential)initWithPaymentCredential:(id)credential
{
  v28 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  v23.receiver = self;
  v23.super_class = PKPaymentSetupAssistantCoreCredential;
  v6 = [(PKPaymentSetupAssistantCoreCredential *)&v23 init];
  if (!v6)
  {
    goto LABEL_16;
  }

  longDescription = [credentialCopy longDescription];
  title = v6->_title;
  v6->_title = longDescription;

  v9 = [credentialCopy detailDescriptionWithEnvironment:1];
  subtitle = v6->_subtitle;
  v6->_subtitle = v9;

  objc_storeStrong(&v6->_credential, credential);
  if ([credentialCopy isRemoteCredential])
  {
    remoteCredential = [credentialCopy remoteCredential];
LABEL_6:
    accountCredential = remoteCredential;
    serialNumber = [remoteCredential serialNumber];
LABEL_7:
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = serialNumber;

    goto LABEL_14;
  }

  if ([credentialCopy isLocalPassCredential])
  {
    remoteCredential = [credentialCopy localPassCredential];
    goto LABEL_6;
  }

  if ([credentialCopy isAccountCredential])
  {
    accountCredential = [credentialCopy accountCredential];
    account = [accountCredential account];
    accountIdentifier = [account accountIdentifier];
LABEL_12:
    v17 = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = accountIdentifier;

LABEL_13:
    goto LABEL_14;
  }

  if ([credentialCopy isPeerPaymentCredential])
  {
    accountCredential = [credentialCopy peerPaymentCredential];
    account = [accountCredential account];
    accountIdentifier = [account identifier];
    goto LABEL_12;
  }

  if ([credentialCopy isFPANCredential])
  {
    accountCredential = [credentialCopy fpanCredential];
    serialNumber = [accountCredential longDescription];
    goto LABEL_7;
  }

  accountCredential = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(accountCredential, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    account = NSStringFromClass(v22);
    *buf = 138412546;
    v25 = account;
    v26 = 2112;
    v27 = credentialCopy;
    _os_log_impl(&dword_1AD337000, accountCredential, OS_LOG_TYPE_DEFAULT, "%@: Error - Initialized with payment credential of unsupported type: %@", buf, 0x16u);
    goto LABEL_13;
  }

LABEL_14:

  if (!v6->_uniqueIdentifier)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uUIDString = [v18 UUIDString];
    v20 = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = uUIDString;
  }

LABEL_16:

  return v6;
}

- (PKPaymentSetupAssistantCoreCredential)initWithPaymentPass:(id)pass
{
  passCopy = pass;
  v5 = [[PKPaymentLocalPassCredential alloc] initWithPaymentPass:passCopy];

  v6 = [(PKPaymentSetupAssistantCoreCredential *)self initWithPaymentCredential:v5];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p title: '%@', subtitle: '%@', uniqueID: '%@'>", v5, self, self->_title, self->_subtitle, self->_uniqueIdentifier];;

  return v6;
}

@end