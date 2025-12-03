@interface HKSignedClinicalDataRecord(HealthRecordServices)
- (void)copyWithItems:()HealthRecordServices;
@end

@implementation HKSignedClinicalDataRecord(HealthRecordServices)

- (void)copyWithItems:()HealthRecordServices
{
  v4 = a3;
  v22 = objc_opt_class();
  signedClinicalDataRecordType = [MEMORY[0x277CCD9A0] signedClinicalDataRecordType];
  note = [self note];
  enteredInError = [self enteredInError];
  modifiedDate = [self modifiedDate];
  originIdentifier = [self originIdentifier];
  locale = [self locale];
  extractionVersion = [self extractionVersion];
  device = [self device];
  metadata = [self metadata];
  sortDate = [self sortDate];
  country = [self country];
  state = [self state];
  credentialTypes = [self credentialTypes];
  issuerIdentifier = [self issuerIdentifier];
  issuedDate = [self issuedDate];
  relevantDate = [self relevantDate];
  expirationDate = [self expirationDate];
  signatureStatus = [self signatureStatus];
  subject = [self subject];
  dataValue = [self dataValue];
  v23 = [v22 signedClinicalDataRecordWithType:signedClinicalDataRecordType note:note enteredInError:enteredInError modifiedDate:modifiedDate originIdentifier:originIdentifier locale:locale extractionVersion:extractionVersion device:device metadata:metadata sortDate:sortDate country:country state:state credentialTypes:credentialTypes issuerIdentifier:issuerIdentifier issuedDate:issuedDate relevantDate:relevantDate expirationDate:expirationDate signatureStatus:signatureStatus subject:subject items:v4 dataValue:dataValue sourceType:{objc_msgSend(self, "sourceType")}];

  uUID = [self UUID];
  [v23 _setUUID:uUID];

  return v23;
}

@end