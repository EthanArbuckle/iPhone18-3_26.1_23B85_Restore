@interface DACarKeyAdditionalCrossPlatformSharingData
+ (id)decodeWithData:(id)data error:(id *)error;
- (DACarKeyAdditionalCrossPlatformSharingData)initWithCoder:(id)coder;
- (DACarKeyAdditionalCrossPlatformSharingData)initWithDictionary:(id)dictionary;
- (DACarKeyAdditionalCrossPlatformSharingData)initWithSharingSessionUUID:(id)d bindingAttestation:(id)attestation targetDeviceType:(int64_t)type initiatorIdsPseudonym:(id)pseudonym;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DACarKeyAdditionalCrossPlatformSharingData

- (DACarKeyAdditionalCrossPlatformSharingData)initWithSharingSessionUUID:(id)d bindingAttestation:(id)attestation targetDeviceType:(int64_t)type initiatorIdsPseudonym:(id)pseudonym
{
  dCopy = d;
  attestationCopy = attestation;
  pseudonymCopy = pseudonym;
  v17.receiver = self;
  v17.super_class = DACarKeyAdditionalCrossPlatformSharingData;
  v14 = [(DACarKeyAdditionalCrossPlatformSharingData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sharingSessionUUID, d);
    objc_storeStrong(&v15->_bindingAttestation, attestation);
    v15->_targetDeviceType = type;
    objc_storeStrong(&v15->_initiatorIdsPseudonym, pseudonym);
  }

  return v15;
}

- (DACarKeyAdditionalCrossPlatformSharingData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = DACarKeyAdditionalCrossPlatformSharingData;
  v5 = [(DACarKeyAdditionalCrossPlatformSharingData *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"sharingSessionUUID"];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CCAD78]);
      v8 = [dictionaryCopy objectForKeyedSubscript:@"sharingSessionUUID"];
      v9 = [v7 initWithUUIDString:v8];
      sharingSessionUUID = v5->_sharingSessionUUID;
      v5->_sharingSessionUUID = v9;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bindingAttestation"];
    v12 = kmlUtilDataForHexString(v11);
    bindingAttestation = v5->_bindingAttestation;
    v5->_bindingAttestation = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"targetDeviceType"];
    v5->_targetDeviceType = [v14 integerValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"initiatorIdsPseudonym"];
    initiatorIdsPseudonym = v5->_initiatorIdsPseudonym;
    v5->_initiatorIdsPseudonym = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[DACarKeyAdditionalCrossPlatformSharingData allocWithZone:](DACarKeyAdditionalCrossPlatformSharingData init];
  if (v5)
  {
    v6 = [(NSUUID *)self->_sharingSessionUUID copyWithZone:zone];
    sharingSessionUUID = v5->_sharingSessionUUID;
    v5->_sharingSessionUUID = v6;

    v8 = [(NSData *)self->_bindingAttestation copyWithZone:zone];
    bindingAttestation = v5->_bindingAttestation;
    v5->_bindingAttestation = v8;

    v5->_targetDeviceType = self->_targetDeviceType;
    v10 = [(NSString *)self->_initiatorIdsPseudonym copyWithZone:zone];
    initiatorIdsPseudonym = v5->_initiatorIdsPseudonym;
    v5->_initiatorIdsPseudonym = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sharingSessionUUID = [(DACarKeyAdditionalCrossPlatformSharingData *)self sharingSessionUUID];
  [coderCopy encodeObject:sharingSessionUUID forKey:@"sharingSessionUUID"];

  bindingAttestation = [(DACarKeyAdditionalCrossPlatformSharingData *)self bindingAttestation];
  [coderCopy encodeObject:bindingAttestation forKey:@"bindingAttestation"];

  [coderCopy encodeInteger:-[DACarKeyAdditionalCrossPlatformSharingData targetDeviceType](self forKey:{"targetDeviceType"), @"targetDeviceType"}];
  initiatorIdsPseudonym = [(DACarKeyAdditionalCrossPlatformSharingData *)self initiatorIdsPseudonym];
  [coderCopy encodeObject:initiatorIdsPseudonym forKey:@"initiatorIdsPseudonym"];
}

- (DACarKeyAdditionalCrossPlatformSharingData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DACarKeyAdditionalCrossPlatformSharingData;
  v5 = [(DACarKeyAdditionalCrossPlatformSharingData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionUUID"];
    sharingSessionUUID = v5->_sharingSessionUUID;
    v5->_sharingSessionUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bindingAttestation"];
    bindingAttestation = v5->_bindingAttestation;
    v5->_bindingAttestation = v8;

    v5->_targetDeviceType = [coderCopy decodeIntegerForKey:@"targetDeviceType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initiatorIdsPseudonym"];
    initiatorIdsPseudonym = v5->_initiatorIdsPseudonym;
    v5->_initiatorIdsPseudonym = v10;
  }

  return v5;
}

+ (id)decodeWithData:(id)data error:(id *)error
{
  v5 = decodeWithData_error__pred_360;
  dataCopy = data;
  if (v5 != -1)
  {
    +[DACarKeyAdditionalCrossPlatformSharingData decodeWithData:error:];
  }

  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:decodeWithData_error__allowedClasses_361 fromData:dataCopy error:error];

  return v7;
}

uint64_t __67__DACarKeyAdditionalCrossPlatformSharingData_decodeWithData_error___block_invoke()
{
  decodeWithData_error__allowedClasses_361 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SharingSession UUID       : %@\n", self->_sharingSessionUUID];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"BindingAttestation        : %@\n", self->_bindingAttestation];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target Device Type        : %ld\n", self->_targetDeviceType];
  [string appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initiator IDS Pseudonym   : %@\n", self->_initiatorIdsPseudonym];
  [string appendString:v7];

  return string;
}

- (id)asDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uUIDString = [(NSUUID *)self->_sharingSessionUUID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"sharingSessionUUID"];

  v5 = kmlUtilHexStringFromData(self->_bindingAttestation);
  [dictionary setObject:v5 forKeyedSubscript:@"bindingAttestation"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_targetDeviceType];
  [dictionary setObject:v6 forKeyedSubscript:@"targetDeviceType"];

  [dictionary setObject:self->_initiatorIdsPseudonym forKeyedSubscript:@"initiatorIdsPseudonym"];

  return dictionary;
}

@end