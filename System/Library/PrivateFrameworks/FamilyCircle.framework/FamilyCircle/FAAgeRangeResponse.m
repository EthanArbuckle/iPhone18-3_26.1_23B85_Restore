@interface FAAgeRangeResponse
+ (id)ageRangeResponseDisplayNames;
+ (id)ageRangeValidationLevelDisplayNames;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualAgeRange:(id)a3;
- (FAAgeRangeResponse)initWithCoder:(id)a3;
- (FAAgeRangeResponse)initWithLowerbound:(id)a3 upperbound:(id)a4 validationLevel:(int64_t)a5 response:(int64_t)a6 parentalControlsInformation:(id)a7 isSharingNewInformation:(BOOL)a8;
- (id)ageRangeResponseToString;
- (id)ageRangeValidationLevelToString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FAAgeRangeResponse

- (FAAgeRangeResponse)initWithLowerbound:(id)a3 upperbound:(id)a4 validationLevel:(int64_t)a5 response:(int64_t)a6 parentalControlsInformation:(id)a7 isSharingNewInformation:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = FAAgeRangeResponse;
  v18 = [(FAAgeRangeResponse *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_parentalControlsInformation, a7);
    objc_storeStrong(&v19->_lowerbound, a3);
    objc_storeStrong(&v19->_upperbound, a4);
    v19->_validationLevel = a5;
    v19->_response = a6;
    objc_storeStrong(&v19->_parentalControlsInformation, a7);
    v19->_isSharingNewInformation = a8;
  }

  return v19;
}

- (FAAgeRangeResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FAAgeRangeResponse *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lowerbound"];
    lowerbound = v5->_lowerbound;
    v5->_lowerbound = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_upperbound"];
    upperbound = v5->_upperbound;
    v5->_upperbound = v11;

    v5->_validationLevel = [v4 decodeIntegerForKey:@"_validationLevel"];
    v5->_response = [v4 decodeIntegerForKey:@"_response"];
    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"parentalControls"];
    parentalControlsInformation = v5->_parentalControlsInformation;
    v5->_parentalControlsInformation = v13;

    v5->_isSharingNewInformation = [v4 decodeBoolForKey:@"_isSharingNewInformation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  lowerbound = self->_lowerbound;
  v5 = a3;
  [v5 encodeObject:lowerbound forKey:@"_lowerbound"];
  [v5 encodeObject:self->_upperbound forKey:@"_upperbound"];
  [v5 encodeInteger:self->_validationLevel forKey:@"_validationLevel"];
  [v5 encodeInteger:self->_response forKey:@"_response"];
  [v5 encodeObject:self->_parentalControlsInformation forKey:@"parentalControls"];
  [v5 encodeBool:self->_isSharingNewInformation forKey:@"_isSharingNewInformation"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(NSNumber *)self->_lowerbound copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(NSNumber *)self->_upperbound copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  *(v4 + 32) = self->_validationLevel;
  *(v4 + 40) = self->_response;
  v9 = [(NSArray *)self->_parentalControlsInformation copy];
  v10 = *(v4 + 48);
  *(v4 + 48) = v9;

  *(v4 + 8) = self->_isSharingNewInformation;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  lowerbound = self->_lowerbound;
  upperbound = self->_upperbound;
  v6 = [(FAAgeRangeResponse *)self ageRangeValidationLevelToString];
  v7 = [(FAAgeRangeResponse *)self ageRangeResponseToString];
  v8 = v7;
  parentalControlsInformation = self->_parentalControlsInformation;
  if (self->_isSharingNewInformation)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"Age Range response with lowerbound: %@, upperbound: %@, validationLevel: %@, response: %@, parentalControlsInformation: %@, isSharingNewInformation: %@", lowerbound, upperbound, v6, v7, self->_parentalControlsInformation, v10];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(FAAgeRangeResponse *)self lowerbound];
  v4 = [v3 hash];
  v5 = [(FAAgeRangeResponse *)self upperbound];
  v6 = [v5 hash] ^ v4;
  v7 = [(FAAgeRangeResponse *)self validationLevel];
  v8 = v6 ^ v7 ^ [(FAAgeRangeResponse *)self response];
  v9 = [(FAAgeRangeResponse *)self isSharingNewInformation];

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FAAgeRangeResponse *)self isEqualAgeRange:v4];
  }

  return v5;
}

- (BOOL)isEqualAgeRange:(id)a3
{
  v4 = a3;
  v5 = [(FAAgeRangeResponse *)self lowerbound];
  v6 = [v4 lowerbound];
  if (v5 == v6)
  {
    v8 = [(FAAgeRangeResponse *)self upperbound];
    v9 = [v4 upperbound];
    if (v8 == v9 && (v10 = -[FAAgeRangeResponse validationLevel](self, "validationLevel"), v10 == [v4 validationLevel]) && (v11 = -[FAAgeRangeResponse response](self, "response"), v11 == objc_msgSend(v4, "response")))
    {
      v12 = [(FAAgeRangeResponse *)self isSharingNewInformation];
      v7 = v12 ^ [v4 isSharingNewInformation] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (id)ageRangeValidationLevelDisplayNames
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2F3B9A0;
  v5[1] = &unk_1F2F3B9B8;
  v6[0] = @"Unknown";
  v6[1] = @"Self Attested";
  v5[2] = &unk_1F2F3B9D0;
  v6[2] = @"Guardian Attested";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)ageRangeResponseDisplayNames
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2F3B9E8;
  v5[1] = &unk_1F2F3BA00;
  v6[0] = @"Unknown";
  v6[1] = @"Shared";
  v5[2] = &unk_1F2F3BA18;
  v6[2] = @"Not Shared";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)ageRangeValidationLevelToString
{
  v3 = [objc_opt_class() ageRangeValidationLevelDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRangeResponse validationLevel](self, "validationLevel")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (id)ageRangeResponseToString
{
  v3 = [objc_opt_class() ageRangeResponseDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRangeResponse response](self, "response")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

@end