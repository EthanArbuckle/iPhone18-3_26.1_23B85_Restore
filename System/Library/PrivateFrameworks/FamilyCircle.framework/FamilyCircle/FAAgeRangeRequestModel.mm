@interface FAAgeRangeRequestModel
- (FAAgeRangeRequestModel)initWithCoder:(id)a3;
- (FAAgeRangeRequestModel)initWithRequestType:(int64_t)a3 entryPoint:(int64_t)a4 altDSID:(id)a5 bundleID:(id)a6 ageGates:(id)a7 userAgeOverride:(id)a8 attestedAtOverrideInDays:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FAAgeRangeRequestModel

- (FAAgeRangeRequestModel)initWithRequestType:(int64_t)a3 entryPoint:(int64_t)a4 altDSID:(id)a5 bundleID:(id)a6 ageGates:(id)a7 userAgeOverride:(id)a8 attestedAtOverrideInDays:(id)a9
{
  v23 = a5;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = FAAgeRangeRequestModel;
  v18 = [(FAAgeRangeRequestModel *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_requestType = a3;
    v18->_entryPoint = a4;
    objc_storeStrong(&v18->_altDSID, a5);
    objc_storeStrong(&v19->_bundleID, a6);
    objc_storeStrong(&v19->_ageGates, a7);
    objc_storeStrong(&v19->_userAgeOverride, a8);
    objc_storeStrong(&v19->_attestedAtOverrideInDays, a9);
  }

  return v19;
}

- (FAAgeRangeRequestModel)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FAAgeRangeRequestModel;
  v5 = [(FAAgeRangeRequestModel *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v5->_requestType = [v4 decodeIntegerForKey:@"_requestType"];
    v5->_entryPoint = [v4 decodeIntegerForKey:@"_entryPoint"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v11;

    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"_ageGates"];
    ageGates = v5->_ageGates;
    v5->_ageGates = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userAgeOverride"];
    userAgeOverride = v5->_userAgeOverride;
    v5->_userAgeOverride = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_attestedAtOverrideInDays"];
    attestedAtOverrideInDays = v5->_attestedAtOverrideInDays;
    v5->_attestedAtOverrideInDays = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestType = self->_requestType;
  v5 = a3;
  [v5 encodeInteger:requestType forKey:@"_requestType"];
  [v5 encodeInteger:self->_entryPoint forKey:@"_entryPoint"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v5 encodeObject:self->_bundleID forKey:@"_bundleID"];
  [v5 encodeObject:self->_ageGates forKey:@"_ageGates"];
  [v5 encodeObject:self->_userAgeOverride forKey:@"_userAgeOverride"];
  [v5 encodeObject:self->_attestedAtOverrideInDays forKey:@"_attestedAtOverrideInDays"];
}

- (id)copyWithZone:(_NSZone *)a3
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