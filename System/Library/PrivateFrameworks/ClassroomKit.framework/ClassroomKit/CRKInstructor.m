@interface CRKInstructor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInstructor:(id)a3;
- (CRKInstructor)initWithCoder:(id)a3;
- (NSDictionary)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKInstructor

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CRKInstructor *)self sessionIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"sessionIdentifier"];

  v5 = [(CRKInstructor *)self userIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"userIdentifier"];

  v6 = [(CRKInstructor *)self displayName];
  [v3 setObject:v6 forKeyedSubscript:@"displayName"];

  v7 = [(CRKInstructor *)self courseName];
  [v3 setObject:v7 forKeyedSubscript:@"courseName"];

  v8 = [(CRKInstructor *)self imageData];
  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(CRKInstructor *)self imageData];
    v11 = [v9 stringWithFormat:@"Data with length %lu", objc_msgSend(v10, "length")];
    [v3 setObject:v11 forKeyedSubscript:@"imageData"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"imageData"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor disallowsClassroomAirDropOverLocalNetwork](self, "disallowsClassroomAirDropOverLocalNetwork")}];
  [v3 setObject:v12 forKeyedSubscript:@"disallowsClassroomAirDropOverLocalNetwork"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor allowsStudentInitiatedDisconnection](self, "allowsStudentInitiatedDisconnection")}];
  [v3 setObject:v13 forKeyedSubscript:@"allowsStudentInitiatedDisconnection"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor isObservingStudentScreen](self, "isObservingStudentScreen")}];
  [v3 setObject:v14 forKeyedSubscript:@"observingStudentScreen"];

  v15 = [v3 copy];

  return v15;
}

- (unint64_t)hash
{
  v2 = [(CRKInstructor *)self sessionIdentifier];
  v3 = [v2 stringValue];
  v4 = [v3 hash];

  return v4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKInstructor *)self isEqualToInstructor:v4];
  }

  return v5;
}

- (BOOL)isEqualToInstructor:(id)a3
{
  v4 = a3;
  v5 = [(CRKInstructor *)self sessionIdentifier];
  v6 = [v4 sessionIdentifier];
  v7 = v5;
  v8 = v6;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v10 = [(CRKInstructor *)self userIdentifier];
    v11 = [v4 userIdentifier];
    v12 = v10;
    v13 = v11;
    if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
    {
      LOBYTE(v30) = 0;
    }

    else
    {
      v15 = [(CRKInstructor *)self displayName];
      v16 = [v4 displayName];
      v17 = v15;
      v18 = v16;
      if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
      {
        LOBYTE(v30) = 0;
      }

      else
      {
        v20 = [(CRKInstructor *)self courseName];
        v21 = [v4 courseName];
        v22 = v20;
        v37 = v21;
        v38 = v22;
        if (v22 | v37 && (v35 = [v22 isEqual:v37], v37, v22, !v35))
        {
          LOBYTE(v30) = 0;
        }

        else
        {
          v36 = v17;
          v34 = [(CRKInstructor *)self imageData];
          v23 = [v34 crk_sha1Hash];
          v33 = [v4 imageData];
          v24 = [v33 crk_sha1Hash];
          v25 = v23;
          v26 = v24;
          if ((!(v25 | v26) || (v27 = [v25 isEqual:v26], v26, v25, v27)) && (v28 = -[CRKInstructor disallowsClassroomAirDropOverLocalNetwork](self, "disallowsClassroomAirDropOverLocalNetwork"), v28 == objc_msgSend(v4, "disallowsClassroomAirDropOverLocalNetwork")) && (v29 = -[CRKInstructor allowsStudentInitiatedDisconnection](self, "allowsStudentInitiatedDisconnection"), v29 == objc_msgSend(v4, "allowsStudentInitiatedDisconnection")))
          {
            v32 = [(CRKInstructor *)self isObservingStudentScreen];
            v30 = v32 ^ [v4 isObservingStudentScreen] ^ 1;
          }

          else
          {
            LOBYTE(v30) = 0;
          }

          v17 = v36;
        }
      }
    }
  }

  return v30;
}

- (CRKInstructor)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CRKInstructor;
  v5 = [(CRKInstructor *)&v25 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"courseName"];
    courseName = v5->_courseName;
    v5->_courseName = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disallowsClassroomAirDropOverLocalNetwork"];
    v5->_disallowsClassroomAirDropOverLocalNetwork = [v21 BOOLValue];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsStudentInitiatedDisconnection"];
    v5->_allowsStudentInitiatedDisconnection = [v22 BOOLValue];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"observingStudentScreen"];
    v5->_observingStudentScreen = [v23 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKInstructor *)self sessionIdentifier];
  [v4 encodeObject:v5 forKey:@"sessionIdentifier"];

  v6 = [(CRKInstructor *)self userIdentifier];
  [v4 encodeObject:v6 forKey:@"userIdentifier"];

  v7 = [(CRKInstructor *)self displayName];
  [v4 encodeObject:v7 forKey:@"displayName"];

  v8 = [(CRKInstructor *)self courseName];
  [v4 encodeObject:v8 forKey:@"courseName"];

  v9 = [(CRKInstructor *)self imageData];
  [v4 encodeObject:v9 forKey:@"imageData"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor disallowsClassroomAirDropOverLocalNetwork](self, "disallowsClassroomAirDropOverLocalNetwork")}];
  [v4 encodeObject:v10 forKey:@"disallowsClassroomAirDropOverLocalNetwork"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor allowsStudentInitiatedDisconnection](self, "allowsStudentInitiatedDisconnection")}];
  [v4 encodeObject:v11 forKey:@"allowsStudentInitiatedDisconnection"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor isObservingStudentScreen](self, "isObservingStudentScreen")}];
  [v4 encodeObject:v12 forKey:@"observingStudentScreen"];
}

@end