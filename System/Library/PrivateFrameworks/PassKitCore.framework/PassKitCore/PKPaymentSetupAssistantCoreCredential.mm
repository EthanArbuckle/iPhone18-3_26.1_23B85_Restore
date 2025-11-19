@interface PKPaymentSetupAssistantCoreCredential
- (PKPaymentSetupAssistantCoreCredential)initWithPaymentCredential:(id)a3;
- (PKPaymentSetupAssistantCoreCredential)initWithPaymentPass:(id)a3;
- (id)description;
@end

@implementation PKPaymentSetupAssistantCoreCredential

- (PKPaymentSetupAssistantCoreCredential)initWithPaymentCredential:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23.receiver = self;
  v23.super_class = PKPaymentSetupAssistantCoreCredential;
  v6 = [(PKPaymentSetupAssistantCoreCredential *)&v23 init];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = [v5 longDescription];
  title = v6->_title;
  v6->_title = v7;

  v9 = [v5 detailDescriptionWithEnvironment:1];
  subtitle = v6->_subtitle;
  v6->_subtitle = v9;

  objc_storeStrong(&v6->_credential, a3);
  if ([v5 isRemoteCredential])
  {
    v11 = [v5 remoteCredential];
LABEL_6:
    v12 = v11;
    v13 = [v11 serialNumber];
LABEL_7:
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v13;

    goto LABEL_14;
  }

  if ([v5 isLocalPassCredential])
  {
    v11 = [v5 localPassCredential];
    goto LABEL_6;
  }

  if ([v5 isAccountCredential])
  {
    v12 = [v5 accountCredential];
    v15 = [v12 account];
    v16 = [v15 accountIdentifier];
LABEL_12:
    v17 = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v16;

LABEL_13:
    goto LABEL_14;
  }

  if ([v5 isPeerPaymentCredential])
  {
    v12 = [v5 peerPaymentCredential];
    v15 = [v12 account];
    v16 = [v15 identifier];
    goto LABEL_12;
  }

  if ([v5 isFPANCredential])
  {
    v12 = [v5 fpanCredential];
    v13 = [v12 longDescription];
    goto LABEL_7;
  }

  v12 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v15 = NSStringFromClass(v22);
    *buf = 138412546;
    v25 = v15;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "%@: Error - Initialized with payment credential of unsupported type: %@", buf, 0x16u);
    goto LABEL_13;
  }

LABEL_14:

  if (!v6->_uniqueIdentifier)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v19 = [v18 UUIDString];
    v20 = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v19;
  }

LABEL_16:

  return v6;
}

- (PKPaymentSetupAssistantCoreCredential)initWithPaymentPass:(id)a3
{
  v4 = a3;
  v5 = [[PKPaymentLocalPassCredential alloc] initWithPaymentPass:v4];

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