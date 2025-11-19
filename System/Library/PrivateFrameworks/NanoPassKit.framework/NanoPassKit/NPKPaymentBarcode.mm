@interface NPKPaymentBarcode
- (BOOL)isEqual:(id)a3;
- (NPKPaymentBarcode)initWithBarcodeIdentifier:(id)a3 decryptedBarcodeCredential:(id)a4 error:(id)a5;
- (NSArray)barcodes;
- (id)description;
@end

@implementation NPKPaymentBarcode

- (NPKPaymentBarcode)initWithBarcodeIdentifier:(id)a3 decryptedBarcodeCredential:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = NPKPaymentBarcode;
  v12 = [(NPKPaymentBarcode *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_barcodeIdentifier, a3);
    objc_storeStrong(&v13->_decryptedBarcodeCredential, a4);
    if (v10)
    {
      v14 = 1;
    }

    else if (v11)
    {
      v15 = [v11 userInfo];
      v16 = [v15 objectForKey:*MEMORY[0x277CCA7E8]];

      v17 = [v16 domain];
      v18 = [v16 code];
      if (([v17 isEqualToString:*MEMORY[0x277CCA738]] & (((v18 + 1009) & 0xFFFFFFFFFFFFFFF7) == 0)) != 0)
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
      v4 = [(NPKPaymentBarcode *)self decryptedBarcodeCredential];
      [v3 setMessageData:v4];

      [v3 setFormat:1];
      v5 = objc_alloc_init(MEMORY[0x277D37DE0]);
      v6 = [(NPKPaymentBarcode *)self decryptedBarcodeCredential];
      [v5 setMessageData:v6];

      [v5 setFormat:4];
      v7 = MEMORY[0x277CCACA8];
      v8 = [(NPKPaymentBarcode *)self decryptedBarcodeCredential];
      v9 = [v7 stringWithUTF8String:{objc_msgSend(v8, "bytes")}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NPKPaymentBarcode *)self barcodeIdentifier];
      v7 = [(NPKPaymentBarcode *)v5 barcodeIdentifier];
      if (NPKIsEqual(v6, v7))
      {
        v8 = [(NPKPaymentBarcode *)self decryptedBarcodeCredential];
        v9 = [(NPKPaymentBarcode *)v5 decryptedBarcodeCredential];
        if (NPKIsEqual(v8, v9))
        {
          v10 = [(NPKPaymentBarcode *)self state];
          v11 = v10 == [(NPKPaymentBarcode *)v5 state];
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
  v6 = [(NPKPaymentBarcode *)self barcodeIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p - barcodeIdentifier: %@>", v5, self, v6];

  return v7;
}

@end