@interface PBBProtoTermsAndConditions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoTermsAndConditions

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoTermsAndConditions;
  v4 = [(PBBProtoTermsAndConditions *)&v8 description];
  v5 = [(PBBProtoTermsAndConditions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  license = self->_license;
  if (license)
  {
    [v3 setObject:license forKey:@"license"];
  }

  multiterms = self->_multiterms;
  if (multiterms)
  {
    [v4 setObject:multiterms forKey:@"multiterms"];
  }

  warranty = self->_warranty;
  if (warranty)
  {
    [v4 setObject:warranty forKey:@"warranty"];
  }

  licenseLabel = self->_licenseLabel;
  if (licenseLabel)
  {
    [v4 setObject:licenseLabel forKey:@"licenseLabel"];
  }

  warrantyLabel = self->_warrantyLabel;
  if (warrantyLabel)
  {
    [v4 setObject:warrantyLabel forKey:@"warrantyLabel"];
  }

  agreeDialogTitle = self->_agreeDialogTitle;
  if (agreeDialogTitle)
  {
    [v4 setObject:agreeDialogTitle forKey:@"agreeDialogTitle"];
  }

  agreeDialogText = self->_agreeDialogText;
  if (agreeDialogText)
  {
    [v4 setObject:agreeDialogText forKey:@"agreeDialogText"];
  }

  agreeLabel = self->_agreeLabel;
  if (agreeLabel)
  {
    [v4 setObject:agreeLabel forKey:@"agreeLabel"];
  }

  cancelLabel = self->_cancelLabel;
  if (cancelLabel)
  {
    [v4 setObject:cancelLabel forKey:@"cancelLabel"];
  }

  disagreeLabel = self->_disagreeLabel;
  if (disagreeLabel)
  {
    [v4 setObject:disagreeLabel forKey:@"disagreeLabel"];
  }

  serverTerms = self->_serverTerms;
  if (serverTerms)
  {
    [v4 setObject:serverTerms forKey:@"serverTerms"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v4 setObject:userAgent forKey:@"userAgent"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_license)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_multiterms)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_warranty)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_licenseLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_warrantyLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_agreeDialogTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_agreeDialogText)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_agreeLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_cancelLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_disagreeLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_serverTerms)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_license)
  {
    [v4 setLicense:?];
    v4 = v5;
  }

  if (self->_multiterms)
  {
    [v5 setMultiterms:?];
    v4 = v5;
  }

  if (self->_warranty)
  {
    [v5 setWarranty:?];
    v4 = v5;
  }

  if (self->_licenseLabel)
  {
    [v5 setLicenseLabel:?];
    v4 = v5;
  }

  if (self->_warrantyLabel)
  {
    [v5 setWarrantyLabel:?];
    v4 = v5;
  }

  if (self->_agreeDialogTitle)
  {
    [v5 setAgreeDialogTitle:?];
    v4 = v5;
  }

  if (self->_agreeDialogText)
  {
    [v5 setAgreeDialogText:?];
    v4 = v5;
  }

  if (self->_agreeLabel)
  {
    [v5 setAgreeLabel:?];
    v4 = v5;
  }

  if (self->_cancelLabel)
  {
    [v5 setCancelLabel:?];
    v4 = v5;
  }

  if (self->_disagreeLabel)
  {
    [v5 setDisagreeLabel:?];
    v4 = v5;
  }

  if (self->_serverTerms)
  {
    [v5 setServerTerms:?];
    v4 = v5;
  }

  if (self->_userAgent)
  {
    [v5 setUserAgent:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_license copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSData *)self->_multiterms copyWithZone:a3];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(NSData *)self->_warranty copyWithZone:a3];
  v11 = v5[11];
  v5[11] = v10;

  v12 = [(NSString *)self->_licenseLabel copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSString *)self->_warrantyLabel copyWithZone:a3];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSString *)self->_agreeDialogTitle copyWithZone:a3];
  v17 = v5[2];
  v5[2] = v16;

  v18 = [(NSString *)self->_agreeDialogText copyWithZone:a3];
  v19 = v5[1];
  v5[1] = v18;

  v20 = [(NSString *)self->_agreeLabel copyWithZone:a3];
  v21 = v5[3];
  v5[3] = v20;

  v22 = [(NSString *)self->_cancelLabel copyWithZone:a3];
  v23 = v5[4];
  v5[4] = v22;

  v24 = [(NSString *)self->_disagreeLabel copyWithZone:a3];
  v25 = v5[5];
  v5[5] = v24;

  v26 = [(NSData *)self->_serverTerms copyWithZone:a3];
  v27 = v5[9];
  v5[9] = v26;

  v28 = [(NSString *)self->_userAgent copyWithZone:a3];
  v29 = v5[10];
  v5[10] = v28;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  license = self->_license;
  if (license | v4[6])
  {
    if (![(NSData *)license isEqual:?])
    {
      goto LABEL_26;
    }
  }

  multiterms = self->_multiterms;
  if (multiterms | v4[8] && ![(NSData *)multiterms isEqual:?])
  {
    goto LABEL_26;
  }

  warranty = self->_warranty;
  if (warranty | v4[11] && ![(NSData *)warranty isEqual:?])
  {
    goto LABEL_26;
  }

  licenseLabel = self->_licenseLabel;
  if (licenseLabel | v4[7] && ![(NSString *)licenseLabel isEqual:?])
  {
    goto LABEL_26;
  }

  if (((warrantyLabel = self->_warrantyLabel, !(warrantyLabel | v4[12])) || [(NSString *)warrantyLabel isEqual:?]) && ((agreeDialogTitle = self->_agreeDialogTitle, !(agreeDialogTitle | v4[2])) || [(NSString *)agreeDialogTitle isEqual:?]) && ((agreeDialogText = self->_agreeDialogText, !(agreeDialogText | v4[1])) || [(NSString *)agreeDialogText isEqual:?]) && ((agreeLabel = self->_agreeLabel, !(agreeLabel | v4[3])) || [(NSString *)agreeLabel isEqual:?]) && ((cancelLabel = self->_cancelLabel, !(cancelLabel | v4[4])) || [(NSString *)cancelLabel isEqual:?]) && ((disagreeLabel = self->_disagreeLabel, !(disagreeLabel | v4[5])) || [(NSString *)disagreeLabel isEqual:?]) && ((serverTerms = self->_serverTerms, !(serverTerms | v4[9])) || [(NSData *)serverTerms isEqual:?]))
  {
    userAgent = self->_userAgent;
    if (userAgent | v4[10])
    {
      v17 = [(NSString *)userAgent isEqual:?];
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
LABEL_26:
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_license hash];
  v4 = [(NSData *)self->_multiterms hash]^ v3;
  v5 = [(NSData *)self->_warranty hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_licenseLabel hash];
  v7 = [(NSString *)self->_warrantyLabel hash];
  v8 = v7 ^ [(NSString *)self->_agreeDialogTitle hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_agreeDialogText hash];
  v10 = [(NSString *)self->_agreeLabel hash];
  v11 = v10 ^ [(NSString *)self->_cancelLabel hash];
  v12 = v11 ^ [(NSString *)self->_disagreeLabel hash];
  v13 = v9 ^ v12 ^ [(NSData *)self->_serverTerms hash];
  return v13 ^ [(NSString *)self->_userAgent hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    [(PBBProtoTermsAndConditions *)self setLicense:?];
  }

  if (v4[8])
  {
    [(PBBProtoTermsAndConditions *)self setMultiterms:?];
  }

  if (v4[11])
  {
    [(PBBProtoTermsAndConditions *)self setWarranty:?];
  }

  if (v4[7])
  {
    [(PBBProtoTermsAndConditions *)self setLicenseLabel:?];
  }

  if (v4[12])
  {
    [(PBBProtoTermsAndConditions *)self setWarrantyLabel:?];
  }

  if (v4[2])
  {
    [(PBBProtoTermsAndConditions *)self setAgreeDialogTitle:?];
  }

  if (v4[1])
  {
    [(PBBProtoTermsAndConditions *)self setAgreeDialogText:?];
  }

  if (v4[3])
  {
    [(PBBProtoTermsAndConditions *)self setAgreeLabel:?];
  }

  if (v4[4])
  {
    [(PBBProtoTermsAndConditions *)self setCancelLabel:?];
  }

  if (v4[5])
  {
    [(PBBProtoTermsAndConditions *)self setDisagreeLabel:?];
  }

  if (v4[9])
  {
    [(PBBProtoTermsAndConditions *)self setServerTerms:?];
  }

  if (v4[10])
  {
    [(PBBProtoTermsAndConditions *)self setUserAgent:?];
  }
}

@end