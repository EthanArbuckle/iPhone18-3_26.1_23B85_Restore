@interface FAAgeRangeRequestModel
- (FAAgeRangeRequestModel)initWithCoder:(id)coder;
- (FAAgeRangeRequestModel)initWithRequestType:(int64_t)type entryPoint:(int64_t)point altDSID:(id)d bundleID:(id)iD ageGates:(id)gates userAgeOverride:(id)override attestedAtOverrideInDays:(id)days;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAAgeRangeRequestModel

- (FAAgeRangeRequestModel)initWithRequestType:(int64_t)type entryPoint:(int64_t)point altDSID:(id)d bundleID:(id)iD ageGates:(id)gates userAgeOverride:(id)override attestedAtOverrideInDays:(id)days
{
  dCopy = d;
  iDCopy = iD;
  gatesCopy = gates;
  overrideCopy = override;
  daysCopy = days;
  v24.receiver = self;
  v24.super_class = FAAgeRangeRequestModel;
  v18 = [(FAAgeRangeRequestModel *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_requestType = type;
    v18->_entryPoint = point;
    objc_storeStrong(&v18->_altDSID, d);
    objc_storeStrong(&v19->_bundleID, iD);
    objc_storeStrong(&v19->_ageGates, gates);
    objc_storeStrong(&v19->_userAgeOverride, override);
    objc_storeStrong(&v19->_attestedAtOverrideInDays, days);
  }

  return v19;
}

- (FAAgeRangeRequestModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = FAAgeRangeRequestModel;
  v5 = [(FAAgeRangeRequestModel *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v5->_requestType = [coderCopy decodeIntegerForKey:@"_requestType"];
    v5->_entryPoint = [coderCopy decodeIntegerForKey:@"_entryPoint"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v11;

    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_ageGates"];
    ageGates = v5->_ageGates;
    v5->_ageGates = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userAgeOverride"];
    userAgeOverride = v5->_userAgeOverride;
    v5->_userAgeOverride = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_attestedAtOverrideInDays"];
    attestedAtOverrideInDays = v5->_attestedAtOverrideInDays;
    v5->_attestedAtOverrideInDays = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requestType = self->_requestType;
  coderCopy = coder;
  [coderCopy encodeInteger:requestType forKey:@"_requestType"];
  [coderCopy encodeInteger:self->_entryPoint forKey:@"_entryPoint"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"_bundleID"];
  [coderCopy encodeObject:self->_ageGates forKey:@"_ageGates"];
  [coderCopy encodeObject:self->_userAgeOverride forKey:@"_userAgeOverride"];
  [coderCopy encodeObject:self->_attestedAtOverrideInDays forKey:@"_attestedAtOverrideInDays"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v4[1] = self->_requestType;
  v4[2] = self->_entryPoint;
  v5 = [(NSString *)self->_altDSID copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSString *)self->_bundleID copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSArray *)self->_ageGates copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSNumber *)self->_userAgeOverride copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_attestedAtOverrideInDays copy];
  v14 = v4[6];
  v4[6] = v13;

  return v4;
}

@end