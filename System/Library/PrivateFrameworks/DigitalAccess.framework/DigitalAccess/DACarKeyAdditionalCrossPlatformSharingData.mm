@interface DACarKeyAdditionalCrossPlatformSharingData
+ (id)decodeWithData:(id)a3 error:(id *)a4;
- (DACarKeyAdditionalCrossPlatformSharingData)initWithCoder:(id)a3;
- (DACarKeyAdditionalCrossPlatformSharingData)initWithDictionary:(id)a3;
- (DACarKeyAdditionalCrossPlatformSharingData)initWithSharingSessionUUID:(id)a3 bindingAttestation:(id)a4 targetDeviceType:(int64_t)a5 initiatorIdsPseudonym:(id)a6;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DACarKeyAdditionalCrossPlatformSharingData

- (DACarKeyAdditionalCrossPlatformSharingData)initWithSharingSessionUUID:(id)a3 bindingAttestation:(id)a4 targetDeviceType:(int64_t)a5 initiatorIdsPseudonym:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DACarKeyAdditionalCrossPlatformSharingData;
  v14 = [(DACarKeyAdditionalCrossPlatformSharingData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sharingSessionUUID, a3);
    objc_storeStrong(&v15->_bindingAttestation, a4);
    v15->_targetDeviceType = a5;
    objc_storeStrong(&v15->_initiatorIdsPseudonym, a6);
  }

  return v15;
}

- (DACarKeyAdditionalCrossPlatformSharingData)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DACarKeyAdditionalCrossPlatformSharingData;
  v5 = [(DACarKeyAdditionalCrossPlatformSharingData *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"sharingSessionUUID"];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CCAD78]);
      v8 = [v4 objectForKeyedSubscript:@"sharingSessionUUID"];
      v9 = [v7 initWithUUIDString:v8];
      sharingSessionUUID = v5->_sharingSessionUUID;
      v5->_sharingSessionUUID = v9;
    }

    v11 = [v4 objectForKeyedSubscript:@"bindingAttestation"];
    v12 = kmlUtilDataForHexString(v11);
    bindingAttestation = v5->_bindingAttestation;
    v5->_bindingAttestation = v12;

    v14 = [v4 objectForKeyedSubscript:@"targetDeviceType"];
    v5->_targetDeviceType = [v14 integerValue];

    v15 = [v4 objectForKeyedSubscript:@"initiatorIdsPseudonym"];
    initiatorIdsPseudonym = v5->_initiatorIdsPseudonym;
    v5->_initiatorIdsPseudonym = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[DACarKeyAdditionalCrossPlatformSharingData allocWithZone:](DACarKeyAdditionalCrossPlatformSharingData init];
  if (v5)
  {
    v6 = [(NSUUID *)self->_sharingSessionUUID copyWithZone:a3];
    sharingSessionUUID = v5->_sharingSessionUUID;
    v5->_sharingSessionUUID = v6;

    v8 = [(NSData *)self->_bindingAttestation copyWithZone:a3];
    bindingAttestation = v5->_bindingAttestation;
    v5->_bindingAttestation = v8;

    v5->_targetDeviceType = self->_targetDeviceType;
    v10 = [(NSString *)self->_initiatorIdsPseudonym copyWithZone:a3];
    initiatorIdsPseudonym = v5->_initiatorIdsPseudonym;
    v5->_initiatorIdsPseudonym = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DACarKeyAdditionalCrossPlatformSharingData *)self sharingSessionUUID];
  [v4 encodeObject:v5 forKey:@"sharingSessionUUID"];

  v6 = [(DACarKeyAdditionalCrossPlatformSharingData *)self bindingAttestation];
  [v4 encodeObject:v6 forKey:@"bindingAttestation"];

  [v4 encodeInteger:-[DACarKeyAdditionalCrossPlatformSharingData targetDeviceType](self forKey:{"targetDeviceType"), @"targetDeviceType"}];
  v7 = [(DACarKeyAdditionalCrossPlatformSharingData *)self initiatorIdsPseudonym];
  [v4 encodeObject:v7 forKey:@"initiatorIdsPseudonym"];
}

- (DACarKeyAdditionalCrossPlatformSharingData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DACarKeyAdditionalCrossPlatformSharingData;
  v5 = [(DACarKeyAdditionalCrossPlatformSharingData *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionUUID"];
    sharingSessionUUID = v5->_sharingSessionUUID;
    v5->_sharingSessionUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bindingAttestation"];
    bindingAttestation = v5->_bindingAttestation;
    v5->_bindingAttestation = v8;

    v5->_targetDeviceType = [v4 decodeIntegerForKey:@"targetDeviceType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initiatorIdsPseudonym"];
    initiatorIdsPseudonym = v5->_initiatorIdsPseudonym;
    v5->_initiatorIdsPseudonym = v10;
  }

  return v5;
}

+ (id)decodeWithData:(id)a3 error:(id *)a4
{
  v5 = decodeWithData_error__pred_360;
  v6 = a3;
  if (v5 != -1)
  {
    +[DACarKeyAdditionalCrossPlatformSharingData decodeWithData:error:];
  }

  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:decodeWithData_error__allowedClasses_361 fromData:v6 error:a4];

  return v7;
}

uint64_t __67__DACarKeyAdditionalCrossPlatformSharingData_decodeWithData_error___block_invoke()
{
  decodeWithData_error__allowedClasses_361 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SharingSession UUID       : %@\n", self->_sharingSessionUUID];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"BindingAttestation        : %@\n", self->_bindingAttestation];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target Device Type        : %ld\n", self->_targetDeviceType];
  [v3 appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initiator IDS Pseudonym   : %@\n", self->_initiatorIdsPseudonym];
  [v3 appendString:v7];

  return v3;
}

- (id)asDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NSUUID *)self->_sharingSessionUUID UUIDString];
  [v3 setObject:v4 forKeyedSubscript:@"sharingSessionUUID"];

  v5 = kmlUtilHexStringFromData(self->_bindingAttestation);
  [v3 setObject:v5 forKeyedSubscript:@"bindingAttestation"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_targetDeviceType];
  [v3 setObject:v6 forKeyedSubscript:@"targetDeviceType"];

  [v3 setObject:self->_initiatorIdsPseudonym forKeyedSubscript:@"initiatorIdsPseudonym"];

  return v3;
}

@end