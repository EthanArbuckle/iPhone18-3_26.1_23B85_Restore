@interface HKSignedClinicalDataRecord(HealthRecordServices)
- (void)copyWithItems:()HealthRecordServices;
@end

@implementation HKSignedClinicalDataRecord(HealthRecordServices)

- (void)copyWithItems:()HealthRecordServices
{
  v4 = a3;
  v22 = objc_opt_class();
  v28 = [MEMORY[0x277CCD9A0] signedClinicalDataRecordType];
  v27 = [a1 note];
  v21 = [a1 enteredInError];
  v20 = [a1 modifiedDate];
  v19 = [a1 originIdentifier];
  v18 = [a1 locale];
  v17 = [a1 extractionVersion];
  v26 = [a1 device];
  v25 = [a1 metadata];
  v16 = [a1 sortDate];
  v24 = [a1 country];
  v15 = [a1 state];
  v14 = [a1 credentialTypes];
  v13 = [a1 issuerIdentifier];
  v12 = [a1 issuedDate];
  v5 = [a1 relevantDate];
  v6 = [a1 expirationDate];
  v7 = [a1 signatureStatus];
  v8 = [a1 subject];
  v9 = [a1 dataValue];
  v23 = [v22 signedClinicalDataRecordWithType:v28 note:v27 enteredInError:v21 modifiedDate:v20 originIdentifier:v19 locale:v18 extractionVersion:v17 device:v26 metadata:v25 sortDate:v16 country:v24 state:v15 credentialTypes:v14 issuerIdentifier:v13 issuedDate:v12 relevantDate:v5 expirationDate:v6 signatureStatus:v7 subject:v8 items:v4 dataValue:v9 sourceType:{objc_msgSend(a1, "sourceType")}];

  v10 = [a1 UUID];
  [v23 _setUUID:v10];

  return v23;
}

@end