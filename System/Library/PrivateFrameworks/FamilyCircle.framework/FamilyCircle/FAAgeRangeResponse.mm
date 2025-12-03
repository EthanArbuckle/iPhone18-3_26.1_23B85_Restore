@interface FAAgeRangeResponse
+ (id)ageRangeResponseDisplayNames;
+ (id)ageRangeValidationLevelDisplayNames;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualAgeRange:(id)range;
- (FAAgeRangeResponse)initWithCoder:(id)coder;
- (FAAgeRangeResponse)initWithLowerbound:(id)lowerbound upperbound:(id)upperbound validationLevel:(int64_t)level response:(int64_t)response parentalControlsInformation:(id)information isSharingNewInformation:(BOOL)newInformation;
- (id)ageRangeResponseToString;
- (id)ageRangeValidationLevelToString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAAgeRangeResponse

- (FAAgeRangeResponse)initWithLowerbound:(id)lowerbound upperbound:(id)upperbound validationLevel:(int64_t)level response:(int64_t)response parentalControlsInformation:(id)information isSharingNewInformation:(BOOL)newInformation
{
  lowerboundCopy = lowerbound;
  upperboundCopy = upperbound;
  informationCopy = information;
  v21.receiver = self;
  v21.super_class = FAAgeRangeResponse;
  v18 = [(FAAgeRangeResponse *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_parentalControlsInformation, information);
    objc_storeStrong(&v19->_lowerbound, lowerbound);
    objc_storeStrong(&v19->_upperbound, upperbound);
    v19->_validationLevel = level;
    v19->_response = response;
    objc_storeStrong(&v19->_parentalControlsInformation, information);
    v19->_isSharingNewInformation = newInformation;
  }

  return v19;
}

- (FAAgeRangeResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAAgeRangeResponse *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lowerbound"];
    lowerbound = v5->_lowerbound;
    v5->_lowerbound = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_upperbound"];
    upperbound = v5->_upperbound;
    v5->_upperbound = v11;

    v5->_validationLevel = [coderCopy decodeIntegerForKey:@"_validationLevel"];
    v5->_response = [coderCopy decodeIntegerForKey:@"_response"];
    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parentalControls"];
    parentalControlsInformation = v5->_parentalControlsInformation;
    v5->_parentalControlsInformation = v13;

    v5->_isSharingNewInformation = [coderCopy decodeBoolForKey:@"_isSharingNewInformation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lowerbound = self->_lowerbound;
  coderCopy = coder;
  [coderCopy encodeObject:lowerbound forKey:@"_lowerbound"];
  [coderCopy encodeObject:self->_upperbound forKey:@"_upperbound"];
  [coderCopy encodeInteger:self->_validationLevel forKey:@"_validationLevel"];
  [coderCopy encodeInteger:self->_response forKey:@"_response"];
  [coderCopy encodeObject:self->_parentalControlsInformation forKey:@"parentalControls"];
  [coderCopy encodeBool:self->_isSharingNewInformation forKey:@"_isSharingNewInformation"];
}

- (id)copyWithZone:(_NSZone *)zone
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
  ageRangeValidationLevelToString = [(FAAgeRangeResponse *)self ageRangeValidationLevelToString];
  ageRangeResponseToString = [(FAAgeRangeResponse *)self ageRangeResponseToString];
  v8 = ageRangeResponseToString;
  parentalControlsInformation = self->_parentalControlsInformation;
  if (self->_isSharingNewInformation)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"Age Range response with lowerbound: %@, upperbound: %@, validationLevel: %@, response: %@, parentalControlsInformation: %@, isSharingNewInformation: %@", lowerbound, upperbound, ageRangeValidationLevelToString, ageRangeResponseToString, self->_parentalControlsInformation, v10];

  return v11;
}

- (unint64_t)hash
{
  lowerbound = [(FAAgeRangeResponse *)self lowerbound];
  v4 = [lowerbound hash];
  upperbound = [(FAAgeRangeResponse *)self upperbound];
  v6 = [upperbound hash] ^ v4;
  validationLevel = [(FAAgeRangeResponse *)self validationLevel];
  v8 = v6 ^ validationLevel ^ [(FAAgeRangeResponse *)self response];
  isSharingNewInformation = [(FAAgeRangeResponse *)self isSharingNewInformation];

  return v8 ^ isSharingNewInformation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FAAgeRangeResponse *)self isEqualAgeRange:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualAgeRange:(id)range
{
  rangeCopy = range;
  lowerbound = [(FAAgeRangeResponse *)self lowerbound];
  lowerbound2 = [rangeCopy lowerbound];
  if (lowerbound == lowerbound2)
  {
    upperbound = [(FAAgeRangeResponse *)self upperbound];
    upperbound2 = [rangeCopy upperbound];
    if (upperbound == upperbound2 && (v10 = -[FAAgeRangeResponse validationLevel](self, "validationLevel"), v10 == [rangeCopy validationLevel]) && (v11 = -[FAAgeRangeResponse response](self, "response"), v11 == objc_msgSend(rangeCopy, "response")))
    {
      isSharingNewInformation = [(FAAgeRangeResponse *)self isSharingNewInformation];
      v7 = isSharingNewInformation ^ [rangeCopy isSharingNewInformation] ^ 1;
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
  ageRangeValidationLevelDisplayNames = [objc_opt_class() ageRangeValidationLevelDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRangeResponse validationLevel](self, "validationLevel")}];
  v5 = [ageRangeValidationLevelDisplayNames objectForKeyedSubscript:v4];

  return v5;
}

- (id)ageRangeResponseToString
{
  ageRangeResponseDisplayNames = [objc_opt_class() ageRangeResponseDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRangeResponse response](self, "response")}];
  v5 = [ageRangeResponseDisplayNames objectForKeyedSubscript:v4];

  return v5;
}

@end