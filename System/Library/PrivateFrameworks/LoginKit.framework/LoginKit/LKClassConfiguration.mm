@interface LKClassConfiguration
- (LKClassConfiguration)initWithCoder:(id)a3;
- (LKClassConfiguration)initWithDictionary:(id)a3;
- (LKClassConfiguration)initWithPropertyList:(id)a3;
- (id)classesByClassGroupNameDictionary;
- (id)studentForStudentIdentifier:(id)a3;
- (id)studentForStudentIdentifier:(id)a3 inClass:(id)a4;
- (id)studentForUsername:(id)a3;
- (id)studentForUsername:(id)a3 inClass:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LKClassConfiguration

- (LKClassConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = LKClassConfiguration;
  v5 = [(LKClassConfiguration *)&v57 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"schoolName"];
    schoolName = v5->_schoolName;
    v5->_schoolName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadCertificatePersistentID"];
    payloadCertificatePersistentID = v5->_payloadCertificatePersistentID;
    v5->_payloadCertificatePersistentID = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"classes"];
    classes = v5->_classes;
    v5->_classes = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];

    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"classGroups"];
    classGroups = v5->_classGroups;
    v5->_classGroups = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];

    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"students"];
    students = v5->_students;
    v5->_students = v23;

    v25 = [v4 decodeObjectOfClasses:v22 forKey:@"instructors"];
    instructors = v5->_instructors;
    v5->_instructors = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];

    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"classesByClassID"];
    classesByClassID = v5->_classesByClassID;
    v5->_classesByClassID = v31;

    v33 = MEMORY[0x277CBEB98];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];

    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"usersWithAppleIDByIdentifier"];
    usersWithAppleIDByIdentifier = v5->_usersWithAppleIDByIdentifier;
    v5->_usersWithAppleIDByIdentifier = v37;

    v39 = [v4 decodeObjectOfClasses:v36 forKey:@"usersByUsername"];
    usersByUsername = v5->_usersByUsername;
    v5->_usersByUsername = v39;

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = [v41 setWithObjects:{v42, v43, v44, objc_opt_class(), 0}];

    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"classesByClassGroupName"];
    classesByClassGroupName = v5->_classesByClassGroupName;
    v5->_classesByClassGroupName = v46;

    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = [v48 setWithObjects:{v49, v50, v51, v52, objc_opt_class(), 0}];

    v54 = [v4 decodeObjectOfClasses:v53 forKey:@"classRosterInformationDictionary"];
    classRosterInformationDictionary = v5->_classRosterInformationDictionary;
    v5->_classRosterInformationDictionary = v54;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  schoolName = self->_schoolName;
  v5 = a3;
  [v5 encodeObject:schoolName forKey:@"schoolName"];
  [v5 encodeObject:self->_payloadCertificatePersistentID forKey:@"payloadCertificatePersistentID"];
  [v5 encodeObject:self->_classes forKey:@"classes"];
  [v5 encodeObject:self->_classGroups forKey:@"classGroups"];
  [v5 encodeObject:self->_students forKey:@"students"];
  [v5 encodeObject:self->_instructors forKey:@"instructors"];
  [v5 encodeObject:self->_classesByClassID forKey:@"classesByClassID"];
  [v5 encodeObject:self->_usersWithAppleIDByIdentifier forKey:@"usersWithAppleIDByIdentifier"];
  [v5 encodeObject:self->_usersByUsername forKey:@"usersByUsername"];
  [v5 encodeObject:self->_classesByClassGroupName forKey:@"classesByClassGroupName"];
  [v5 encodeObject:self->_classRosterInformationDictionary forKey:@"classRosterInformationDictionary"];
}

- (LKClassConfiguration)initWithDictionary:(id)a3
{
  v112 = *MEMORY[0x277D85DE8];
  v5 = a3;
  LKRegisterLoginKitLogging();
  v103.receiver = self;
  v103.super_class = LKClassConfiguration;
  v6 = [(LKClassConfiguration *)&v103 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classRosterInformationDictionary, a3);
    v8 = [v5 objectForKeyedSubscript:@"OrganizationName"];
    schoolName = v7->_schoolName;
    v7->_schoolName = v8;

    v10 = [v5 objectForKeyedSubscript:@"PayloadCertificatePersistentID"];
    payloadCertificatePersistentID = v7->_payloadCertificatePersistentID;
    v7->_payloadCertificatePersistentID = v10;

    v12 = objc_opt_new();
    classesByClassGroupName = v7->_classesByClassGroupName;
    v7->_classesByClassGroupName = v12;

    v14 = objc_opt_new();
    classesByClassID = v7->_classesByClassID;
    v7->_classesByClassID = v14;

    v16 = objc_opt_new();
    usersWithAppleIDByIdentifier = v7->_usersWithAppleIDByIdentifier;
    v7->_usersWithAppleIDByIdentifier = v16;

    v18 = objc_opt_new();
    usersByUsername = v7->_usersByUsername;
    v7->_usersByUsername = v18;

    v86 = objc_opt_new();
    v84 = objc_opt_new();
    v80 = objc_opt_new();
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v79 = v5;
    v20 = [v5 objectForKeyedSubscript:@"Users"];
    v21 = [v20 countByEnumeratingWithState:&v99 objects:v111 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v100;
      do
      {
        v24 = 0;
        do
        {
          if (*v100 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [LKUser userFromDictionary:*(*(&v99 + 1) + 8 * v24)];
          v26 = [v25 identifier];
          [v86 setObject:v25 forKeyedSubscript:v26];

          v27 = [v25 username];

          if (v27)
          {
            v28 = v7->_usersByUsername;
            v29 = [v25 username];
            [(NSMutableDictionary *)v28 setObject:v25 forKeyedSubscript:v29];

            v30 = [v25 identifier];

            if (v30)
            {
              v31 = v7->_usersWithAppleIDByIdentifier;
              v32 = [v25 identifier];
              [(NSMutableDictionary *)v31 setObject:v25 forKeyedSubscript:v32];
            }
          }

          else
          {
            v33 = LKLogParsing;
            if (os_log_type_enabled(LKLogParsing, OS_LOG_TYPE_DEBUG))
            {
              [(LKClassConfiguration *)&v109 initWithDictionary:v33, v25, &v110];
            }
          }

          [v84 addObject:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v99 objects:v111 count:16];
      }

      while (v22);
    }

    obj = objc_alloc_init(MEMORY[0x277CBEB18]);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v34 = [v79 objectForKeyedSubscript:@"Groups"];
    v35 = [v34 countByEnumeratingWithState:&v95 objects:v108 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v96;
      do
      {
        v38 = 0;
        do
        {
          if (*v96 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [[LKClass alloc] initWithClassDictionary:*(*(&v95 + 1) + 8 * v38) usersByUserIdentifier:v86];
          v40 = [(LKClass *)v39 classID];
          if (v40 && (v41 = v40, -[LKClass students](v39, "students"), v42 = objc_claimAutoreleasedReturnValue(), v43 = [v42 count], v42, v41, v43))
          {
            v44 = v7->_classesByClassID;
            v45 = [(LKClass *)v39 classID];
            [(NSMutableDictionary *)v44 setObject:v39 forKeyedSubscript:v45];

            [obj addObject:v39];
            v46 = [(LKClass *)v39 instructors];

            if (v46)
            {
              v47 = [(LKClass *)v39 instructors];
              [v80 addObjectsFromArray:v47];
            }
          }

          else
          {
            v48 = LKLogParsing;
            if (os_log_type_enabled(LKLogParsing, OS_LOG_TYPE_DEBUG))
            {
              [(LKClassConfiguration *)&v106 initWithDictionary:v48, v39, &v107];
            }
          }

          ++v38;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v95 objects:v108 count:16];
      }

      while (v36);
    }

    v49 = [(NSMutableDictionary *)v7->_usersWithAppleIDByIdentifier allValues];
    students = v7->_students;
    v7->_students = v49;

    objc_storeStrong(&v7->_classes, obj);
    v51 = [v80 allObjects];
    instructors = v7->_instructors;
    v7->_instructors = v51;

    v53 = [(NSMutableDictionary *)v7->_classesByClassID mutableCopy];
    v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v82 = [v79 objectForKeyedSubscript:@"Departments"];
    v54 = [v82 countByEnumeratingWithState:&v91 objects:v105 count:16];
    if (v54)
    {
      v55 = v54;
      v83 = *v92;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v92 != v83)
          {
            objc_enumerationMutation(v82);
          }

          v57 = [[LKClassGroup alloc] initWithClassGroupDictionary:*(*(&v91 + 1) + 8 * i) classesDictionaryByClassID:v7->_classesByClassID];
          v58 = [(LKClassGroup *)v57 classGroupName];

          if (v58)
          {
            v59 = [(LKClassGroup *)v57 classes];
            v60 = v7;
            v61 = v7->_classesByClassGroupName;
            v62 = [(LKClassGroup *)v57 classGroupName];
            [(NSMutableDictionary *)v61 setObject:v59 forKeyedSubscript:v62];

            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v63 = [(LKClassGroup *)v57 classes];
            v64 = [v63 countByEnumeratingWithState:&v87 objects:v104 count:16];
            if (v64)
            {
              v65 = v64;
              v66 = *v88;
              do
              {
                for (j = 0; j != v65; ++j)
                {
                  if (*v88 != v66)
                  {
                    objc_enumerationMutation(v63);
                  }

                  v68 = [*(*(&v87 + 1) + 8 * j) classID];
                  [v53 removeObjectForKey:v68];
                }

                v65 = [v63 countByEnumeratingWithState:&v87 objects:v104 count:16];
              }

              while (v65);
            }

            v7 = v60;
          }

          [(NSArray *)v85 addObject:v57];
        }

        v55 = [v82 countByEnumeratingWithState:&v91 objects:v105 count:16];
      }

      while (v55);
    }

    v69 = [v53 allValues];
    if ([v69 count])
    {
      v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v71 = [v70 localizedStringForKey:@"Other Classes" value:&stru_286839188 table:0];

      v72 = [v69 count];
      if (v72 == [(NSArray *)v7->_classes count])
      {
        v73 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v74 = [v73 localizedStringForKey:@"All Classes" value:&stru_286839188 table:0];

        v71 = v74;
      }

      [(NSMutableDictionary *)v7->_classesByClassGroupName setObject:v69 forKeyedSubscript:v71];
      v75 = [[LKClassGroup alloc] initWithGroupName:v71 classes:v69];
      [(NSArray *)v85 addObject:v75];
    }

    classGroups = v7->_classGroups;
    v7->_classGroups = v85;

    v5 = v79;
  }

  v77 = *MEMORY[0x277D85DE8];
  return v7;
}

- (LKClassConfiguration)initWithPropertyList:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = MEMORY[0x277CCA8D8];
  v6 = a3;
  v7 = [v5 mainBundle];
  v8 = [v7 pathForResource:v6 ofType:@"plist"];

  v9 = [v4 dictionaryWithContentsOfFile:v8];

  if (v9)
  {
    self = [(LKClassConfiguration *)self initWithDictionary:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)studentForStudentIdentifier:(id)a3 inClass:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(LKClassConfiguration *)self usersWithAppleIDByIdentifier];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v7 students];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) identifier];
          v15 = [v9 identifier];
          v16 = [v14 isEqualToString:v15];

          if (v16)
          {
            v11 = v9;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)studentForStudentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(LKClassConfiguration *)self usersWithAppleIDByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)studentForUsername:(id)a3 inClass:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(LKClassConfiguration *)self usersByUsername];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v7 students];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) username];
          v15 = [v9 username];
          v16 = [v14 isEqualToString:v15];

          if (v16)
          {
            v11 = v9;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)studentForUsername:(id)a3
{
  v4 = a3;
  v5 = [(LKClassConfiguration *)self usersByUsername];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)classesByClassGroupNameDictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_classesByClassGroupName allKeys];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [LKClasses alloc];
        v12 = [(NSMutableDictionary *)self->_classesByClassGroupName objectForKeyedSubscript:v10, v16];
        v13 = [(LKClasses *)v11 initWithClassArray:v12];
        [v4 setObject:v13 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)initWithDictionary:(void *)a3 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 identifier];
  *a1 = 138477827;
  *a4 = v8;
  OUTLINED_FUNCTION_0_0(&dword_25618F000, v9, v10, "The user with ID: %{private}@ will not be visible in any class because of no Apple ID");
}

- (void)initWithDictionary:(void *)a3 .cold.2(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 classID];
  *a1 = 138477827;
  *a4 = v8;
  OUTLINED_FUNCTION_0_0(&dword_25618F000, v9, v10, "Ignoring the class with ID: %{private}@ Reason: No students in the class");
}

@end