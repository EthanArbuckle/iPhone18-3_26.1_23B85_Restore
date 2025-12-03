@interface LKClassGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLKClassGroup:(id)group;
- (LKClassGroup)initWithClassGroupDictionary:(id)dictionary classesDictionaryByClassID:(id)d;
- (LKClassGroup)initWithCoder:(id)coder;
- (LKClassGroup)initWithGroupName:(id)name classes:(id)classes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LKClassGroup

- (LKClassGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = LKClassGroup;
  v5 = [(LKClassGroup *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classGroupName"];
    classGroupName = v5->_classGroupName;
    v5->_classGroupName = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"classes"];
    classes = v5->_classes;
    v5->_classes = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  classGroupName = self->_classGroupName;
  coderCopy = coder;
  [coderCopy encodeObject:classGroupName forKey:@"classGroupName"];
  [coderCopy encodeObject:self->_classes forKey:@"classes"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKClassGroup *)self isEqualToLKClassGroup:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKClassGroup:(id)group
{
  groupCopy = group;
  classGroupName = [(LKClassGroup *)self classGroupName];
  classGroupName2 = [groupCopy classGroupName];
  v7 = [classGroupName isEqualToString:classGroupName2];

  if (v7)
  {
    classes = [(LKClassGroup *)self classes];
    classes2 = [groupCopy classes];
    v10 = [classes isEqualToArray:classes2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (LKClassGroup)initWithGroupName:(id)name classes:(id)classes
{
  nameCopy = name;
  classesCopy = classes;
  v12.receiver = self;
  v12.super_class = LKClassGroup;
  v9 = [(LKClassGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_classGroupName, name);
    objc_storeStrong(&v10->_classes, classes);
  }

  return v10;
}

- (LKClassGroup)initWithClassGroupDictionary:(id)dictionary classesDictionaryByClassID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dCopy = d;
  LKRegisterLoginKitLogging();
  v31.receiver = self;
  v31.super_class = LKClassGroup;
  v8 = [(LKClassGroup *)&v31 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:@"Name"];
    classGroupName = v8->_classGroupName;
    v25 = v8;
    v8->_classGroupName = v9;

    v11 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = dictionaryCopy;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"GroupBeaconIDs"];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    v15 = *v28;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [dCopy objectForKey:{v17, v25}];
        if (v18)
        {
          v19 = [dCopy objectForKey:v17];
          [(NSArray *)v11 addObject:v19];
        }

        else
        {
          v20 = LKLogParsing;
          if (!os_log_type_enabled(LKLogParsing, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v19 = v20;
          stringValue = [v17 stringValue];
          *buf = 138412290;
          v33 = stringValue;
          _os_log_impl(&dword_25618F000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring the classID %@ because there is no class with that id.", buf, 0xCu);
        }

LABEL_12:
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (!v14)
      {
LABEL_14:

        v8 = v25;
        classes = v25->_classes;
        v25->_classes = v11;

        dictionaryCopy = v26;
        break;
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v8;
}

@end