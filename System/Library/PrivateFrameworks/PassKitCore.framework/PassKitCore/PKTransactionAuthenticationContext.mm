@interface PKTransactionAuthenticationContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransactionAuthenticationContext:(id)context;
- (PKTransactionAuthenticationContext)initWithCoder:(id)coder;
- (PKTransactionAuthenticationContext)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionAuthenticationContext

- (PKTransactionAuthenticationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v19.receiver = self;
    v19.super_class = PKTransactionAuthenticationContext;
    self = [(PKTransactionAuthenticationContext *)&v19 init];
    if (self)
    {
      v5 = [dictionaryCopy PKStringForKey:@"PINFormat"];
      self->_paymentPINFormat = PKTransactionAuthenticationPINFormatFromString(v5);

      v6 = [dictionaryCopy PKArrayForKey:@"authenticationMechanisms"];
      self->_requestedAuthenticationMechanisms = PKTransactionAuthenticationMechanismFromStrings(v6);

      v7 = [dictionaryCopy PKArrayForKey:@"processedAuthenticationMechanisms"];
      self->_processedAuthenticationMechanisms = PKTransactionAuthenticationMechanismFromStrings(v7);

      v8 = [dictionaryCopy PKArrayForKey:@"dataCollectedAuthenticationMechanisms"];
      self->_dataCollectedAuthenticationMechanisms = PKTransactionAuthenticationMechanismFromStrings(v8);

      self->_complete = [dictionaryCopy PKBoolForKey:@"complete"];
      v9 = [dictionaryCopy PKStringForKey:@"nonce"];
      pk_decodeHexadecimal = [v9 pk_decodeHexadecimal];
      nonce = self->_nonce;
      self->_nonce = pk_decodeHexadecimal;

      v12 = [dictionaryCopy PKStringForKey:@"signingKeyMaterial"];
      if ([v12 length])
      {
        v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
        signingKeyMaterial = self->_signingKeyMaterial;
        self->_signingKeyMaterial = v13;
      }

      v15 = [dictionaryCopy PKStringForKey:@"partialTransactionDetailsSignature"];
      if ([v15 length])
      {
        v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
        partialSignature = self->_partialSignature;
        self->_partialSignature = v16;
      }
    }
  }

  return self;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  paymentPINFormat = self->_paymentPINFormat;
  v6 = @"complex";
  if (paymentPINFormat != 2)
  {
    v6 = 0;
  }

  if (paymentPINFormat == 1)
  {
    v7 = @"sixDigits";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"PINFormat"];
  v8 = PKTransactionAuthenticationMechanismToStrings(self->_requestedAuthenticationMechanisms);
  [v4 setObject:v8 forKeyedSubscript:@"authenticationMechanisms"];

  v9 = PKTransactionAuthenticationMechanismToStrings(self->_processedAuthenticationMechanisms);
  [v4 setObject:v9 forKeyedSubscript:@"processedAuthenticationMechanisms"];

  v10 = PKTransactionAuthenticationMechanismToStrings(self->_dataCollectedAuthenticationMechanisms);
  [v4 setObject:v10 forKeyedSubscript:@"dataCollectedAuthenticationMechanisms"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_complete];
  [v4 setObject:v11 forKeyedSubscript:@"complete"];

  hexEncoding = [(NSData *)self->_nonce hexEncoding];
  [v4 setObject:hexEncoding forKeyedSubscript:@"nonce"];

  v13 = [(NSData *)self->_signingKeyMaterial base64EncodedStringWithOptions:0];
  [v4 setObject:v13 forKeyedSubscript:@"signingKeyMaterial"];

  v14 = [(NSData *)self->_partialSignature base64EncodedStringWithOptions:0];
  [v4 setObject:v14 forKeyedSubscript:@"partialTransactionDetailsSignature"];

  v15 = [v4 copy];

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = PKTransactionAuthenticationMechanismToStrings(self->_requestedAuthenticationMechanisms);
  v5 = [v3 stringWithFormat:@"<PKTransactionAuthenticationContext, requested auth mechanisms: %@, PIN format: %ld, nonce: %tu bytes, signing key material: %tu bytes, partial signature: %tu bytes>", v4, self->_paymentPINFormat, -[NSData length](self->_nonce, "length"), -[NSData length](self->_signingKeyMaterial, "length"), -[NSData length](self->_partialSignature, "length")];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  paymentPINFormat = self->_paymentPINFormat;
  coderCopy = coder;
  [coderCopy encodeInteger:paymentPINFormat forKey:@"PINFormat"];
  [coderCopy encodeInteger:self->_requestedAuthenticationMechanisms forKey:@"authenticationMechanisms"];
  [coderCopy encodeInteger:self->_processedAuthenticationMechanisms forKey:@"processedAuthenticationMechanisms"];
  [coderCopy encodeInteger:self->_dataCollectedAuthenticationMechanisms forKey:@"dataCollectedAuthenticationMechanisms"];
  [coderCopy encodeBool:self->_complete forKey:@"complete"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeObject:self->_signingKeyMaterial forKey:@"signingKeyMaterial"];
  [coderCopy encodeObject:self->_partialSignature forKey:@"partialTransactionDetailsSignature"];
  [coderCopy encodeInteger:self->_authenticationFailure forKey:@"authenticationError"];
}

- (PKTransactionAuthenticationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKTransactionAuthenticationContext;
  v5 = [(PKTransactionAuthenticationContext *)&v13 init];
  if (v5)
  {
    v5->_paymentPINFormat = [coderCopy decodeIntegerForKey:@"PINFormat"];
    v5->_requestedAuthenticationMechanisms = [coderCopy decodeIntegerForKey:@"authenticationMechanisms"];
    v5->_processedAuthenticationMechanisms = [coderCopy decodeIntegerForKey:@"processedAuthenticationMechanisms"];
    v5->_dataCollectedAuthenticationMechanisms = [coderCopy decodeIntegerForKey:@"dataCollectedAuthenticationMechanisms"];
    v5->_complete = [coderCopy decodeBoolForKey:@"complete"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signingKeyMaterial"];
    signingKeyMaterial = v5->_signingKeyMaterial;
    v5->_signingKeyMaterial = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partialTransactionDetailsSignature"];
    partialSignature = v5->_partialSignature;
    v5->_partialSignature = v10;

    v5->_authenticationFailure = [coderCopy decodeIntegerForKey:@"authenticationError"];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_nonce];
  [v3 safelyAddObject:self->_signingKeyMaterial];
  [v3 safelyAddObject:self->_partialSignature];
  v4 = [v3 copy];
  v5 = PKCombinedHash(17, v4);

  v6 = self->_requestedAuthenticationMechanisms - v5 + 32 * v5;
  v7 = self->_processedAuthenticationMechanisms - v6 + 32 * v6;
  v8 = self->_dataCollectedAuthenticationMechanisms - v7 + 32 * v7;
  v9 = self->_complete - v8 + 32 * v8;
  v10 = self->_authenticationFailure - v9 + 32 * v9;

  return v10;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionAuthenticationContext *)self isEqualToTransactionAuthenticationContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToTransactionAuthenticationContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self->_paymentPINFormat != contextCopy[5] || self->_requestedAuthenticationMechanisms != contextCopy[2] || self->_processedAuthenticationMechanisms != contextCopy[3] || self->_dataCollectedAuthenticationMechanisms != contextCopy[4] || self->_complete != *(contextCopy + 8) || self->_authenticationFailure != contextCopy[9])
  {
    goto LABEL_19;
  }

  nonce = self->_nonce;
  v7 = v5[6];
  if (nonce && v7)
  {
    if (([(NSData *)nonce isEqual:?]& 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (nonce != v7)
  {
    goto LABEL_19;
  }

  signingKeyMaterial = self->_signingKeyMaterial;
  v9 = v5[7];
  if (!signingKeyMaterial || !v9)
  {
    if (signingKeyMaterial == v9)
    {
      goto LABEL_15;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (([(NSData *)signingKeyMaterial isEqual:?]& 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  partialSignature = self->_partialSignature;
  v11 = v5[8];
  if (partialSignature && v11)
  {
    v12 = [(NSData *)partialSignature isEqual:?];
  }

  else
  {
    v12 = partialSignature == v11;
  }

LABEL_20:

  return v12;
}

@end