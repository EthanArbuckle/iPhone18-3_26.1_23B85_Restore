@interface PKPassUpcomingPassInformation
+ (BOOL)isPassStyleEligible:(int64_t)a3;
+ (id)_supportedEntryTypesForPassStyle:(int64_t)a3;
+ (id)createFromDictionary:(id)a3 bundle:(id)a4 forPassStyle:(int64_t)a5;
- (BOOL)coalesceIntoGroupsForPassStyle:(int64_t)a3;
- (PKPassUpcomingPassInformation)initWithCoder:(id)a3;
- (id)_groupIdentifierForEntry:(id)a3;
- (id)_groupNameForIdentifier:(id)a3;
- (id)_initWithEntries:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpcomingPassInformation

+ (BOOL)isPassStyleEligible:(int64_t)a3
{
  v3 = [PKPassUpcomingPassInformation _supportedEntryTypesForPassStyle:a3];
  v4 = [v3 count] != 0;

  return v4;
}

+ (id)_supportedEntryTypesForPassStyle:(int64_t)a3
{
  if (a3 < 9 || a3 == 10)
  {
    return MEMORY[0x1E695E0F0];
  }

  if (a3 != 13)
  {
    return &unk_1F23B4028;
  }

  __break(1u);
  return result;
}

+ (id)createFromDictionary:(id)a3 bundle:(id)a4 forPassStyle:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    if ([PKPassUpcomingPassInformation isPassStyleEligible:a5])
    {
      v11 = [v7 objectForKeyedSubscript:@"upcomingPassInformation"];
      v12 = v11;
      v13 = MEMORY[0x1E695E0F0];
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74__PKPassUpcomingPassInformation_createFromDictionary_bundle_forPassStyle___block_invoke;
      v19[3] = &unk_1E79D9D68;
      v20 = v9;
      v15 = [v14 pk_createArrayBySafelyApplyingBlock:v19];

      v16 = [[PKPassUpcomingPassInformation alloc] _initWithEntries:v15];
      v17 = v16;
      if (v16 && [v16 coalesceIntoGroupsForPassStyle:a5])
      {
        v10 = v17;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_initWithEntries:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v10.receiver = self;
    v10.super_class = PKPassUpcomingPassInformation;
    v6 = [(PKPassUpcomingPassInformation *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_allEntries, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_groupIdentifierForEntry:(id)a3
{
  v3 = [a3 metadata];
  if ([v3 type])
  {
    v4 = @"upcomingEvents";
  }

  else
  {
    v4 = @"upcoming";
  }

  return v4;
}

- (id)_groupNameForIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 != @"upcoming" && v3 && (v5 = [(__CFString *)v3 isEqualToString:@"upcoming"], v4, (v5 & 1) == 0) && ((v6 = v4, v6 == @"upcomingEvents") || (v7 = v6, v8 = [(__CFString *)v6 isEqualToString:@"upcomingEvents"], v7, (v8 & 1) != 0)))
  {
    v9 = @"UPCOMING_INFORMATION_EVENT_SECTION_LABEL";
  }

  else
  {
    v9 = @"UPCOMING_INFORMATION_GENERAL_SECTION_LABEL";
  }

  v10 = PKLocalizedTicketingString(&v9->isa, 0);

  return v10;
}

- (BOOL)coalesceIntoGroupsForPassStyle:(int64_t)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = [PKPassUpcomingPassInformation _supportedEntryTypesForPassStyle:a3];
  allEntries = self->_allEntries;
  v6 = MEMORY[0x1E696AE18];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __64__PKPassUpcomingPassInformation_coalesceIntoGroupsForPassStyle___block_invoke;
  v43[3] = &unk_1E79D9D90;
  v7 = v4;
  v44 = v7;
  v8 = [v6 predicateWithBlock:v43];
  v9 = [(NSArray *)allEntries filteredArrayUsingPredicate:v8];

  if ([v9 count])
  {
    v33 = v7;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = [(PKPassUpcomingPassInformation *)self _groupIdentifierForEntry:v16];
          v18 = [v10 objectForKeyedSubscript:v17];
          if (!v18)
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v18 addObject:v16];
          [v10 setObject:v18 forKeyedSubscript:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v13);
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v10 allKeys];
    v20 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v35 + 1) + 8 * j);
          v25 = [v10 objectForKeyedSubscript:v24];
          v26 = [(PKPassUpcomingPassInformation *)self _groupNameForIdentifier:v24];
          v27 = [PKPassUpcomingPassInformationGroup createFromEntries:v25 identifier:v24 name:v26];
          if (v27)
          {
            [v19 addObject:v27];
          }
        }

        v21 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v21);
    }

    v28 = v19;
    v29 = [v19 count];
    v30 = v29 != 0;
    v7 = v33;
    if (v29)
    {
      objc_storeStrong(&self->_groups, v28);
    }

    v9 = v32;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

uint64_t __64__PKPassUpcomingPassInformation_coalesceIntoGroupsForPassStyle___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 metadata];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "type")}];
  v6 = [v2 containsObject:v5];

  return v6;
}

- (PKPassUpcomingPassInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassUpcomingPassInformation;
  v5 = [(PKPassUpcomingPassInformation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allEntries"];
    allEntries = v5->_allEntries;
    v5->_allEntries = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"groups"];
    groups = v5->_groups;
    v5->_groups = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  allEntries = self->_allEntries;
  v5 = a3;
  [v5 encodeObject:allEntries forKey:@"allEntries"];
  [v5 encodeObject:self->_groups forKey:@"groups"];
}

@end