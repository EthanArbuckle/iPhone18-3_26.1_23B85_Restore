@interface PKPaymentInitiateExternalProvisioningRequestDPANAuthorization
- (PKPaymentInitiateExternalProvisioningRequestDPANAuthorization)initWithDPANID:(id)d signatureData:(id)data signatureInfo:(id)info;
- (id)dictionaryRepresentation;
@end

@implementation PKPaymentInitiateExternalProvisioningRequestDPANAuthorization

- (PKPaymentInitiateExternalProvisioningRequestDPANAuthorization)initWithDPANID:(id)d signatureData:(id)data signatureInfo:(id)info
{
  dCopy = d;
  dataCopy = data;
  infoCopy = info;
  selfCopy = 0;
  if (dCopy && dataCopy)
  {
    v16.receiver = self;
    v16.super_class = PKPaymentInitiateExternalProvisioningRequestDPANAuthorization;
    v13 = [(PKPaymentInitiateExternalProvisioningRequestDPANAuthorization *)&v16 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_dpanIdentifier, d);
      objc_storeStrong(p_isa + 2, data);
      objc_storeStrong(p_isa + 3, info);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"type";
  v12[1] = @"DPANIdentifier";
  dpanIdentifier = self->_dpanIdentifier;
  signatureData = self->_signatureData;
  v13[0] = @"dpan";
  v13[1] = dpanIdentifier;
  v12[2] = @"signature";
  v5 = [(NSData *)signatureData base64EncodedStringWithOptions:0];
  v13[2] = v5;
  v12[3] = @"ECDSA";
  certificates = [(PKSecureElementSignatureInfo *)self->_signatureInfo certificates];
  v7 = [certificates certificateOfType:0];
  v13[3] = v7;
  v12[4] = @"RSA";
  certificates2 = [(PKSecureElementSignatureInfo *)self->_signatureInfo certificates];
  v9 = [certificates2 certificateOfType:1];
  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

@end