@interface CRKCourse
+ (id)keyPathsForValuesAffectingExpired;
+ (id)new;
+ (id)stringForType:(unint64_t)a3;
- (BOOL)isDeeplyEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCourse:(id)a3;
- (BOOL)isExpired;
- (CRKCourse)init;
- (CRKCourse)initWithCoder:(id)a3;
- (CRKCourse)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKCourse

- (CRKCourse)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    [CRKCourse initWithIdentifier:a2 type:self];
  }

  v12.receiver = self;
  v12.super_class = CRKCourse;
  v9 = [(CRKCourse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_courseIdentifier, a3);
    v10->_type = a4;
  }

  return v10;
}

+ (id)stringForType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278DC1BB0[a3];
  }
}

+ (id)keyPathsForValuesAffectingExpired
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"studentCredentialsAreValid";
  v6[1] = @"validTrustedCertificatePersistentIds";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (BOOL)isExpired
{
  if ([(CRKCourse *)self type]== 2)
  {
    return 0;
  }

  if (![(CRKCourse *)self studentCredentialsAreValid])
  {
    return 1;
  }

  v4 = [(CRKCourse *)self validTrustedCertificatePersistentIds];
  v3 = [v4 count] == 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKCourse *)self courseIdentifier];
  v6 = [(CRKCourse *)self courseName];
  v7 = [(CRKCourse *)self courseUser];
  v8 = [(CRKCourse *)self instructorsByIdentifier];
  v9 = [v8 allValues];
  v10 = [v3 stringWithFormat:@"<%@: %p {identifier = %@, name = %@, studentUser = %@, instructors = %@ }>", v4, self, v5, v6, v7, v9];

  return v10;
}

- (unint64_t)hash
{
  v2 = [(CRKCourse *)self courseIdentifier];
  v3 = [v2 hash];

  return v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKCourse *)self isEqualToCourse:v4];
  }

  return v5;
}

- (BOOL)isEqualToCourse:(id)a3
{
  v4 = a3;
  v5 = [(CRKCourse *)self courseIdentifier];
  v6 = [v4 courseIdentifier];
  v7 = v5;
  v8 = v6;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    v11 = 0;
  }

  else
  {
    v10 = [(CRKCourse *)self type];
    v11 = v10 == [v4 type];
  }

  return v11;
}

- (BOOL)isDeeplyEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""courseIdentifier courseName];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_5;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  v8 = self;
  v9 = v4;
  v10 = v7;
  if (v8 == v9)
  {
    v21 = 1;
  }

  else if ([(CRKCourse *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKCourse *)v8 valueForKey:v16];
          v19 = [(CRKCourse *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (CRKCourse)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = CRKCourse;
  v5 = [(CRKCourse *)&v46 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"courseName"];
    courseName = v5->_courseName;
    v5->_courseName = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"courseDescription"];
    courseDescription = v5->_courseDescription;
    v5->_courseDescription = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"courseMascotType"];
    v5->_courseMascotType = [v15 unsignedIntegerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"courseColorType"];
    v5->_courseColorType = [v16 unsignedIntegerValue];

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"courseUser"];
    courseUser = v5->_courseUser;
    v5->_courseUser = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"instructorsByIdentifier"];
    instructorsByIdentifier = v5->_instructorsByIdentifier;
    v5->_instructorsByIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v26 unsignedIntegerValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mustRequestUnenroll"];
    v5->_mustRequestUnenroll = [v27 BOOLValue];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestingUnenroll"];
    v5->_requestingUnenroll = [v28 BOOLValue];

    v29 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"automaticRemovalDate"];
    automaticRemovalDate = v5->_automaticRemovalDate;
    v5->_automaticRemovalDate = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"studentCredentialsAreValid"];
    v5->_studentCredentialsAreValid = [v32 BOOLValue];

    v33 = MEMORY[0x277CBEB98];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"trustedCertificatePersistentIds"];
    trustedCertificatePersistentIds = v5->_trustedCertificatePersistentIds;
    v5->_trustedCertificatePersistentIds = v36;

    v38 = MEMORY[0x277CBEB98];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"validTrustedCertificatePersistentIds"];
    validTrustedCertificatePersistentIds = v5->_validTrustedCertificatePersistentIds;
    v5->_validTrustedCertificatePersistentIds = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managed"];
    v44 = v43;
    if (v43)
    {
      v5->_type = [v43 BOOLValue] ^ 1;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKCourse *)self courseIdentifier];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKCourse *)self courseName];
  [v4 encodeObject:v6 forKey:@"courseName"];

  v7 = [(CRKCourse *)self courseDescription];
  [v4 encodeObject:v7 forKey:@"courseDescription"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKCourse courseMascotType](self, "courseMascotType")}];
  [v4 encodeObject:v8 forKey:@"courseMascotType"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKCourse courseColorType](self, "courseColorType")}];
  [v4 encodeObject:v9 forKey:@"courseColorType"];

  v10 = [(CRKCourse *)self courseUser];
  [v4 encodeObject:v10 forKey:@"courseUser"];

  v11 = [(CRKCourse *)self instructorsByIdentifier];
  [v4 encodeObject:v11 forKey:@"instructorsByIdentifier"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKCourse type](self, "type")}];
  [v4 encodeObject:v12 forKey:@"type"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKCourse mustRequestUnenroll](self, "mustRequestUnenroll")}];
  [v4 encodeObject:v13 forKey:@"mustRequestUnenroll"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKCourse isRequestingUnenroll](self, "isRequestingUnenroll")}];
  [v4 encodeObject:v14 forKey:@"requestingUnenroll"];

  v15 = [(CRKCourse *)self automaticRemovalDate];
  [v4 encodeObject:v15 forKey:@"automaticRemovalDate"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKCourse isExpired](self, "isExpired")}];
  [v4 encodeObject:v16 forKey:@"expired"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKCourse studentCredentialsAreValid](self, "studentCredentialsAreValid")}];
  [v4 encodeObject:v17 forKey:@"studentCredentialsAreValid"];

  v18 = [(CRKCourse *)self trustedCertificatePersistentIds];
  [v4 encodeObject:v18 forKey:@"trustedCertificatePersistentIds"];

  v19 = [(CRKCourse *)self validTrustedCertificatePersistentIds];
  [v4 encodeObject:v19 forKey:@"validTrustedCertificatePersistentIds"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRKCourse alloc];
  v5 = [(CRKCourse *)self courseIdentifier];
  v6 = [(CRKCourse *)v4 initWithIdentifier:v5 type:[(CRKCourse *)self type]];

  v7 = [(CRKCourse *)self courseName];
  [(CRKCourse *)v6 setCourseName:v7];

  v8 = [(CRKCourse *)self courseDescription];
  [(CRKCourse *)v6 setCourseDescription:v8];

  [(CRKCourse *)v6 setCourseMascotType:[(CRKCourse *)self courseMascotType]];
  [(CRKCourse *)v6 setCourseColorType:[(CRKCourse *)self courseColorType]];
  v9 = [(CRKCourse *)self courseUser];
  [(CRKCourse *)v6 setCourseUser:v9];

  v10 = [(CRKCourse *)self instructorsByIdentifier];
  [(CRKCourse *)v6 setInstructorsByIdentifier:v10];

  [(CRKCourse *)v6 setMustRequestUnenroll:[(CRKCourse *)self mustRequestUnenroll]];
  [(CRKCourse *)v6 setRequestingUnenroll:[(CRKCourse *)self isRequestingUnenroll]];
  v11 = [(CRKCourse *)self automaticRemovalDate];
  [(CRKCourse *)v6 setAutomaticRemovalDate:v11];

  [(CRKCourse *)v6 setStudentCredentialsAreValid:[(CRKCourse *)self studentCredentialsAreValid]];
  v12 = [(CRKCourse *)self trustedCertificatePersistentIds];
  [(CRKCourse *)v6 setTrustedCertificatePersistentIds:v12];

  v13 = [(CRKCourse *)self validTrustedCertificatePersistentIds];
  [(CRKCourse *)v6 setValidTrustedCertificatePersistentIds:v13];

  return v6;
}

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CRKCourse.m" lineNumber:204 description:{@"%@ is unavailable for %@", v5, a1}];

  return 0;
}

- (CRKCourse)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CRKCourse.m" lineNumber:209 description:{@"%@ is unavailable for %@", v5, self}];

  return 0;
}

- (void)initWithIdentifier:(uint64_t)a1 type:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKCourse.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end