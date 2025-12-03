@interface PKPaymentMerchantSession
+ (PKPaymentMerchantSession)paymentMerchantSessionWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentMerchantSession:(id)session;
- (BOOL)supportsURL:(id)l;
- (PKPaymentMerchantSession)init;
- (PKPaymentMerchantSession)initWithCoder:(id)coder;
- (PKPaymentMerchantSession)initWithDictionary:(NSDictionary *)dictionary;
- (PKPaymentMerchantSession)initWithMerchantIdentifier:(id)identifier merchantSessionIdentifier:(id)sessionIdentifier nonce:(id)nonce epochTimestamp:(unint64_t)timestamp expiresAt:(unint64_t)at displayName:(id)name initiativeContext:(id)context initiative:(id)self0 ampEnrollmentPinning:(id)self1 operationalAnalyticsIdentifier:(id)self2 signedFields:(id)self3 signature:(id)self4;
- (PKPaymentMerchantSession)initWithMerchantIdentifier:(id)identifier merchantSessionIdentifier:(id)sessionIdentifier nonce:(id)nonce epochTimestamp:(unint64_t)timestamp expiresAt:(unint64_t)at domain:(id)domain displayName:(id)name operationalAnalyticsIdentifier:(id)self0 signature:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobuf;
- (id)signedData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentMerchantSession

- (PKPaymentMerchantSession)init
{
  data = [MEMORY[0x1E695DEF0] data];
  v4 = [(PKPaymentMerchantSession *)self initWithMerchantIdentifier:&stru_1F227FD28 merchantSessionIdentifier:&stru_1F227FD28 nonce:&stru_1F227FD28 epochTimestamp:0 domain:&stru_1F227FD28 displayName:&stru_1F227FD28 signature:data];

  return v4;
}

- (PKPaymentMerchantSession)initWithMerchantIdentifier:(id)identifier merchantSessionIdentifier:(id)sessionIdentifier nonce:(id)nonce epochTimestamp:(unint64_t)timestamp expiresAt:(unint64_t)at domain:(id)domain displayName:(id)name operationalAnalyticsIdentifier:(id)self0 signature:(id)self1
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  nonceCopy = nonce;
  domainCopy = domain;
  nameCopy = name;
  analyticsIdentifierCopy = analyticsIdentifier;
  signatureCopy = signature;
  v40.receiver = self;
  v40.super_class = PKPaymentMerchantSession;
  v24 = [(PKPaymentMerchantSession *)&v40 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    merchantIdentifier = v24->_merchantIdentifier;
    v24->_merchantIdentifier = v25;

    v27 = [sessionIdentifierCopy copy];
    merchantSessionIdentifier = v24->_merchantSessionIdentifier;
    v24->_merchantSessionIdentifier = v27;

    v29 = [nonceCopy copy];
    nonce = v24->_nonce;
    v24->_nonce = v29;

    v24->_epochTimestamp = timestamp;
    v24->_expiresAt = at;
    v31 = [domainCopy copy];
    domain = v24->_domain;
    v24->_domain = v31;

    v33 = [nameCopy copy];
    displayName = v24->_displayName;
    v24->_displayName = v33;

    v35 = [analyticsIdentifierCopy copy];
    operationalAnalyticsIdentifier = v24->_operationalAnalyticsIdentifier;
    v24->_operationalAnalyticsIdentifier = v35;

    v37 = [signatureCopy copy];
    signature = v24->_signature;
    v24->_signature = v37;
  }

  return v24;
}

- (PKPaymentMerchantSession)initWithMerchantIdentifier:(id)identifier merchantSessionIdentifier:(id)sessionIdentifier nonce:(id)nonce epochTimestamp:(unint64_t)timestamp expiresAt:(unint64_t)at displayName:(id)name initiativeContext:(id)context initiative:(id)self0 ampEnrollmentPinning:(id)self1 operationalAnalyticsIdentifier:(id)self2 signedFields:(id)self3 signature:(id)self4
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  nonceCopy = nonce;
  nameCopy = name;
  v20 = sessionIdentifierCopy;
  contextCopy = context;
  initiativeCopy = initiative;
  pinningCopy = pinning;
  analyticsIdentifierCopy = analyticsIdentifier;
  fieldsCopy = fields;
  signatureCopy = signature;
  v54.receiver = self;
  v54.super_class = PKPaymentMerchantSession;
  v27 = [(PKPaymentMerchantSession *)&v54 init];
  v28 = v27;
  if (v27)
  {
    v27->_epochTimestamp = timestamp;
    v27->_expiresAt = at;
    v29 = [v20 copy];
    merchantSessionIdentifier = v28->_merchantSessionIdentifier;
    v28->_merchantSessionIdentifier = v29;

    v31 = [nonceCopy copy];
    nonce = v28->_nonce;
    v28->_nonce = v31;

    v33 = [identifierCopy copy];
    merchantIdentifier = v28->_merchantIdentifier;
    v28->_merchantIdentifier = v33;

    v35 = [nameCopy copy];
    displayName = v28->_displayName;
    v28->_displayName = v35;

    v37 = [contextCopy copy];
    initiativeContext = v28->_initiativeContext;
    v28->_initiativeContext = v37;

    v39 = [initiativeCopy copy];
    initiative = v28->_initiative;
    v28->_initiative = v39;

    v41 = [pinningCopy copy];
    ampEnrollmentPinning = v28->_ampEnrollmentPinning;
    v28->_ampEnrollmentPinning = v41;

    v43 = [analyticsIdentifierCopy copy];
    operationalAnalyticsIdentifier = v28->_operationalAnalyticsIdentifier;
    v28->_operationalAnalyticsIdentifier = v43;

    v45 = [fieldsCopy copy];
    signedFields = v28->_signedFields;
    v28->_signedFields = v45;

    v47 = [signatureCopy copy];
    signature = v28->_signature;
    v28->_signature = v47;
  }

  return v28;
}

- (PKPaymentMerchantSession)initWithDictionary:(NSDictionary *)dictionary
{
  v3 = dictionary;
  v4 = [(NSDictionary *)v3 PKStringForKey:@"initiative"];

  v5 = [(NSDictionary *)v3 PKStringForKey:@"merchantIdentifier"];
  v6 = [(NSDictionary *)v3 PKStringForKey:@"merchantSessionIdentifier"];
  v7 = [(NSDictionary *)v3 PKStringForKey:@"nonce"];
  v8 = [(NSDictionary *)v3 PKNumberForKey:@"epochTimestamp"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];
  v10 = [(NSDictionary *)v3 PKNumberForKey:@"expiresAt"];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];
  if (v4)
  {
    v28 = [(NSDictionary *)v3 PKStringForKey:@"displayName"];
    v27 = [(NSDictionary *)v3 PKStringForKey:@"initiativeContext"];
    v11 = [(NSDictionary *)v3 PKStringForKey:@"initiative"];
    v33 = [(NSDictionary *)v3 PKStringForKey:@"ampEnrollmentPinning"];
    pk_decodeHexadecimal = [v33 pk_decodeHexadecimal];
    [(NSDictionary *)v3 PKStringForKey:@"operationalAnalyticsIdentifier"];
    v31 = v7;
    v14 = v13 = v5;
    [(NSDictionary *)v3 PKArrayContaining:objc_opt_class() forKey:@"signedFields"];
    v15 = v30 = v8;
    [(NSDictionary *)v3 PKStringForKey:@"signature"];
    v29 = v10;
    v17 = v16 = v6;

    pk_decodeHexadecimal2 = [v17 pk_decodeHexadecimal];
    v35 = v11;
    v19 = v27;
    v26 = v11;
    v20 = v28;
    v21 = [(PKPaymentMerchantSession *)self initWithMerchantIdentifier:v13 merchantSessionIdentifier:v16 nonce:v31 epochTimestamp:unsignedIntegerValue expiresAt:unsignedIntegerValue2 displayName:v28 initiativeContext:v27 initiative:v26 ampEnrollmentPinning:pk_decodeHexadecimal operationalAnalyticsIdentifier:v14 signedFields:v15 signature:pk_decodeHexadecimal2];

    v6 = v16;
    v10 = v29;

    v8 = v30;
    v5 = v13;
    v7 = v31;
  }

  else
  {
    v20 = [(NSDictionary *)v3 PKStringForKey:@"domainName"];
    [(NSDictionary *)v3 PKStringForKey:@"displayName"];
    v22 = v32 = unsignedIntegerValue;
    v23 = [(NSDictionary *)v3 PKStringForKey:@"operationalAnalyticsIdentifier"];
    v24 = [(NSDictionary *)v3 PKStringForKey:@"signature"];

    v19 = v22;
    v33 = v24;
    pk_decodeHexadecimal = [v24 pk_decodeHexadecimal];
    v35 = v23;
    v21 = [(PKPaymentMerchantSession *)self initWithMerchantIdentifier:v5 merchantSessionIdentifier:v6 nonce:v7 epochTimestamp:v32 expiresAt:unsignedIntegerValue2 domain:v20 displayName:v22 operationalAnalyticsIdentifier:v23 signature:pk_decodeHexadecimal];
  }

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  merchantIdentifier = self->_merchantIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:merchantIdentifier forKey:@"merchantIdentifier"];
  [coderCopy encodeObject:self->_merchantSessionIdentifier forKey:@"merchantSessionIdentifier"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_epochTimestamp];
  [coderCopy encodeObject:v5 forKey:@"epochTimestamp"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_expiresAt];
  [coderCopy encodeObject:v6 forKey:@"expiresAt"];

  [coderCopy encodeObject:self->_domain forKey:@"domainName"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_retryNonce forKey:@"retryNonce"];
  [coderCopy encodeObject:self->_initiativeContext forKey:@"initiativeContext"];
  [coderCopy encodeObject:self->_initiative forKey:@"initiative"];
  [coderCopy encodeObject:self->_ampEnrollmentPinning forKey:@"ampEnrollmentPinning"];
  [coderCopy encodeObject:self->_operationalAnalyticsIdentifier forKey:@"operationalAnalyticsIdentifier"];
  [coderCopy encodeObject:self->_signedFields forKey:@"signedFields"];
}

- (PKPaymentMerchantSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = PKPaymentMerchantSession;
  v5 = [(PKPaymentMerchantSession *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantSessionIdentifier"];
    merchantSessionIdentifier = v5->_merchantSessionIdentifier;
    v5->_merchantSessionIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"epochTimestamp"];
    v5->_epochTimestamp = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiresAt"];
    v5->_expiresAt = [v13 unsignedIntegerValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainName"];
    domain = v5->_domain;
    v5->_domain = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"retryNonce"];
    retryNonce = v5->_retryNonce;
    v5->_retryNonce = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initiative"];
    initiative = v5->_initiative;
    v5->_initiative = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initiativeContext"];
    initiativeContext = v5->_initiativeContext;
    v5->_initiativeContext = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ampEnrollmentPinning"];
    ampEnrollmentPinning = v5->_ampEnrollmentPinning;
    v5->_ampEnrollmentPinning = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationalAnalyticsIdentifier"];
    operationalAnalyticsIdentifier = v5->_operationalAnalyticsIdentifier;
    v5->_operationalAnalyticsIdentifier = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"signedFields"];
    signedFields = v5->_signedFields;
    v5->_signedFields = v33;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"merchantSessionIdentifier: %@", self->_merchantSessionIdentifier];
  if (self->_initiative)
  {
    [v3 appendFormat:@", initiative: %@", self->_initiative];
  }

  if (self->_ampEnrollmentPinning)
  {
    [v3 appendFormat:@", ampEnrollmentPinning: %@", self->_ampEnrollmentPinning];
  }

  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentMerchantSession allocWithZone:](PKPaymentMerchantSession init];
  v6 = [(NSString *)self->_merchantIdentifier copyWithZone:zone];
  merchantIdentifier = v5->_merchantIdentifier;
  v5->_merchantIdentifier = v6;

  v8 = [(NSString *)self->_merchantSessionIdentifier copyWithZone:zone];
  merchantSessionIdentifier = v5->_merchantSessionIdentifier;
  v5->_merchantSessionIdentifier = v8;

  v10 = [(NSString *)self->_nonce copyWithZone:zone];
  nonce = v5->_nonce;
  v5->_nonce = v10;

  v12 = [(NSString *)self->_domain copyWithZone:zone];
  domain = v5->_domain;
  v5->_domain = v12;

  v5->_epochTimestamp = self->_epochTimestamp;
  v5->_expiresAt = self->_expiresAt;
  v14 = [(NSString *)self->_displayName copyWithZone:zone];
  displayName = v5->_displayName;
  v5->_displayName = v14;

  v16 = [(NSData *)self->_signature copyWithZone:zone];
  signature = v5->_signature;
  v5->_signature = v16;

  v18 = [(NSString *)self->_retryNonce copyWithZone:zone];
  retryNonce = v5->_retryNonce;
  v5->_retryNonce = v18;

  v20 = [(NSString *)self->_initiative copyWithZone:zone];
  initiative = v5->_initiative;
  v5->_initiative = v20;

  v22 = [(NSString *)self->_initiativeContext copyWithZone:zone];
  initiativeContext = v5->_initiativeContext;
  v5->_initiativeContext = v22;

  v24 = [(NSData *)self->_ampEnrollmentPinning copyWithZone:zone];
  ampEnrollmentPinning = v5->_ampEnrollmentPinning;
  v5->_ampEnrollmentPinning = v24;

  v26 = [(NSString *)self->_operationalAnalyticsIdentifier copyWithZone:zone];
  operationalAnalyticsIdentifier = v5->_operationalAnalyticsIdentifier;
  v5->_operationalAnalyticsIdentifier = v26;

  v28 = [(NSArray *)self->_signedFields copyWithZone:zone];
  signedFields = v5->_signedFields;
  v5->_signedFields = v28;

  return v5;
}

- (unint64_t)hash
{
  v27 = *MEMORY[0x1E69E9840];
  merchantIdentifier = self->_merchantIdentifier;
  v22 = *&self->_merchantSessionIdentifier;
  signature = self->_signature;
  displayName = self->_displayName;
  v24 = signature;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_epochTimestamp];
  v25 = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_expiresAt];
  v26 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&merchantIdentifier count:7];

  if (![(PKPaymentMerchantSession *)self _isModern])
  {
    v13 = [v6 arrayByAddingObject:self->_domain];
    v14 = v6;
LABEL_8:

    v14 = v13;
    goto LABEL_9;
  }

  ampEnrollmentPinning = self->_ampEnrollmentPinning;
  if (ampEnrollmentPinning)
  {
    initiativeContext = self->_initiativeContext;
    v20[0] = self->_initiative;
    v20[1] = initiativeContext;
    signedFields = self->_signedFields;
    v20[2] = ampEnrollmentPinning;
    v20[3] = signedFields;
    v10 = MEMORY[0x1E695DEC8];
    v11 = v20;
    v12 = 4;
  }

  else
  {
    v15 = self->_initiativeContext;
    v19[0] = self->_initiative;
    v19[1] = v15;
    v19[2] = self->_signedFields;
    v10 = MEMORY[0x1E695DEC8];
    v11 = v19;
    v12 = 3;
  }

  v16 = [v10 arrayWithObjects:v11 count:v12];
  v14 = [v6 arrayByAddingObjectsFromArray:v16];

  if (self->_operationalAnalyticsIdentifier)
  {
    v13 = [v14 arrayByAddingObject:?];
    goto LABEL_8;
  }

LABEL_9:
  v17 = PKCombinedHash(17, v14);

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentMerchantSession *)self isEqualToPaymentMerchantSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentMerchantSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy[5];
  v6 = self->_merchantIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_32;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_33;
    }
  }

  v11 = sessionCopy[3];
  v6 = self->_merchantSessionIdentifier;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_32;
    }

    v13 = [(NSString *)v6 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v14 = sessionCopy[4];
  v6 = self->_nonce;
  v15 = v14;
  v8 = v15;
  if (v6 == v15)
  {
  }

  else
  {
    if (!v6 || !v15)
    {
      goto LABEL_32;
    }

    v16 = [(NSString *)v6 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  v17 = sessionCopy[7];
  v6 = self->_domain;
  v18 = v17;
  v8 = v18;
  if (v6 == v18)
  {
  }

  else
  {
    if (!v6 || !v18)
    {
      goto LABEL_32;
    }

    v19 = [(NSString *)v6 isEqualToString:v18];

    if (!v19)
    {
      goto LABEL_33;
    }
  }

  v20 = sessionCopy[8];
  v6 = self->_displayName;
  v21 = v20;
  v8 = v21;
  if (v6 == v21)
  {

    goto LABEL_36;
  }

  if (!v6 || !v21)
  {
LABEL_32:

    goto LABEL_33;
  }

  v22 = [(NSString *)v6 isEqualToString:v21];

  if (!v22)
  {
    goto LABEL_33;
  }

LABEL_36:
  signature = self->_signature;
  v26 = sessionCopy[13];
  if (signature && v26)
  {
    if (([(NSData *)signature isEqual:?]& 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (signature != v26)
  {
    goto LABEL_33;
  }

  if (self->_epochTimestamp != sessionCopy[1] || self->_expiresAt != sessionCopy[2])
  {
    goto LABEL_33;
  }

  initiative = self->_initiative;
  v28 = sessionCopy[10];
  if (initiative && v28)
  {
    if (([(NSString *)initiative isEqual:?]& 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (initiative != v28)
  {
    goto LABEL_33;
  }

  initiativeContext = self->_initiativeContext;
  v30 = sessionCopy[9];
  if (initiativeContext && v30)
  {
    if (([(NSString *)initiativeContext isEqual:?]& 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (initiativeContext != v30)
  {
    goto LABEL_33;
  }

  ampEnrollmentPinning = self->_ampEnrollmentPinning;
  v32 = sessionCopy[11];
  if (ampEnrollmentPinning && v32)
  {
    if (([(NSData *)ampEnrollmentPinning isEqual:?]& 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (ampEnrollmentPinning != v32)
  {
    goto LABEL_33;
  }

  operationalAnalyticsIdentifier = self->_operationalAnalyticsIdentifier;
  v34 = sessionCopy[6];
  if (operationalAnalyticsIdentifier && v34)
  {
    if (([(NSString *)operationalAnalyticsIdentifier isEqual:?]& 1) != 0)
    {
      goto LABEL_63;
    }

LABEL_33:
    v23 = 0;
    goto LABEL_34;
  }

  if (operationalAnalyticsIdentifier != v34)
  {
    goto LABEL_33;
  }

LABEL_63:
  signedFields = self->_signedFields;
  v36 = sessionCopy[12];
  if (signedFields && v36)
  {
    v23 = [(NSArray *)signedFields isEqual:?];
  }

  else
  {
    v23 = signedFields == v36;
  }

LABEL_34:

  return v23;
}

- (BOOL)supportsURL:(id)l
{
  lCopy = l;
  _isModern = [(PKPaymentMerchantSession *)self _isModern];
  v6 = 56;
  if (_isModern)
  {
    v6 = 72;
  }

  v7 = *(&self->super.isa + v6);
  host = [lCopy host];

  v9 = host;
  v10 = v7;
  v11 = v10;
  if (v9 == v10)
  {
    v13 = 1;
  }

  else
  {
    if (v10)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v9 isEqualToString:v10];
    }
  }

  return v13;
}

- (id)signedData
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if ([(PKPaymentMerchantSession *)self _isModern])
  {
    v4 = [(NSArray *)self->_signedFields componentsJoinedByString:&stru_1F227FD28];
    v5 = [v4 dataUsingEncoding:4];
    [v3 appendData:v5];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_signedFields;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = v7;
    v9 = *v23;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 isEqualToString:{@"nonce", v22}])
        {
          pk_decodeHexadecimal = [(NSString *)self->_nonce pk_decodeHexadecimal];
LABEL_11:
          v13 = pk_decodeHexadecimal;
          goto LABEL_13;
        }

        if ([v11 isEqualToString:@"ampEnrollmentPinning"])
        {
          pk_decodeHexadecimal = self->_ampEnrollmentPinning;
          goto LABEL_11;
        }

        v14 = [(PKPaymentMerchantSession *)self valueForKey:v11];
        v13 = [v14 dataUsingEncoding:4];

LABEL_13:
        [v3 appendData:v13];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v8)
      {
LABEL_15:

        goto LABEL_17;
      }
    }
  }

  v15 = [(NSString *)self->_merchantIdentifier dataUsingEncoding:4];
  [v3 appendData:v15];

  v16 = [(NSString *)self->_merchantSessionIdentifier dataUsingEncoding:4];
  [v3 appendData:v16];

  v17 = [(NSString *)self->_domain dataUsingEncoding:4];
  [v3 appendData:v17];

  v18 = [(NSString *)self->_displayName dataUsingEncoding:4];
  [v3 appendData:v18];

  pk_decodeHexadecimal2 = [(NSString *)self->_nonce pk_decodeHexadecimal];
  [v3 appendData:pk_decodeHexadecimal2];

LABEL_17:
  v20 = [v3 copy];

  return v20;
}

+ (PKPaymentMerchantSession)paymentMerchantSessionWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  hasInitiative = [protobufCopy hasInitiative];
  v5 = [PKPaymentMerchantSession alloc];
  merchantIdentifier = [protobufCopy merchantIdentifier];
  sessionIdentifier = [protobufCopy sessionIdentifier];
  nonce = [protobufCopy nonce];
  epochTimestamp = [protobufCopy epochTimestamp];
  expiresAt = [protobufCopy expiresAt];
  if (hasInitiative)
  {
    displayName = [protobufCopy displayName];
    initiativeContext = [protobufCopy initiativeContext];
    initiative = [protobufCopy initiative];
    ampEnrollmentPinning = [protobufCopy ampEnrollmentPinning];
    operationalAnalyticsIdentifier = [protobufCopy operationalAnalyticsIdentifier];
    v13 = v5;
    v25 = merchantIdentifier;
    [protobufCopy signedFields];
    v14 = nonce;
    v16 = v15 = sessionIdentifier;
    signature = [protobufCopy signature];
    v18 = v13;
    domain = displayName;
    v20 = [(PKPaymentMerchantSession *)v18 initWithMerchantIdentifier:v25 merchantSessionIdentifier:v15 nonce:v14 epochTimestamp:epochTimestamp expiresAt:expiresAt displayName:displayName initiativeContext:initiativeContext initiative:initiative ampEnrollmentPinning:ampEnrollmentPinning operationalAnalyticsIdentifier:operationalAnalyticsIdentifier signedFields:v16 signature:signature];

    sessionIdentifier = v15;
    nonce = v14;

    merchantIdentifier = v25;
  }

  else
  {
    domain = [protobufCopy domain];
    initiativeContext = [protobufCopy displayName];
    initiative = [protobufCopy operationalAnalyticsIdentifier];
    ampEnrollmentPinning = [protobufCopy signature];
    v20 = [(PKPaymentMerchantSession *)v5 initWithMerchantIdentifier:merchantIdentifier merchantSessionIdentifier:sessionIdentifier nonce:nonce epochTimestamp:epochTimestamp expiresAt:expiresAt domain:domain displayName:initiativeContext operationalAnalyticsIdentifier:initiative signature:ampEnrollmentPinning];
  }

  if ([protobufCopy hasRetryNonce])
  {
    retryNonce = [protobufCopy retryNonce];
    [(PKPaymentMerchantSession *)v20 setRetryNonce:retryNonce];
  }

  return v20;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentMerchantSession);
  merchantIdentifier = [(PKPaymentMerchantSession *)self merchantIdentifier];
  [(PKProtobufPaymentMerchantSession *)v3 setMerchantIdentifier:merchantIdentifier];

  merchantSessionIdentifier = [(PKPaymentMerchantSession *)self merchantSessionIdentifier];
  [(PKProtobufPaymentMerchantSession *)v3 setSessionIdentifier:merchantSessionIdentifier];

  nonce = [(PKPaymentMerchantSession *)self nonce];
  [(PKProtobufPaymentMerchantSession *)v3 setNonce:nonce];

  [(PKProtobufPaymentMerchantSession *)v3 setEpochTimestamp:[(PKPaymentMerchantSession *)self epochTimestamp]];
  [(PKProtobufPaymentMerchantSession *)v3 setExpiresAt:[(PKPaymentMerchantSession *)self expiresAt]];
  displayName = [(PKPaymentMerchantSession *)self displayName];
  [(PKProtobufPaymentMerchantSession *)v3 setDisplayName:displayName];

  signature = [(PKPaymentMerchantSession *)self signature];
  [(PKProtobufPaymentMerchantSession *)v3 setSignature:signature];

  retryNonce = [(PKPaymentMerchantSession *)self retryNonce];
  [(PKProtobufPaymentMerchantSession *)v3 setRetryNonce:retryNonce];

  operationalAnalyticsIdentifier = [(PKPaymentMerchantSession *)self operationalAnalyticsIdentifier];
  [(PKProtobufPaymentMerchantSession *)v3 setOperationalAnalyticsIdentifier:operationalAnalyticsIdentifier];

  initiative = [(PKPaymentMerchantSession *)self initiative];

  if (initiative)
  {
    initiative2 = [(PKPaymentMerchantSession *)self initiative];
    [(PKProtobufPaymentMerchantSession *)v3 setInitiative:initiative2];

    initiativeContext = [(PKPaymentMerchantSession *)self initiativeContext];
    [(PKProtobufPaymentMerchantSession *)v3 setInitiativeContext:initiativeContext];

    signedFields = [(PKPaymentMerchantSession *)self signedFields];
    v15 = [signedFields mutableCopy];
    [(PKProtobufPaymentMerchantSession *)v3 setSignedFields:v15];
  }

  else
  {
    signedFields = [(PKPaymentMerchantSession *)self domain];
    [(PKProtobufPaymentMerchantSession *)v3 setDomain:signedFields];
  }

  return v3;
}

@end