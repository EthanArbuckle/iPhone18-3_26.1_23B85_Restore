@interface PBBProtoTermsAndConditions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoTermsAndConditions

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoTermsAndConditions;
  v4 = [(PBBProtoTermsAndConditions *)&v8 description];
  dictionaryRepresentation = [(PBBProtoTermsAndConditions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  license = self->_license;
  if (license)
  {
    [dictionary setObject:license forKey:@"license"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_license)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_multiterms)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_warranty)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_licenseLabel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_warrantyLabel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_agreeDialogTitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_agreeDialogText)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_agreeLabel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_cancelLabel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_disagreeLabel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_serverTerms)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_license)
  {
    [toCopy setLicense:?];
    toCopy = v5;
  }

  if (self->_multiterms)
  {
    [v5 setMultiterms:?];
    toCopy = v5;
  }

  if (self->_warranty)
  {
    [v5 setWarranty:?];
    toCopy = v5;
  }

  if (self->_licenseLabel)
  {
    [v5 setLicenseLabel:?];
    toCopy = v5;
  }

  if (self->_warrantyLabel)
  {
    [v5 setWarrantyLabel:?];
    toCopy = v5;
  }

  if (self->_agreeDialogTitle)
  {
    [v5 setAgreeDialogTitle:?];
    toCopy = v5;
  }

  if (self->_agreeDialogText)
  {
    [v5 setAgreeDialogText:?];
    toCopy = v5;
  }

  if (self->_agreeLabel)
  {
    [v5 setAgreeLabel:?];
    toCopy = v5;
  }

  if (self->_cancelLabel)
  {
    [v5 setCancelLabel:?];
    toCopy = v5;
  }

  if (self->_disagreeLabel)
  {
    [v5 setDisagreeLabel:?];
    toCopy = v5;
  }

  if (self->_serverTerms)
  {
    [v5 setServerTerms:?];
    toCopy = v5;
  }

  if (self->_userAgent)
  {
    [v5 setUserAgent:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_license copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSData *)self->_multiterms copyWithZone:zone];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(NSData *)self->_warranty copyWithZone:zone];
  v11 = v5[11];
  v5[11] = v10;

  v12 = [(NSString *)self->_licenseLabel copyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSString *)self->_warrantyLabel copyWithZone:zone];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSString *)self->_agreeDialogTitle copyWithZone:zone];
  v17 = v5[2];
  v5[2] = v16;

  v18 = [(NSString *)self->_agreeDialogText copyWithZone:zone];
  v19 = v5[1];
  v5[1] = v18;

  v20 = [(NSString *)self->_agreeLabel copyWithZone:zone];
  v21 = v5[3];
  v5[3] = v20;

  v22 = [(NSString *)self->_cancelLabel copyWithZone:zone];
  v23 = v5[4];
  v5[4] = v22;

  v24 = [(NSString *)self->_disagreeLabel copyWithZone:zone];
  v25 = v5[5];
  v5[5] = v24;

  v26 = [(NSData *)self->_serverTerms copyWithZone:zone];
  v27 = v5[9];
  v5[9] = v26;

  v28 = [(NSString *)self->_userAgent copyWithZone:zone];
  v29 = v5[10];
  v5[10] = v28;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  license = self->_license;
  if (license | equalCopy[6])
  {
    if (![(NSData *)license isEqual:?])
    {
      goto LABEL_26;
    }
  }

  multiterms = self->_multiterms;
  if (multiterms | equalCopy[8] && ![(NSData *)multiterms isEqual:?])
  {
    goto LABEL_26;
  }

  warranty = self->_warranty;
  if (warranty | equalCopy[11] && ![(NSData *)warranty isEqual:?])
  {
    goto LABEL_26;
  }

  licenseLabel = self->_licenseLabel;
  if (licenseLabel | equalCopy[7] && ![(NSString *)licenseLabel isEqual:?])
  {
    goto LABEL_26;
  }

  if (((warrantyLabel = self->_warrantyLabel, !(warrantyLabel | equalCopy[12])) || [(NSString *)warrantyLabel isEqual:?]) && ((agreeDialogTitle = self->_agreeDialogTitle, !(agreeDialogTitle | equalCopy[2])) || [(NSString *)agreeDialogTitle isEqual:?]) && ((agreeDialogText = self->_agreeDialogText, !(agreeDialogText | equalCopy[1])) || [(NSString *)agreeDialogText isEqual:?]) && ((agreeLabel = self->_agreeLabel, !(agreeLabel | equalCopy[3])) || [(NSString *)agreeLabel isEqual:?]) && ((cancelLabel = self->_cancelLabel, !(cancelLabel | equalCopy[4])) || [(NSString *)cancelLabel isEqual:?]) && ((disagreeLabel = self->_disagreeLabel, !(disagreeLabel | equalCopy[5])) || [(NSString *)disagreeLabel isEqual:?]) && ((serverTerms = self->_serverTerms, !(serverTerms | equalCopy[9])) || [(NSData *)serverTerms isEqual:?]))
  {
    userAgent = self->_userAgent;
    if (userAgent | equalCopy[10])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    [(PBBProtoTermsAndConditions *)self setLicense:?];
  }

  if (fromCopy[8])
  {
    [(PBBProtoTermsAndConditions *)self setMultiterms:?];
  }

  if (fromCopy[11])
  {
    [(PBBProtoTermsAndConditions *)self setWarranty:?];
  }

  if (fromCopy[7])
  {
    [(PBBProtoTermsAndConditions *)self setLicenseLabel:?];
  }

  if (fromCopy[12])
  {
    [(PBBProtoTermsAndConditions *)self setWarrantyLabel:?];
  }

  if (fromCopy[2])
  {
    [(PBBProtoTermsAndConditions *)self setAgreeDialogTitle:?];
  }

  if (fromCopy[1])
  {
    [(PBBProtoTermsAndConditions *)self setAgreeDialogText:?];
  }

  if (fromCopy[3])
  {
    [(PBBProtoTermsAndConditions *)self setAgreeLabel:?];
  }

  if (fromCopy[4])
  {
    [(PBBProtoTermsAndConditions *)self setCancelLabel:?];
  }

  if (fromCopy[5])
  {
    [(PBBProtoTermsAndConditions *)self setDisagreeLabel:?];
  }

  if (fromCopy[9])
  {
    [(PBBProtoTermsAndConditions *)self setServerTerms:?];
  }

  if (fromCopy[10])
  {
    [(PBBProtoTermsAndConditions *)self setUserAgent:?];
  }
}

@end