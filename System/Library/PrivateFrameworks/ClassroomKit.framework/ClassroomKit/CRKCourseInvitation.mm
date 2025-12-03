@interface CRKCourseInvitation
- (BOOL)isEqual:(id)equal;
- (CRKCourseInvitation)initWithCoder:(id)coder;
- (CRKCourseInvitation)initWithCourseIdentifier:(id)identifier courseName:(id)name courseDescription:(id)description courseMascotType:(unint64_t)type courseColorType:(unint64_t)colorType instructorName:(id)instructorName instructorImageData:(id)data anchorCertificateDatas:(id)self0;
- (CRKCourseInvitation)initWithCourseIdentifier:(id)identifier courseName:(id)name courseDescription:(id)description courseMascotType:(unint64_t)type courseColorType:(unint64_t)colorType instructorName:(id)instructorName instructorImageData:(id)data anchorCertificates:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKCourseInvitation

- (CRKCourseInvitation)initWithCourseIdentifier:(id)identifier courseName:(id)name courseDescription:(id)description courseMascotType:(unint64_t)type courseColorType:(unint64_t)colorType instructorName:(id)instructorName instructorImageData:(id)data anchorCertificates:(id)self0
{
  dataCopy = data;
  instructorNameCopy = instructorName;
  descriptionCopy = description;
  nameCopy = name;
  identifierCopy = identifier;
  v22 = [certificates crk_mapUsingBlock:&__block_literal_global_31];
  v23 = [(CRKCourseInvitation *)self initWithCourseIdentifier:identifierCopy courseName:nameCopy courseDescription:descriptionCopy courseMascotType:type courseColorType:colorType instructorName:instructorNameCopy instructorImageData:dataCopy anchorCertificateDatas:v22];

  return v23;
}

id __164__CRKCourseInvitation_initWithCourseIdentifier_courseName_courseDescription_courseMascotType_courseColorType_instructorName_instructorImageData_anchorCertificates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRKConcreteCertificate alloc] initWithCertificate:v2];

  v4 = [(CRKConcreteCertificate *)v3 dataRepresentation];

  return v4;
}

- (CRKCourseInvitation)initWithCourseIdentifier:(id)identifier courseName:(id)name courseDescription:(id)description courseMascotType:(unint64_t)type courseColorType:(unint64_t)colorType instructorName:(id)instructorName instructorImageData:(id)data anchorCertificateDatas:(id)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  instructorNameCopy = instructorName;
  dataCopy = data;
  datasCopy = datas;
  v36.receiver = self;
  v36.super_class = CRKCourseInvitation;
  v22 = [(CRKCourseInvitation *)&v36 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    courseIdentifier = v22->_courseIdentifier;
    v22->_courseIdentifier = v23;

    v25 = [nameCopy copy];
    courseName = v22->_courseName;
    v22->_courseName = v25;

    v27 = [descriptionCopy copy];
    courseDescription = v22->_courseDescription;
    v22->_courseDescription = v27;

    v22->_courseMascotType = type;
    v22->_courseColorType = colorType;
    v29 = [instructorNameCopy copy];
    instructorName = v22->_instructorName;
    v22->_instructorName = v29;

    v31 = [dataCopy copy];
    instructorImageData = v22->_instructorImageData;
    v22->_instructorImageData = v31;

    v33 = [datasCopy copy];
    anchorCertificateDatas = v22->_anchorCertificateDatas;
    v22->_anchorCertificateDatas = v33;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  courseIdentifier = [(CRKCourseInvitation *)self courseIdentifier];
  stringValue = [courseIdentifier stringValue];
  courseName = [(CRKCourseInvitation *)self courseName];
  instructorName = [(CRKCourseInvitation *)self instructorName];
  v9 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, name = %@, instructor = %@ }>", v4, self, stringValue, courseName, instructorName];

  return v9;
}

- (CRKCourseInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CRKCourseInvitation;
  v5 = [(CRKCourseInvitation *)&v29 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"courseName"];
    courseName = v5->_courseName;
    v5->_courseName = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"courseDescription"];
    courseDescription = v5->_courseDescription;
    v5->_courseDescription = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"courseMascotType"];
    v5->_courseMascotType = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"courseColorType"];
    v5->_courseColorType = [v16 unsignedIntegerValue];

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"instructorName"];
    instructorName = v5->_instructorName;
    v5->_instructorName = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"instructorImageData"];
    instructorImageData = v5->_instructorImageData;
    v5->_instructorImageData = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"anchorCertificateDatas"];
    anchorCertificateDatas = v5->_anchorCertificateDatas;
    v5->_anchorCertificateDatas = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  courseIdentifier = [(CRKCourseInvitation *)self courseIdentifier];
  [coderCopy encodeObject:courseIdentifier forKey:@"courseIdentifier"];

  courseName = [(CRKCourseInvitation *)self courseName];
  [coderCopy encodeObject:courseName forKey:@"courseName"];

  courseDescription = [(CRKCourseInvitation *)self courseDescription];
  [coderCopy encodeObject:courseDescription forKey:@"courseDescription"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKCourseInvitation courseMascotType](self, "courseMascotType")}];
  [coderCopy encodeObject:v8 forKey:@"courseMascotType"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKCourseInvitation courseColorType](self, "courseColorType")}];
  [coderCopy encodeObject:v9 forKey:@"courseColorType"];

  instructorName = [(CRKCourseInvitation *)self instructorName];
  [coderCopy encodeObject:instructorName forKey:@"instructorName"];

  instructorImageData = [(CRKCourseInvitation *)self instructorImageData];
  [coderCopy encodeObject:instructorImageData forKey:@"instructorImageData"];

  anchorCertificateDatas = [(CRKCourseInvitation *)self anchorCertificateDatas];
  [coderCopy encodeObject:anchorCertificateDatas forKey:@"anchorCertificateDatas"];
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  courseName = [CFSTR(""courseIdentifier courseName];
  v6 = [courseName mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_7;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  selfCopy = self;
  v9 = equalCopy;
  v10 = v7;
  if (selfCopy == v9)
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
          v18 = [(CRKCourseInvitation *)selfCopy valueForKey:v16];
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