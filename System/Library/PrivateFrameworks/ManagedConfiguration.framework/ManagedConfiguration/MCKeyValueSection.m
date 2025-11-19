@interface MCKeyValueSection
+ (id)sectionWithKeyValues:(id)a3;
+ (id)sectionWithLocalizedArray:(id)a3 title:(id)a4 footer:(id)a5;
- (MCKeyValueSection)initWithCoder:(id)a3;
- (MCKeyValueSection)initWithSectionTitle:(id)a3 footer:(id)a4 keyValues:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MCKeyValueSection

+ (id)sectionWithKeyValues:(id)a3
{
  v3 = a3;
  v4 = [[MCKeyValueSection alloc] initWithSectionTitle:0 footer:0 keyValues:v3];

  return v4;
}

+ (id)sectionWithLocalizedArray:(id)a3 title:(id)a4 footer:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [MCKeyValue alloc];
        v18 = [(MCKeyValue *)v17 initWithLocalizedString:0 localizedKey:v16, v22];
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v19 = [[MCKeyValueSection alloc] initWithSectionTitle:v8 footer:v9 keyValues:v10];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (MCKeyValueSection)initWithSectionTitle:(id)a3 footer:(id)a4 keyValues:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MCKeyValueSection;
  v12 = [(MCKeyValueSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionTitle, a3);
    objc_storeStrong(&v13->_sectionFooter, a4);
    objc_storeStrong(&v13->_sectionKeyValues, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MCKeyValueSection *)self sectionTitle];
  [v4 encodeObject:v5 forKey:@"sectionTitle"];

  v6 = [(MCKeyValueSection *)self sectionFooter];
  [v4 encodeObject:v6 forKey:@"sectionFooter"];

  v7 = [(MCKeyValueSection *)self sectionKeyValues];
  [v4 encodeObject:v7 forKey:@"sectionKeyValues"];
}

- (MCKeyValueSection)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MCKeyValueSection;
  v5 = [(MCKeyValueSection *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sectionTitle"];
    sectionTitle = v5->_sectionTitle;
    v5->_sectionTitle = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"sectionKeyValues"];
    sectionKeyValues = v5->_sectionKeyValues;
    v5->_sectionKeyValues = v15;
  }

  return v5;
}

@end