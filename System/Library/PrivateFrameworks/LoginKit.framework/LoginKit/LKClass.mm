@interface LKClass
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLKClass:(id)class;
- (LKClass)initWithClassDictionary:(id)dictionary usersByUserIdentifier:(id)identifier;
- (LKClass)initWithCoder:(id)coder;
- (LKClass)initWithStudents:(id)students instructors:(id)instructors className:(id)name classID:(id)d;
- (id)sortUsers:(id)users;
- (unint64_t)hash;
- (void)_updateNamingSimilarityInfoForUser:(id)user;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LKClass

- (LKClass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = LKClass;
  v5 = [(LKClass *)&v28 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{v9, v10, 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"students"];
    students = v5->_students;
    v5->_students = v12;

    v14 = [coderCopy decodeObjectOfClasses:v11 forKey:@"instructors"];
    instructors = v5->_instructors;
    v5->_instructors = v14;

    v16 = [coderCopy decodeObjectOfClass:v6 forKey:@"classDescription"];
    classDescription = v5->_classDescription;
    v5->_classDescription = v16;

    v18 = [coderCopy decodeObjectOfClass:v6 forKey:@"className"];
    className = v5->_className;
    v5->_className = v18;

    v20 = [coderCopy decodeObjectOfClass:v8 forKey:@"classID"];
    classID = v5->_classID;
    v5->_classID = v20;

    v22 = [MEMORY[0x277CBEB98] setWithObjects:{v7, v6, v10, 0}];

    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"_avatarNameSimilarityDictionary"];
    avatarNameSimilarityDictionary = v5->_avatarNameSimilarityDictionary;
    v5->_avatarNameSimilarityDictionary = v23;

    v25 = [coderCopy decodeObjectOfClasses:v22 forKey:@"_givenNameSimilarityDictionary"];
    givenNameSimilarityDictionary = v5->_givenNameSimilarityDictionary;
    v5->_givenNameSimilarityDictionary = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  students = self->_students;
  coderCopy = coder;
  [coderCopy encodeObject:students forKey:@"students"];
  [coderCopy encodeObject:self->_instructors forKey:@"instructors"];
  [coderCopy encodeObject:self->_classDescription forKey:@"classDescription"];
  [coderCopy encodeObject:self->_className forKey:@"className"];
  [coderCopy encodeObject:self->_classID forKey:@"classID"];
  [coderCopy encodeObject:self->_avatarNameSimilarityDictionary forKey:@"_avatarNameSimilarityDictionary"];
  [coderCopy encodeObject:self->_givenNameSimilarityDictionary forKey:@"_givenNameSimilarityDictionary"];
}

- (unint64_t)hash
{
  classID = [(LKClass *)self classID];
  v3 = [classID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKClass *)self isEqualToLKClass:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKClass:(id)class
{
  classCopy = class;
  classID = [(LKClass *)self classID];
  classID2 = [classCopy classID];
  v7 = [classID isEqualToNumber:classID2];

  if (v7)
  {
    className = [(LKClass *)self className];
    className2 = [classCopy className];
    v10 = [className isEqualToString:className2];

    if (v10)
    {
      classDescription = [(LKClass *)self classDescription];
      classDescription2 = [classCopy classDescription];
      v13 = [classDescription isEqualToString:classDescription2];

      if (v13)
      {
        students = [(LKClass *)self students];
        if (!students)
        {
          classDescription2 = [classCopy students];
          if (!classDescription2)
          {
LABEL_8:
            instructors = [(LKClass *)self instructors];
            if (instructors || ([classCopy instructors], (classDescription2 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              instructors2 = [(LKClass *)self instructors];
              v22 = [(LKClass *)self sortUsers:instructors2];
              instructors3 = [classCopy instructors];
              v24 = [(LKClass *)self sortUsers:instructors3];
              v25 = [v22 isEqualToArray:v24];

              if (instructors)
              {
LABEL_17:

                goto LABEL_14;
              }
            }

            else
            {
              v25 = 1;
            }

            goto LABEL_17;
          }
        }

        students2 = [(LKClass *)self students];
        v16 = [(LKClass *)self sortUsers:students2];
        students3 = [classCopy students];
        v18 = [(LKClass *)self sortUsers:students3];
        v19 = [v16 isEqualToArray:v18];

        if (students)
        {

          if (v19)
          {
            goto LABEL_8;
          }
        }

        else
        {

          if (v19)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  v25 = 0;
LABEL_14:

  return v25;
}

- (id)sortUsers:(id)users
{
  if (users)
  {
    v3 = MEMORY[0x277CCAC98];
    usersCopy = users;
    v5 = [[v3 alloc] initWithKey:@"identifier" ascending:1];
    v6 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    v7 = [usersCopy sortedArrayUsingDescriptors:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (LKClass)initWithStudents:(id)students instructors:(id)instructors className:(id)name classID:(id)d
{
  studentsCopy = students;
  instructorsCopy = instructors;
  nameCopy = name;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = LKClass;
  v15 = [(LKClass *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_students, students);
    objc_storeStrong(&v16->_instructors, instructors);
    objc_storeStrong(&v16->_className, name);
    objc_storeStrong(&v16->_classID, d);
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    givenNameSimilarityDictionary = v16->_givenNameSimilarityDictionary;
    v16->_givenNameSimilarityDictionary = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    avatarNameSimilarityDictionary = v16->_avatarNameSimilarityDictionary;
    v16->_avatarNameSimilarityDictionary = v19;
  }

  return v16;
}

- (LKClass)initWithClassDictionary:(id)dictionary usersByUserIdentifier:(id)identifier
{
  v49 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v46.receiver = self;
  v46.super_class = LKClass;
  v8 = [(LKClass *)&v46 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    givenNameSimilarityDictionary = v8->_givenNameSimilarityDictionary;
    v8->_givenNameSimilarityDictionary = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    avatarNameSimilarityDictionary = v8->_avatarNameSimilarityDictionary;
    v8->_avatarNameSimilarityDictionary = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"Description"];
    classDescription = v8->_classDescription;
    v8->_classDescription = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"Name"];
    className = v8->_className;
    v8->_className = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"BeaconID"];
    classID = v8->_classID;
    v8->_classID = v17;

    v19 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"LeaderIdentifiers"];
    v21 = [v20 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v43;
      do
      {
        v24 = 0;
        do
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [identifierCopy objectForKey:*(*(&v42 + 1) + 8 * v24)];
          if (v25)
          {
            [v19 addObject:v25];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v22);
    }

    objc_storeStrong(&v8->_instructors, v19);
    v26 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v37 = dictionaryCopy;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"MemberIdentifiers"];
    v28 = [v27 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v39;
      do
      {
        v31 = 0;
        do
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [identifierCopy objectForKey:*(*(&v38 + 1) + 8 * v31)];
          username = [v32 username];

          if (username)
          {
            [(NSArray *)v26 addObject:v32];
            [(LKClass *)v8 _updateNamingSimilarityInfoForUser:v32];
          }

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v29);
    }

    students = v8->_students;
    v8->_students = v26;

    dictionaryCopy = v37;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_updateNamingSimilarityInfoForUser:(id)user
{
  userCopy = user;
  v4 = objc_opt_new();
  givenName = [userCopy givenName];
  [v4 setGivenName:givenName];

  familyName = [userCopy familyName];
  [v4 setFamilyName:familyName];

  givenName2 = [v4 givenName];

  if (givenName2)
  {
    givenNameSimilarityDictionary = self->_givenNameSimilarityDictionary;
    givenName3 = [v4 givenName];
    v10 = [(NSMutableDictionary *)givenNameSimilarityDictionary objectForKeyedSubscript:givenName3];

    if (v10)
    {
      namingSimilarityInfoByClassID = [userCopy namingSimilarityInfoByClassID];
      v12 = [LKNamingSimilarity namingSimilarityWithSimilarity:1];
      [namingSimilarityInfoByClassID setObject:v12 forKey:self->_classID];

      v13 = self->_givenNameSimilarityDictionary;
      givenName4 = [v4 givenName];
      v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:givenName4];
      namingSimilarityInfoByClassID2 = [v15 namingSimilarityInfoByClassID];
      v17 = [namingSimilarityInfoByClassID2 objectForKey:self->_classID];
      similarity = [v17 similarity];
      v19 = [LKNamingSimilarity namingSimilarityWithSimilarity:0];
      similarity2 = [v19 similarity];

      if (similarity == similarity2)
      {
        goto LABEL_7;
      }

      namingSimilarityInfoByClassID4 = [LKNamingSimilarity namingSimilarityWithSimilarity:1];
      v22 = self->_givenNameSimilarityDictionary;
      givenName5 = [v4 givenName];
      v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:givenName5];
      namingSimilarityInfoByClassID3 = [v24 namingSimilarityInfoByClassID];
      [namingSimilarityInfoByClassID3 setObject:namingSimilarityInfoByClassID4 forKeyedSubscript:self->_classID];
    }

    else
    {
      v26 = self->_givenNameSimilarityDictionary;
      givenName6 = [v4 givenName];
      [(NSMutableDictionary *)v26 setObject:userCopy forKeyedSubscript:givenName6];

      namingSimilarityInfoByClassID4 = [userCopy namingSimilarityInfoByClassID];
      givenName5 = [LKNamingSimilarity namingSimilarityWithSimilarity:2];
      [namingSimilarityInfoByClassID4 setObject:givenName5 forKey:self->_classID];
    }
  }

LABEL_7:
  v28 = [MEMORY[0x277CCAC08] _localizedShortNameForComponents:v4 withStyle:1 options:0];
  if (!v28)
  {
    goto LABEL_12;
  }

  v29 = [(NSMutableDictionary *)self->_avatarNameSimilarityDictionary objectForKeyedSubscript:v28];

  if (v29)
  {
    namingSimilarityInfoByClassID5 = [userCopy namingSimilarityInfoByClassID];
    v31 = [LKNamingSimilarity namingSimilarityWithSimilarity:0];
    [namingSimilarityInfoByClassID5 setObject:v31 forKey:self->_classID];

    avatarNameSimilarityDictionary = self->_avatarNameSimilarityDictionary;
    givenName7 = [v4 givenName];
    v34 = [(NSMutableDictionary *)avatarNameSimilarityDictionary objectForKeyedSubscript:givenName7];
    namingSimilarityInfoByClassID6 = [v34 namingSimilarityInfoByClassID];
    v36 = [LKNamingSimilarity namingSimilarityWithSimilarity:0];
    [namingSimilarityInfoByClassID6 setObject:v36 forKey:self->_classID];

LABEL_10:
    goto LABEL_12;
  }

  [(NSMutableDictionary *)self->_avatarNameSimilarityDictionary setObject:userCopy forKeyedSubscript:v28];
  namingSimilarityInfoByClassID7 = [userCopy namingSimilarityInfoByClassID];
  v38 = [namingSimilarityInfoByClassID7 objectForKeyedSubscript:self->_classID];

  if (!v38)
  {
    givenName7 = [userCopy namingSimilarityInfoByClassID];
    v34 = [LKNamingSimilarity namingSimilarityWithSimilarity:2];
    [givenName7 setObject:v34 forKey:self->_classID];
    goto LABEL_10;
  }

LABEL_12:
}

@end