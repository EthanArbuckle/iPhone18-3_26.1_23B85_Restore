@interface FAAgeRange
+ (id)ageRangeResponseDisplayNames;
+ (id)ageRangeResponseTypeDisplayNames;
+ (id)ageRangeValidationLevelDisplayNames;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualAgeRange:(id)range;
- (FAAgeRange)initWithAltDSID:(id)d bundleID:(id)iD lowerbound:(id)lowerbound upperbound:(id)upperbound;
- (FAAgeRange)initWithAltDSID:(id)d bundleID:(id)iD lowerbound:(id)lowerbound upperbound:(id)upperbound response:(int64_t)response responseType:(int64_t)type createdAt:(id)at invalidatedAt:(id)self0 validationLevel:(int64_t)self1;
- (FAAgeRange)initWithCoder:(id)coder;
- (id)ageRangeResponseToString;
- (id)ageRangeResponseTypeToString;
- (id)ageRangeValidationLevelToString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAAgeRange

- (FAAgeRange)initWithAltDSID:(id)d bundleID:(id)iD lowerbound:(id)lowerbound upperbound:(id)upperbound response:(int64_t)response responseType:(int64_t)type createdAt:(id)at invalidatedAt:(id)self0 validationLevel:(int64_t)self1
{
  dCopy = d;
  iDCopy = iD;
  lowerboundCopy = lowerbound;
  upperboundCopy = upperbound;
  atCopy = at;
  invalidatedAtCopy = invalidatedAt;
  v27.receiver = self;
  v27.super_class = FAAgeRange;
  v19 = [(FAAgeRange *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_altDSID, d);
    objc_storeStrong(&v20->_bundleID, iD);
    objc_storeStrong(&v20->_lowerbound, lowerbound);
    objc_storeStrong(&v20->_upperbound, upperbound);
    v20->_response = response;
    v20->_responseType = type;
    objc_storeStrong(&v20->_createdAt, at);
    objc_storeStrong(&v20->_invalidatedAt, invalidatedAt);
    v20->_validationLevel = level;
  }

  return v20;
}

- (FAAgeRange)initWithAltDSID:(id)d bundleID:(id)iD lowerbound:(id)lowerbound upperbound:(id)upperbound
{
  v10 = MEMORY[0x1E695DF00];
  upperboundCopy = upperbound;
  lowerboundCopy = lowerbound;
  iDCopy = iD;
  dCopy = d;
  date = [v10 date];
  v16 = [(FAAgeRange *)self initWithAltDSID:dCopy bundleID:iDCopy lowerbound:lowerboundCopy upperbound:upperboundCopy response:2 responseType:0 createdAt:date invalidatedAt:0 validationLevel:1];

  return v16;
}

- (FAAgeRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAAgeRange *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lowerBound"];
    lowerbound = v5->_lowerbound;
    v5->_lowerbound = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_upperBound"];
    upperbound = v5->_upperbound;
    v5->_upperbound = v12;

    v5->_response = [coderCopy decodeIntegerForKey:@"_response"];
    v5->_responseType = [coderCopy decodeIntegerForKey:@"_responseType"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_createdAt"];
    createdAt = v5->_createdAt;
    v5->_createdAt = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_invalidatedAt"];
    invalidatedAt = v5->_invalidatedAt;
    v5->_invalidatedAt = v16;

    v5->_validationLevel = [coderCopy decodeIntegerForKey:@"_validationLevel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  altDSID = self->_altDSID;
  coderCopy = coder;
  [coderCopy encodeObject:altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"_bundleID"];
  [coderCopy encodeObject:self->_lowerbound forKey:@"_lowerBound"];
  [coderCopy encodeObject:self->_upperbound forKey:@"_upperBound"];
  [coderCopy encodeInteger:self->_response forKey:@"_response"];
  [coderCopy encodeInteger:self->_responseType forKey:@"_responseType"];
  [coderCopy encodeObject:self->_createdAt forKey:@"_createdAt"];
  [coderCopy encodeObject:self->_invalidatedAt forKey:@"_invalidatedAt"];
  [coderCopy encodeInteger:self->_validationLevel forKey:@"_validationLevel"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(NSString *)self->_altDSID copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_bundleID copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSNumber *)self->_lowerbound copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSNumber *)self->_upperbound copy];
  v12 = v4[4];
  v4[4] = v11;

  v4[5] = self->_response;
  v4[6] = self->_responseType;
  v13 = [(NSDate *)self->_createdAt copy];
  v14 = v4[8];
  v4[8] = v13;

  v15 = [(NSDate *)self->_invalidatedAt copy];
  v16 = v4[9];
  v4[9] = v15;

  v4[7] = self->_validationLevel;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  altDSID = self->_altDSID;
  bundleID = self->_bundleID;
  intValue = [(NSNumber *)self->_lowerbound intValue];
  intValue2 = [(NSNumber *)self->_upperbound intValue];
  ageRangeResponseToString = [(FAAgeRange *)self ageRangeResponseToString];
  ageRangeResponseTypeToString = [(FAAgeRange *)self ageRangeResponseTypeToString];
  createdAt = self->_createdAt;
  invalidatedAt = self->_invalidatedAt;
  ageRangeValidationLevelToString = [(FAAgeRange *)self ageRangeValidationLevelToString];
  v13 = [v3 stringWithFormat:@"Age Range record with altDSID: %@, bundleID: %@, lowerbound: %ld, upperbound: %ld, response: %@, responseType: %@, createdAt: %@, invalidatedAt: %@, validationLevel: %@", altDSID, bundleID, intValue, intValue2, ageRangeResponseToString, ageRangeResponseTypeToString, createdAt, invalidatedAt, ageRangeValidationLevelToString];

  return v13;
}

- (unint64_t)hash
{
  altDSID = [(FAAgeRange *)self altDSID];
  v4 = [altDSID hash];
  bundleID = [(FAAgeRange *)self bundleID];
  v6 = [bundleID hash] ^ v4;
  lowerbound = [(FAAgeRange *)self lowerbound];
  v8 = [lowerbound hash];
  upperbound = [(FAAgeRange *)self upperbound];
  v10 = v6 ^ v8 ^ [upperbound hash];
  response = [(FAAgeRange *)self response];
  v12 = response ^ [(FAAgeRange *)self responseType];
  createdAt = [(FAAgeRange *)self createdAt];
  v14 = v12 ^ [createdAt hash];
  invalidatedAt = [(FAAgeRange *)self invalidatedAt];
  v16 = v10 ^ v14 ^ [invalidatedAt hash];
  validationLevel = [(FAAgeRange *)self validationLevel];

  return v16 ^ validationLevel;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FAAgeRange *)self isEqualAgeRange:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualAgeRange:(id)range
{
  rangeCopy = range;
  altDSID = [(FAAgeRange *)self altDSID];
  altDSID2 = [rangeCopy altDSID];
  if (altDSID == altDSID2)
  {
    bundleID = [(FAAgeRange *)self bundleID];
    bundleID2 = [rangeCopy bundleID];
    if (bundleID == bundleID2)
    {
      lowerbound = [(FAAgeRange *)self lowerbound];
      lowerbound2 = [rangeCopy lowerbound];
      if (lowerbound == lowerbound2)
      {
        upperbound = [(FAAgeRange *)self upperbound];
        upperbound2 = [rangeCopy upperbound];
        if (upperbound == upperbound2)
        {
          v26 = upperbound;
          response = [(FAAgeRange *)self response];
          if (response == [rangeCopy response] && (v15 = -[FAAgeRange responseType](self, "responseType"), v15 == objc_msgSend(rangeCopy, "responseType")))
          {
            createdAt = [(FAAgeRange *)self createdAt];
            createdAt2 = [rangeCopy createdAt];
            v25 = createdAt;
            v18 = createdAt == createdAt2;
            upperbound = v26;
            if (v18)
            {
              v23 = createdAt2;
              invalidatedAt = [(FAAgeRange *)self invalidatedAt];
              invalidatedAt2 = [rangeCopy invalidatedAt];
              if (invalidatedAt == invalidatedAt2)
              {
                v22 = invalidatedAt2;
                validationLevel = [(FAAgeRange *)self validationLevel];
                v18 = validationLevel == [rangeCopy validationLevel];
                invalidatedAt2 = v22;
                upperbound = v26;
                v7 = v18;
              }

              else
              {
                v7 = 0;
              }

              createdAt2 = v23;
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = 0;
            upperbound = v26;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)ageRangeResponseDisplayNames
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2F3B8E0;
  v5[1] = &unk_1F2F3B8F8;
  v6[0] = @"Unknown";
  v6[1] = @"Shared";
  v5[2] = &unk_1F2F3B910;
  v6[2] = @"Not Shared";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)ageRangeResponseToString
{
  ageRangeResponseDisplayNames = [objc_opt_class() ageRangeResponseDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRange response](self, "response")}];
  v5 = [ageRangeResponseDisplayNames objectForKeyedSubscript:v4];

  return v5;
}

+ (id)ageRangeResponseTypeDisplayNames
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2F3B928;
  v5[1] = &unk_1F2F3B940;
  v6[0] = @"Automatic";
  v6[1] = @"Interactive";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)ageRangeResponseTypeToString
{
  ageRangeResponseTypeDisplayNames = [objc_opt_class() ageRangeResponseTypeDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRange responseType](self, "responseType")}];
  v5 = [ageRangeResponseTypeDisplayNames objectForKeyedSubscript:v4];

  return v5;
}

+ (id)ageRangeValidationLevelDisplayNames
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2F3B958;
  v5[1] = &unk_1F2F3B970;
  v6[0] = @"Unknown";
  v6[1] = @"SelfAttested";
  v5[2] = &unk_1F2F3B988;
  v6[2] = @"GuardianAttested";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)ageRangeValidationLevelToString
{
  ageRangeValidationLevelDisplayNames = [objc_opt_class() ageRangeValidationLevelDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRange validationLevel](self, "validationLevel")}];
  v5 = [ageRangeValidationLevelDisplayNames objectForKeyedSubscript:v4];

  return v5;
}

@end