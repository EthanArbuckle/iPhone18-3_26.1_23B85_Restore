@interface FAAgeRange
+ (id)ageRangeResponseDisplayNames;
+ (id)ageRangeResponseTypeDisplayNames;
+ (id)ageRangeValidationLevelDisplayNames;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualAgeRange:(id)a3;
- (FAAgeRange)initWithAltDSID:(id)a3 bundleID:(id)a4 lowerbound:(id)a5 upperbound:(id)a6;
- (FAAgeRange)initWithAltDSID:(id)a3 bundleID:(id)a4 lowerbound:(id)a5 upperbound:(id)a6 response:(int64_t)a7 responseType:(int64_t)a8 createdAt:(id)a9 invalidatedAt:(id)a10 validationLevel:(int64_t)a11;
- (FAAgeRange)initWithCoder:(id)a3;
- (id)ageRangeResponseToString;
- (id)ageRangeResponseTypeToString;
- (id)ageRangeValidationLevelToString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FAAgeRange

- (FAAgeRange)initWithAltDSID:(id)a3 bundleID:(id)a4 lowerbound:(id)a5 upperbound:(id)a6 response:(int64_t)a7 responseType:(int64_t)a8 createdAt:(id)a9 invalidatedAt:(id)a10 validationLevel:(int64_t)a11
{
  v16 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v17 = a9;
  v18 = a10;
  v27.receiver = self;
  v27.super_class = FAAgeRange;
  v19 = [(FAAgeRange *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_altDSID, a3);
    objc_storeStrong(&v20->_bundleID, a4);
    objc_storeStrong(&v20->_lowerbound, a5);
    objc_storeStrong(&v20->_upperbound, a6);
    v20->_response = a7;
    v20->_responseType = a8;
    objc_storeStrong(&v20->_createdAt, a9);
    objc_storeStrong(&v20->_invalidatedAt, a10);
    v20->_validationLevel = a11;
  }

  return v20;
}

- (FAAgeRange)initWithAltDSID:(id)a3 bundleID:(id)a4 lowerbound:(id)a5 upperbound:(id)a6
{
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 date];
  v16 = [(FAAgeRange *)self initWithAltDSID:v14 bundleID:v13 lowerbound:v12 upperbound:v11 response:2 responseType:0 createdAt:v15 invalidatedAt:0 validationLevel:1];

  return v16;
}

- (FAAgeRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FAAgeRange *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lowerBound"];
    lowerbound = v5->_lowerbound;
    v5->_lowerbound = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_upperBound"];
    upperbound = v5->_upperbound;
    v5->_upperbound = v12;

    v5->_response = [v4 decodeIntegerForKey:@"_response"];
    v5->_responseType = [v4 decodeIntegerForKey:@"_responseType"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_createdAt"];
    createdAt = v5->_createdAt;
    v5->_createdAt = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_invalidatedAt"];
    invalidatedAt = v5->_invalidatedAt;
    v5->_invalidatedAt = v16;

    v5->_validationLevel = [v4 decodeIntegerForKey:@"_validationLevel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  altDSID = self->_altDSID;
  v5 = a3;
  [v5 encodeObject:altDSID forKey:@"_altDSID"];
  [v5 encodeObject:self->_bundleID forKey:@"_bundleID"];
  [v5 encodeObject:self->_lowerbound forKey:@"_lowerBound"];
  [v5 encodeObject:self->_upperbound forKey:@"_upperBound"];
  [v5 encodeInteger:self->_response forKey:@"_response"];
  [v5 encodeInteger:self->_responseType forKey:@"_responseType"];
  [v5 encodeObject:self->_createdAt forKey:@"_createdAt"];
  [v5 encodeObject:self->_invalidatedAt forKey:@"_invalidatedAt"];
  [v5 encodeInteger:self->_validationLevel forKey:@"_validationLevel"];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v6 = [(NSNumber *)self->_lowerbound intValue];
  v7 = [(NSNumber *)self->_upperbound intValue];
  v8 = [(FAAgeRange *)self ageRangeResponseToString];
  v9 = [(FAAgeRange *)self ageRangeResponseTypeToString];
  createdAt = self->_createdAt;
  invalidatedAt = self->_invalidatedAt;
  v12 = [(FAAgeRange *)self ageRangeValidationLevelToString];
  v13 = [v3 stringWithFormat:@"Age Range record with altDSID: %@, bundleID: %@, lowerbound: %ld, upperbound: %ld, response: %@, responseType: %@, createdAt: %@, invalidatedAt: %@, validationLevel: %@", altDSID, bundleID, v6, v7, v8, v9, createdAt, invalidatedAt, v12];

  return v13;
}

- (unint64_t)hash
{
  v3 = [(FAAgeRange *)self altDSID];
  v4 = [v3 hash];
  v5 = [(FAAgeRange *)self bundleID];
  v6 = [v5 hash] ^ v4;
  v7 = [(FAAgeRange *)self lowerbound];
  v8 = [v7 hash];
  v9 = [(FAAgeRange *)self upperbound];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(FAAgeRange *)self response];
  v12 = v11 ^ [(FAAgeRange *)self responseType];
  v13 = [(FAAgeRange *)self createdAt];
  v14 = v12 ^ [v13 hash];
  v15 = [(FAAgeRange *)self invalidatedAt];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(FAAgeRange *)self validationLevel];

  return v16 ^ v17;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FAAgeRange *)self isEqualAgeRange:v4];
  }

  return v5;
}

- (BOOL)isEqualAgeRange:(id)a3
{
  v4 = a3;
  v5 = [(FAAgeRange *)self altDSID];
  v6 = [v4 altDSID];
  if (v5 == v6)
  {
    v8 = [(FAAgeRange *)self bundleID];
    v9 = [v4 bundleID];
    if (v8 == v9)
    {
      v10 = [(FAAgeRange *)self lowerbound];
      v11 = [v4 lowerbound];
      if (v10 == v11)
      {
        v12 = [(FAAgeRange *)self upperbound];
        v13 = [v4 upperbound];
        if (v12 == v13)
        {
          v26 = v12;
          v14 = [(FAAgeRange *)self response];
          if (v14 == [v4 response] && (v15 = -[FAAgeRange responseType](self, "responseType"), v15 == objc_msgSend(v4, "responseType")))
          {
            v16 = [(FAAgeRange *)self createdAt];
            v17 = [v4 createdAt];
            v25 = v16;
            v18 = v16 == v17;
            v12 = v26;
            if (v18)
            {
              v23 = v17;
              v24 = [(FAAgeRange *)self invalidatedAt];
              v19 = [v4 invalidatedAt];
              if (v24 == v19)
              {
                v22 = v19;
                v20 = [(FAAgeRange *)self validationLevel];
                v18 = v20 == [v4 validationLevel];
                v19 = v22;
                v12 = v26;
                v7 = v18;
              }

              else
              {
                v7 = 0;
              }

              v17 = v23;
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = 0;
            v12 = v26;
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
  v3 = [objc_opt_class() ageRangeResponseDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRange response](self, "response")}];
  v5 = [v3 objectForKeyedSubscript:v4];

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
  v3 = [objc_opt_class() ageRangeResponseTypeDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRange responseType](self, "responseType")}];
  v5 = [v3 objectForKeyedSubscript:v4];

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
  v3 = [objc_opt_class() ageRangeValidationLevelDisplayNames];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAAgeRange validationLevel](self, "validationLevel")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

@end