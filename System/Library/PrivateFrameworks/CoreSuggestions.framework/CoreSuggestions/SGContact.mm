@interface SGContact
+ (SGContact)contactWithId:(id)a3 name:(id)a4 emailAddresses:(id)a5 phones:(id)a6 postalAddresses:(id)a7 socialProfiles:(id)a8 birthday:(id)a9 photoPath:(id)a10;
- (BOOL)containsDetailSuggestions;
- (BOOL)containsSuggestions;
- (BOOL)hasNonTrivialInfo;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContact:(id)a3;
- (SGContact)initWithCoder:(id)a3;
- (SGContact)initWithId:(id)a3 name:(id)a4 emailAddresses:(id)a5 phones:(id)a6 postalAddresses:(id)a7 socialProfiles:(id)a8 birthday:(id)a9 photoPath:(id)a10;
- (id)description;
- (id)detailForRecordId:(id)a3;
- (unint64_t)richness;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateDetailsWithBlock:(id)a3;
@end

@implementation SGContact

- (BOOL)hasNonTrivialInfo
{
  v3 = [(SGContact *)self name];
  v4 = [v3 fullName];
  if ([v4 length])
  {
    v5 = [(SGContact *)self phones];
    if ([v5 count])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(SGContact *)self postalAddresses];
      v6 = [v7 count] != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enumerateDetailsWithBlock:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  emailAddresses = self->_emailAddresses;
  phones = self->_phones;
  if (!phones)
  {
    phones = MEMORY[0x1E695E0F0];
  }

  if (!emailAddresses)
  {
    emailAddresses = MEMORY[0x1E695E0F0];
  }

  v32[0] = phones;
  v32[1] = emailAddresses;
  v18 = self;
  v33 = vbslq_s8(vceqzq_s64(*&self->_postalAddresses), vdupq_n_s64(MEMORY[0x1E695E0F0]), *&self->_postalAddresses);
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  v22 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            v14 = 0;
            do
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * v14);
              v16 = objc_autoreleasePoolPush();
              v4[2](v4, v15);
              objc_autoreleasePoolPop(v16);
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v7 != v22);
      v22 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v22);
  }

  if (v18->_birthday)
  {
    (v4[2])(v4);
  }

  objc_autoreleasePoolPop(context);

  v17 = *MEMORY[0x1E69E9840];
}

- (id)detailForRecordId:(id)a3
{
  cachedDetailForRecordIdMap = self->_cachedDetailForRecordIdMap;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__SGContact_detailForRecordId___block_invoke;
  v8[3] = &unk_1E7EFD0F0;
  v8[4] = self;
  v4 = a3;
  v5 = [(_PASCachedResult *)cachedDetailForRecordIdMap resultNonnullWithBlock:v8];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

id __31__SGContact_detailForRecordId___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__SGContact_detailForRecordId___block_invoke_2;
  v8[3] = &unk_1E7EFD0C8;
  v9 = v3;
  v5 = v3;
  [v4 enumerateDetailsWithBlock:v8];
  v6 = [v5 copy];

  objc_autoreleasePoolPop(v2);

  return v6;
}

void __31__SGContact_detailForRecordId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 recordId];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (BOOL)containsDetailSuggestions
{
  v3 = [(SGContact *)self emailAddresses];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SGContact *)self phones];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(SGContact *)self postalAddresses];
      if ([v6 count])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(SGContact *)self birthday];
        if (v7)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(SGContact *)self photoPath];
          if (v8)
          {
            v4 = 1;
          }

          else
          {
            v9 = [(SGContact *)self socialProfiles];
            v4 = [v9 count] != 0;
          }
        }
      }
    }
  }

  return v4;
}

- (BOOL)containsSuggestions
{
  v3 = [(SGContact *)self name];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(SGContact *)self containsDetailSuggestions];
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_recordId;
  v5 = *&self->_postalAddresses;
  v6 = [v3 initWithFormat:@"<SGContact recordId:%@\n name='%@'\n  emails: %@\n  phones: %@\n  postal addresses: %@\n  social profiles: %@\n  birthday: %@\n  photo: %@\n significance: %lu\n>", self->_recordId, self->_name, self->_emailAddresses, self->_phones, self->_postalAddresses, self->_socialProfiles, self->_birthday, self->_photoPath, self->_significance];

  return v6;
}

- (unint64_t)richness
{
  name = self->_name;
  v4 = [(NSArray *)self->_emailAddresses count];
  if (name)
  {
    v5 = (v4 != 0) + 1;
  }

  else
  {
    v5 = v4 != 0;
  }

  if ([(NSArray *)self->_phones count])
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  if (self->_birthday)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  if ([(NSArray *)self->_postalAddresses count])
  {
    return v7 + 1;
  }

  else
  {
    return v7;
  }
}

- (BOOL)isEqualToContact:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = self->_recordId;
  v6 = v5;
  if (v5 == v4[3])
  {
  }

  else
  {
    v7 = [(SGRecordId *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_32;
    }
  }

  v8 = self->_name;
  v9 = v8;
  if (v8 == v4[4])
  {
  }

  else
  {
    v10 = [(SGName *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_32;
    }
  }

  v11 = self->_emailAddresses;
  v12 = v11;
  if (v11 == v4[5])
  {
  }

  else
  {
    v13 = [(NSArray *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v14 = self->_phones;
  v15 = v14;
  if (v14 == v4[6])
  {
  }

  else
  {
    v16 = [(NSArray *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v17 = self->_postalAddresses;
  v18 = v17;
  if (v17 == v4[7])
  {
  }

  else
  {
    v19 = [(NSArray *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = self->_socialProfiles;
  v21 = v20;
  if (v20 == v4[8])
  {
  }

  else
  {
    v22 = [(NSArray *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v23 = self->_birthday;
  v24 = v23;
  if (v23 == v4[9])
  {
  }

  else
  {
    v25 = [(SGDateComponents *)v23 isEqual:?];

    if (!v25)
    {
      goto LABEL_32;
    }
  }

  v26 = self->_photoPath;
  v27 = v26;
  if (v26 == v4[10])
  {

    goto LABEL_35;
  }

  v28 = [(NSString *)v26 isEqual:?];

  if (v28)
  {
LABEL_35:
    significance = self->_significance;
    v29 = significance == [v4 significance];
    goto LABEL_33;
  }

LABEL_32:
  v29 = 0;
LABEL_33:

  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGContact *)self isEqualToContact:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  recordId = self->_recordId;
  v5 = a3;
  [v5 encodeObject:recordId forKey:@"recordId"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [v5 encodeObject:self->_phones forKey:@"phones"];
  [v5 encodeObject:self->_postalAddresses forKey:@"postalAddresses"];
  [v5 encodeObject:self->_socialProfiles forKey:@"socialProfiles"];
  [v5 encodeObject:self->_birthday forKey:@"birthday"];
  [v5 encodeObject:self->_photoPath forKey:@"photoPath"];
  [v5 encodeInt64:self->_significance forKey:@"significance"];
}

- (SGContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordId"];
  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v30 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v9 = [v4 decodeObjectOfClasses:v30 forKey:@"emailAddresses"];
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v28 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v10);
  v13 = [v4 decodeObjectOfClasses:v28 forKey:@"phones"];
  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v27 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v14);
  v26 = [v4 decodeObjectOfClasses:v27 forKey:@"postalAddresses"];
  v17 = objc_autoreleasePoolPush();
  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = objc_opt_class();
  v25 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v17);
  v20 = [v4 decodeObjectOfClasses:v25 forKey:@"socialProfiles"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"birthday"];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoPath"];
  v23 = [(SGContact *)self initWithId:v5 name:v29 emailAddresses:v9 phones:v13 postalAddresses:v26 socialProfiles:v20 birthday:v21 photoPath:v22];

  if (v23)
  {
    v23->_significance = [v4 decodeInt64ForKey:@"significance"];
  }

  return v23;
}

- (SGContact)initWithId:(id)a3 name:(id)a4 emailAddresses:(id)a5 phones:(id)a6 postalAddresses:(id)a7 socialProfiles:(id)a8 birthday:(id)a9 photoPath:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v52.receiver = self;
  v52.super_class = SGContact;
  v24 = [(SGContact *)&v52 init];
  if (v24)
  {
    v25 = [v16 copy];
    recordId = v24->_recordId;
    v24->_recordId = v25;

    v27 = [v17 copy];
    name = v24->_name;
    v24->_name = v27;

    v29 = [v18 copy];
    v51 = v18;
    v30 = v17;
    v31 = v16;
    v32 = v29;
    v33 = MEMORY[0x1E695E0F0];
    if (v29)
    {
      v34 = v29;
    }

    else
    {
      v34 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v24->_emailAddresses, v34);

    v35 = [v19 copy];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = v33;
    }

    objc_storeStrong(&v24->_phones, v37);

    v38 = [v20 copy];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v33;
    }

    objc_storeStrong(&v24->_postalAddresses, v40);

    v41 = [v22 copy];
    birthday = v24->_birthday;
    v24->_birthday = v41;

    v43 = [v21 copy];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v33;
    }

    objc_storeStrong(&v24->_socialProfiles, v45);

    v16 = v31;
    v17 = v30;
    v18 = v51;
    v24->_significance = 0;
    v46 = [v23 copy];
    photoPath = v24->_photoPath;
    v24->_photoPath = v46;

    v48 = objc_opt_new();
    cachedDetailForRecordIdMap = v24->_cachedDetailForRecordIdMap;
    v24->_cachedDetailForRecordIdMap = v48;
  }

  return v24;
}

+ (SGContact)contactWithId:(id)a3 name:(id)a4 emailAddresses:(id)a5 phones:(id)a6 postalAddresses:(id)a7 socialProfiles:(id)a8 birthday:(id)a9 photoPath:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[SGContact alloc] initWithId:v23 name:v22 emailAddresses:v21 phones:v20 postalAddresses:v19 socialProfiles:v18 birthday:v17 photoPath:v16];

  return v24;
}

@end