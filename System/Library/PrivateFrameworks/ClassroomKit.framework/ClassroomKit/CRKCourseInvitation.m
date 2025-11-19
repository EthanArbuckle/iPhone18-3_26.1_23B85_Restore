@interface CRKCourseInvitation
- (BOOL)isEqual:(id)a3;
- (CRKCourseInvitation)initWithCoder:(id)a3;
- (CRKCourseInvitation)initWithCourseIdentifier:(id)a3 courseName:(id)a4 courseDescription:(id)a5 courseMascotType:(unint64_t)a6 courseColorType:(unint64_t)a7 instructorName:(id)a8 instructorImageData:(id)a9 anchorCertificateDatas:(id)a10;
- (CRKCourseInvitation)initWithCourseIdentifier:(id)a3 courseName:(id)a4 courseDescription:(id)a5 courseMascotType:(unint64_t)a6 courseColorType:(unint64_t)a7 instructorName:(id)a8 instructorImageData:(id)a9 anchorCertificates:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKCourseInvitation

- (CRKCourseInvitation)initWithCourseIdentifier:(id)a3 courseName:(id)a4 courseDescription:(id)a5 courseMascotType:(unint64_t)a6 courseColorType:(unint64_t)a7 instructorName:(id)a8 instructorImageData:(id)a9 anchorCertificates:(id)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [a10 crk_mapUsingBlock:&__block_literal_global_31];
  v23 = [(CRKCourseInvitation *)self initWithCourseIdentifier:v21 courseName:v20 courseDescription:v19 courseMascotType:a6 courseColorType:a7 instructorName:v18 instructorImageData:v17 anchorCertificateDatas:v22];

  return v23;
}

id __164__CRKCourseInvitation_initWithCourseIdentifier_courseName_courseDescription_courseMascotType_courseColorType_instructorName_instructorImageData_anchorCertificates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRKConcreteCertificate alloc] initWithCertificate:v2];

  v4 = [(CRKConcreteCertificate *)v3 dataRepresentation];

  return v4;
}

- (CRKCourseInvitation)initWithCourseIdentifier:(id)a3 courseName:(id)a4 courseDescription:(id)a5 courseMascotType:(unint64_t)a6 courseColorType:(unint64_t)a7 instructorName:(id)a8 instructorImageData:(id)a9 anchorCertificateDatas:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = CRKCourseInvitation;
  v22 = [(CRKCourseInvitation *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    courseIdentifier = v22->_courseIdentifier;
    v22->_courseIdentifier = v23;

    v25 = [v17 copy];
    courseName = v22->_courseName;
    v22->_courseName = v25;

    v27 = [v18 copy];
    courseDescription = v22->_courseDescription;
    v22->_courseDescription = v27;

    v22->_courseMascotType = a6;
    v22->_courseColorType = a7;
    v29 = [v19 copy];
    instructorName = v22->_instructorName;
    v22->_instructorName = v29;

    v31 = [v20 copy];
    instructorImageData = v22->_instructorImageData;
    v22->_instructorImageData = v31;

    v33 = [v21 copy];
    anchorCertificateDatas = v22->_anchorCertificateDatas;
    v22->_anchorCertificateDatas = v33;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKCourseInvitation *)self courseIdentifier];
  v6 = [v5 stringValue];
  v7 = [(CRKCourseInvitation *)self courseName];
  v8 = [(CRKCourseInvitation *)self instructorName];
  v9 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, name = %@, instructor = %@ }>", v4, self, v6, v7, v8];

  return v9;
}

- (CRKCourseInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CRKCourseInvitation;
  v5 = [(CRKCourseInvitation *)&v29 init];
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
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"instructorName"];
    instructorName = v5->_instructorName;
    v5->_instructorName = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"instructorImageData"];
    instructorImageData = v5->_instructorImageData;
    v5->_instructorImageData = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"anchorCertificateDatas"];
    anchorCertificateDatas = v5->_anchorCertificateDatas;
    v5->_anchorCertificateDatas = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKCourseInvitation *)self courseIdentifier];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKCourseInvitation *)self courseName];
  [v4 encodeObject:v6 forKey:@"courseName"];

  v7 = [(CRKCourseInvitation *)self courseDescription];
  [v4 encodeObject:v7 forKey:@"courseDescription"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKCourseInvitation courseMascotType](self, "courseMascotType")}];
  [v4 encodeObject:v8 forKey:@"courseMascotType"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKCourseInvitation courseColorType](self, "courseColorType")}];
  [v4 encodeObject:v9 forKey:@"courseColorType"];

  v10 = [(CRKCourseInvitation *)self instructorName];
  [v4 encodeObject:v10 forKey:@"instructorName"];

  v11 = [(CRKCourseInvitation *)self instructorImageData];
  [v4 encodeObject:v11 forKey:@"instructorImageData"];

  v12 = [(CRKCourseInvitation *)self anchorCertificateDatas];
  [v4 encodeObject:v12 forKey:@"anchorCertificateDatas"];
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""courseIdentifier courseName];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_7;
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

  else if ([(CRKCourseInvitation *)v9 isMemberOfClass:objc_opt_class()])
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
          v18 = [(CRKCourseInvitation *)v8 valueForKey:v16];
          v19 = [(CRKCourseInvitation *)v17 valueForKey:v16];

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

@end