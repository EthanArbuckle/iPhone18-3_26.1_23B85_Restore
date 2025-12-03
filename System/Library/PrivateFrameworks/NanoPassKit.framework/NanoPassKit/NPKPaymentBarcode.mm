@interface NPKPaymentBarcode
- (BOOL)isEqual:(id)equal;
- (NPKPaymentBarcode)initWithBarcodeIdentifier:(id)identifier decryptedBarcodeCredential:(id)credential error:(id)error;
- (NSArray)barcodes;
- (id)description;
@end

@implementation NPKPaymentBarcode

- (NPKPaymentBarcode)initWithBarcodeIdentifier:(id)identifier decryptedBarcodeCredential:(id)credential error:(id)error
{
  identifierCopy = identifier;
  credentialCopy = credential;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = NPKPaymentBarcode;
  v12 = [(NPKPaymentBarcode *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_barcodeIdentifier, identifier);
    objc_storeStrong(&v13->_decryptedBarcodeCredential, credential);
    if (credentialCopy)
    {
      v14 = 1;
    }

    else if (errorCopy)
    {
      userInfo = [errorCopy userInfo];
      v16 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

      domain = [v16 domain];
      code = [v16 code];
      if (([domain isEqualToString:*MEMORY[0x277CCA738]] & (((code + 1009) & 0xFFFFFFFFFFFFFFF7) == 0)) != 0)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }
    }

    else
    {
      v14 = 0;
    }

    v13->_state = v14;
  }

  return v13;
}

- (NSArray)barcodes
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (!self->_barcodes)
  {
    if ([(NPKPaymentBarcode *)self state]== 1)
    {
      v3 = objc_alloc_init(MEMORY[0x277D37DE0]);
      decryptedBarcodeCredential = [(NPKPaymentBarcode *)self decryptedBarcodeCredential];
      [v3 setMessageData:decryptedBarcodeCredential];

      [v3 setFormat:1];
      v5 = objc_alloc_init(MEMORY[0x277D37DE0]);
      decryptedBarcodeCredential2 = [(NPKPaymentBarcode *)self decryptedBarcodeCredential];
      [v5 setMessageData:decryptedBarcodeCredential2];

      [v5 setFormat:4];
      v7 = MEMORY[0x277CCACA8];
      decryptedBarcodeCredential3 = [(NPKPaymentBarcode *)self decryptedBarcodeCredential];
      v9 = [v7 stringWithUTF8String:{objc_msgSend(decryptedBarcodeCredential3, "bytes")}];
      [v5 setAltText:v9];

      v16[0] = v3;
      v16[1] = v5;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
      barcodes = self->_barcodes;
      self->_barcodes = v10;
    }

    else
    {
      v12 = self->_barcodes;
      self->_barcodes = MEMORY[0x277CBEBF8];
    }
  }

  v13 = self->_barcodes;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      barcodeIdentifier = [(NPKPaymentBarcode *)self barcodeIdentifier];
      barcodeIdentifier2 = [(NPKPaymentBarcode *)v5 barcodeIdentifier];
      if (NPKIsEqual(barcodeIdentifier, barcodeIdentifier2))
      {
        decryptedBarcodeCredential = [(NPKPaymentBarcode *)self decryptedBarcodeCredential];
        decryptedBarcodeCredential2 = [(NPKPaymentBarcode *)v5 decryptedBarcodeCredential];
        if (NPKIsEqual(decryptedBarcodeCredential, decryptedBarcodeCredential2))
        {
          state = [(NPKPaymentBarcode *)self state];
          v11 = state == [(NPKPaymentBarcode *)v5 state];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  barcodeIdentifier = [(NPKPaymentBarcode *)self barcodeIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p - barcodeIdentifier: %@>", v5, self, barcodeIdentifier];

  return v7;
}

@end