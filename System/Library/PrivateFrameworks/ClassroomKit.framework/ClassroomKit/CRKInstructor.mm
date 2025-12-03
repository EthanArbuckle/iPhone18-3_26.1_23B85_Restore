@interface CRKInstructor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstructor:(id)instructor;
- (CRKInstructor)initWithCoder:(id)coder;
- (NSDictionary)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKInstructor

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  sessionIdentifier = [(CRKInstructor *)self sessionIdentifier];
  [v3 setObject:sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];

  userIdentifier = [(CRKInstructor *)self userIdentifier];
  [v3 setObject:userIdentifier forKeyedSubscript:@"userIdentifier"];

  displayName = [(CRKInstructor *)self displayName];
  [v3 setObject:displayName forKeyedSubscript:@"displayName"];

  courseName = [(CRKInstructor *)self courseName];
  [v3 setObject:courseName forKeyedSubscript:@"courseName"];

  imageData = [(CRKInstructor *)self imageData];
  if (imageData)
  {
    v9 = MEMORY[0x277CCACA8];
    imageData2 = [(CRKInstructor *)self imageData];
    v11 = [v9 stringWithFormat:@"Data with length %lu", objc_msgSend(imageData2, "length")];
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
  sessionIdentifier = [(CRKInstructor *)self sessionIdentifier];
  stringValue = [sessionIdentifier stringValue];
  v4 = [stringValue hash];

  return v4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKInstructor *)self isEqualToInstructor:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToInstructor:(id)instructor
{
  instructorCopy = instructor;
  sessionIdentifier = [(CRKInstructor *)self sessionIdentifier];
  sessionIdentifier2 = [instructorCopy sessionIdentifier];
  v7 = sessionIdentifier;
  v8 = sessionIdentifier2;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    userIdentifier = [(CRKInstructor *)self userIdentifier];
    userIdentifier2 = [instructorCopy userIdentifier];
    v12 = userIdentifier;
    v13 = userIdentifier2;
    if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
    {
      LOBYTE(v30) = 0;
    }

    else
    {
      displayName = [(CRKInstructor *)self displayName];
      displayName2 = [instructorCopy displayName];
      v17 = displayName;
      v18 = displayName2;
      if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
      {
        LOBYTE(v30) = 0;
      }

      else
      {
        courseName = [(CRKInstructor *)self courseName];
        courseName2 = [instructorCopy courseName];
        v22 = courseName;
        v37 = courseName2;
        v38 = v22;
        if (v22 | v37 && (v35 = [v22 isEqual:v37], v37, v22, !v35))
        {
          LOBYTE(v30) = 0;
        }

        else
        {
          v36 = v17;
          imageData = [(CRKInstructor *)self imageData];
          crk_sha1Hash = [imageData crk_sha1Hash];
          imageData2 = [instructorCopy imageData];
          crk_sha1Hash2 = [imageData2 crk_sha1Hash];
          v25 = crk_sha1Hash;
          v26 = crk_sha1Hash2;
          if ((!(v25 | v26) || (v27 = [v25 isEqual:v26], v26, v25, v27)) && (v28 = -[CRKInstructor disallowsClassroomAirDropOverLocalNetwork](self, "disallowsClassroomAirDropOverLocalNetwork"), v28 == objc_msgSend(instructorCopy, "disallowsClassroomAirDropOverLocalNetwork")) && (v29 = -[CRKInstructor allowsStudentInitiatedDisconnection](self, "allowsStudentInitiatedDisconnection"), v29 == objc_msgSend(instructorCopy, "allowsStudentInitiatedDisconnection")))
          {
            isObservingStudentScreen = [(CRKInstructor *)self isObservingStudentScreen];
            v30 = isObservingStudentScreen ^ [instructorCopy isObservingStudentScreen] ^ 1;
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

- (CRKInstructor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CRKInstructor;
  v5 = [(CRKInstructor *)&v25 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"courseName"];
    courseName = v5->_courseName;
    v5->_courseName = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disallowsClassroomAirDropOverLocalNetwork"];
    v5->_disallowsClassroomAirDropOverLocalNetwork = [v21 BOOLValue];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsStudentInitiatedDisconnection"];
    v5->_allowsStudentInitiatedDisconnection = [v22 BOOLValue];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"observingStudentScreen"];
    v5->_observingStudentScreen = [v23 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionIdentifier = [(CRKInstructor *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];

  userIdentifier = [(CRKInstructor *)self userIdentifier];
  [coderCopy encodeObject:userIdentifier forKey:@"userIdentifier"];

  displayName = [(CRKInstructor *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  courseName = [(CRKInstructor *)self courseName];
  [coderCopy encodeObject:courseName forKey:@"courseName"];

  imageData = [(CRKInstructor *)self imageData];
  [coderCopy encodeObject:imageData forKey:@"imageData"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor disallowsClassroomAirDropOverLocalNetwork](self, "disallowsClassroomAirDropOverLocalNetwork")}];
  [coderCopy encodeObject:v10 forKey:@"disallowsClassroomAirDropOverLocalNetwork"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor allowsStudentInitiatedDisconnection](self, "allowsStudentInitiatedDisconnection")}];
  [coderCopy encodeObject:v11 forKey:@"allowsStudentInitiatedDisconnection"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKInstructor isObservingStudentScreen](self, "isObservingStudentScreen")}];
  [coderCopy encodeObject:v12 forKey:@"observingStudentScreen"];
}

@end