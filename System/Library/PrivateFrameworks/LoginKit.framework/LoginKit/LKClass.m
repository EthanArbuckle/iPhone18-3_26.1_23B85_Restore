@interface LKClass
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLKClass:(id)a3;
- (LKClass)initWithClassDictionary:(id)a3 usersByUserIdentifier:(id)a4;
- (LKClass)initWithCoder:(id)a3;
- (LKClass)initWithStudents:(id)a3 instructors:(id)a4 className:(id)a5 classID:(id)a6;
- (id)sortUsers:(id)a3;
- (unint64_t)hash;
- (void)_updateNamingSimilarityInfoForUser:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LKClass

- (LKClass)initWithCoder:(id)a3
{
  v4 = a3;
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
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"students"];
    students = v5->_students;
    v5->_students = v12;

    v14 = [v4 decodeObjectOfClasses:v11 forKey:@"instructors"];
    instructors = v5->_instructors;
    v5->_instructors = v14;

    v16 = [v4 decodeObjectOfClass:v6 forKey:@"classDescription"];
    classDescription = v5->_classDescription;
    v5->_classDescription = v16;

    v18 = [v4 decodeObjectOfClass:v6 forKey:@"className"];
    className = v5->_className;
    v5->_className = v18;

    v20 = [v4 decodeObjectOfClass:v8 forKey:@"classID"];
    classID = v5->_classID;
    v5->_classID = v20;

    v22 = [MEMORY[0x277CBEB98] setWithObjects:{v7, v6, v10, 0}];

    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"_avatarNameSimilarityDictionary"];
    avatarNameSimilarityDictionary = v5->_avatarNameSimilarityDictionary;
    v5->_avatarNameSimilarityDictionary = v23;

    v25 = [v4 decodeObjectOfClasses:v22 forKey:@"_givenNameSimilarityDictionary"];
    givenNameSimilarityDictionary = v5->_givenNameSimilarityDictionary;
    v5->_givenNameSimilarityDictionary = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  students = self->_students;
  v5 = a3;
  [v5 encodeObject:students forKey:@"students"];
  [v5 encodeObject:self->_instructors forKey:@"instructors"];
  [v5 encodeObject:self->_classDescription forKey:@"classDescription"];
  [v5 encodeObject:self->_className forKey:@"className"];
  [v5 encodeObject:self->_classID forKey:@"classID"];
  [v5 encodeObject:self->_avatarNameSimilarityDictionary forKey:@"_avatarNameSimilarityDictionary"];
  [v5 encodeObject:self->_givenNameSimilarityDictionary forKey:@"_givenNameSimilarityDictionary"];
}

- (unint64_t)hash
{
  v2 = [(LKClass *)self classID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKClass *)self isEqualToLKClass:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKClass:(id)a3
{
  v4 = a3;
  v5 = [(LKClass *)self classID];
  v6 = [v4 classID];
  v7 = [v5 isEqualToNumber:v6];

  if (v7)
  {
    v8 = [(LKClass *)self className];
    v9 = [v4 className];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [(LKClass *)self classDescription];
      v12 = [v4 classDescription];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v14 = [(LKClass *)self students];
        if (!v14)
        {
          v12 = [v4 students];
          if (!v12)
          {
LABEL_8:
            v20 = [(LKClass *)self instructors];
            if (v20 || ([v4 instructors], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v21 = [(LKClass *)self instructors];
              v22 = [(LKClass *)self sortUsers:v21];
              v23 = [v4 instructors];
              v24 = [(LKClass *)self sortUsers:v23];
              v25 = [v22 isEqualToArray:v24];

              if (v20)
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

        v15 = [(LKClass *)self students];
        v16 = [(LKClass *)self sortUsers:v15];
        v17 = [v4 students];
        v18 = [(LKClass *)self sortUsers:v17];
        v19 = [v16 isEqualToArray:v18];

        if (v14)
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

- (id)sortUsers:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAC98];
    v4 = a3;
    v5 = [[v3 alloc] initWithKey:@"identifier" ascending:1];
    v6 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    v7 = [v4 sortedArrayUsingDescriptors:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (LKClass)initWithStudents:(id)a3 instructors:(id)a4 className:(id)a5 classID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = LKClass;
  v15 = [(LKClass *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_students, a3);
    objc_storeStrong(&v16->_instructors, a4);
    objc_storeStrong(&v16->_className, a5);
    objc_storeStrong(&v16->_classID, a6);
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    givenNameSimilarityDictionary = v16->_givenNameSimilarityDictionary;
    v16->_givenNameSimilarityDictionary = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    avatarNameSimilarityDictionary = v16->_avatarNameSimilarityDictionary;
    v16->_avatarNameSimilarityDictionary = v19;
  }

  return v16;
}

- (LKClass)initWithClassDictionary:(id)a3 usersByUserIdentifier:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

    v13 = [v6 objectForKeyedSubscript:@"Description"];
    classDescription = v8->_classDescription;
    v8->_classDescription = v13;

    v15 = [v6 objectForKeyedSubscript:@"Name"];
    className = v8->_className;
    v8->_className = v15;

    v17 = [v6 objectForKeyedSubscript:@"BeaconID"];
    classID = v8->_classID;
    v8->_classID = v17;

    v19 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v20 = [v6 objectForKeyedSubscript:@"LeaderIdentifiers"];
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

          v25 = [v7 objectForKey:*(*(&v42 + 1) + 8 * v24)];
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
    v37 = v6;
    v27 = [v6 objectForKeyedSubscript:@"MemberIdentifiers"];
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

          v32 = [v7 objectForKey:*(*(&v38 + 1) + 8 * v31)];
          v33 = [v32 username];

          if (v33)
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

    v6 = v37;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_updateNamingSimilarityInfoForUser:(id)a3
{
  v39 = a3;
  v4 = objc_opt_new();
  v5 = [v39 givenName];
  [v4 setGivenName:v5];

  v6 = [v39 familyName];
  [v4 setFamilyName:v6];

  v7 = [v4 givenName];

  if (v7)
  {
    givenNameSimilarityDictionary = self->_givenNameSimilarityDictionary;
    v9 = [v4 givenName];
    v10 = [(NSMutableDictionary *)givenNameSimilarityDictionary objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v39 namingSimilarityInfoByClassID];
      v12 = [LKNamingSimilarity namingSimilarityWithSimilarity:1];
      [v11 setObject:v12 forKey:self->_classID];

      v13 = self->_givenNameSimilarityDictionary;
      v14 = [v4 givenName];
      v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];
      v16 = [v15 namingSimilarityInfoByClassID];
      v17 = [v16 objectForKey:self->_classID];
      v18 = [v17 similarity];
      v19 = [LKNamingSimilarity namingSimilarityWithSimilarity:0];
      v20 = [v19 similarity];

      if (v18 == v20)
      {
        goto LABEL_7;
      }

      v21 = [LKNamingSimilarity namingSimilarityWithSimilarity:1];
      v22 = self->_givenNameSimilarityDictionary;
      v23 = [v4 givenName];
      v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:v23];
      v25 = [v24 namingSimilarityInfoByClassID];
      [v25 setObject:v21 forKeyedSubscript:self->_classID];
    }

    else
    {
      v26 = self->_givenNameSimilarityDictionary;
      v27 = [v4 givenName];
      [(NSMutableDictionary *)v26 setObject:v39 forKeyedSubscript:v27];

      v21 = [v39 namingSimilarityInfoByClassID];
      v23 = [LKNamingSimilarity namingSimilarityWithSimilarity:2];
      [v21 setObject:v23 forKey:self->_classID];
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
    v30 = [v39 namingSimilarityInfoByClassID];
    v31 = [LKNamingSimilarity namingSimilarityWithSimilarity:0];
    [v30 setObject:v31 forKey:self->_classID];

    avatarNameSimilarityDictionary = self->_avatarNameSimilarityDictionary;
    v33 = [v4 givenName];
    v34 = [(NSMutableDictionary *)avatarNameSimilarityDictionary objectForKeyedSubscript:v33];
    v35 = [v34 namingSimilarityInfoByClassID];
    v36 = [LKNamingSimilarity namingSimilarityWithSimilarity:0];
    [v35 setObject:v36 forKey:self->_classID];

LABEL_10:
    goto LABEL_12;
  }

  [(NSMutableDictionary *)self->_avatarNameSimilarityDictionary setObject:v39 forKeyedSubscript:v28];
  v37 = [v39 namingSimilarityInfoByClassID];
  v38 = [v37 objectForKeyedSubscript:self->_classID];

  if (!v38)
  {
    v33 = [v39 namingSimilarityInfoByClassID];
    v34 = [LKNamingSimilarity namingSimilarityWithSimilarity:2];
    [v33 setObject:v34 forKey:self->_classID];
    goto LABEL_10;
  }

LABEL_12:
}

@end