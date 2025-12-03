@interface MCKeyValueSection
+ (id)sectionWithKeyValues:(id)values;
+ (id)sectionWithLocalizedArray:(id)array title:(id)title footer:(id)footer;
- (MCKeyValueSection)initWithCoder:(id)coder;
- (MCKeyValueSection)initWithSectionTitle:(id)title footer:(id)footer keyValues:(id)values;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MCKeyValueSection

+ (id)sectionWithKeyValues:(id)values
{
  valuesCopy = values;
  v4 = [[MCKeyValueSection alloc] initWithSectionTitle:0 footer:0 keyValues:valuesCopy];

  return v4;
}

+ (id)sectionWithLocalizedArray:(id)array title:(id)title footer:(id)footer
{
  v27 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  titleCopy = title;
  footerCopy = footer;
  v10 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = arrayCopy;
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

  v19 = [[MCKeyValueSection alloc] initWithSectionTitle:titleCopy footer:footerCopy keyValues:v10];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (MCKeyValueSection)initWithSectionTitle:(id)title footer:(id)footer keyValues:(id)values
{
  titleCopy = title;
  footerCopy = footer;
  valuesCopy = values;
  v15.receiver = self;
  v15.super_class = MCKeyValueSection;
  v12 = [(MCKeyValueSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionTitle, title);
    objc_storeStrong(&v13->_sectionFooter, footer);
    objc_storeStrong(&v13->_sectionKeyValues, values);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sectionTitle = [(MCKeyValueSection *)self sectionTitle];
  [coderCopy encodeObject:sectionTitle forKey:@"sectionTitle"];

  sectionFooter = [(MCKeyValueSection *)self sectionFooter];
  [coderCopy encodeObject:sectionFooter forKey:@"sectionFooter"];

  sectionKeyValues = [(MCKeyValueSection *)self sectionKeyValues];
  [coderCopy encodeObject:sectionKeyValues forKey:@"sectionKeyValues"];
}

- (MCKeyValueSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MCKeyValueSection;
  v5 = [(MCKeyValueSection *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sectionTitle"];
    sectionTitle = v5->_sectionTitle;
    v5->_sectionTitle = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"sectionKeyValues"];
    sectionKeyValues = v5->_sectionKeyValues;
    v5->_sectionKeyValues = v15;
  }

  return v5;
}

@end