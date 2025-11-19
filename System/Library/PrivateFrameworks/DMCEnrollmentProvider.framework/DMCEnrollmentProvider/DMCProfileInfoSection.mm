@interface DMCProfileInfoSection
- (DMCProfileInfoSection)initWithCoder:(id)a3;
- (DMCProfileInfoSection)initWithSectionTitle:(id)a3 footer:(id)a4 attributedText:(id)a5;
- (DMCProfileInfoSection)initWithSectionTitle:(id)a3 footer:(id)a4 text:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMCProfileInfoSection

- (DMCProfileInfoSection)initWithSectionTitle:(id)a3 footer:(id)a4 text:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DMCProfileInfoSection;
  v11 = [(DMCProfileInfoSection *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    sectionTitle = v11->_sectionTitle;
    v11->_sectionTitle = v12;

    v14 = [v9 copy];
    sectionFooter = v11->_sectionFooter;
    v11->_sectionFooter = v14;

    v16 = [v10 copy];
    sectionText = v11->_sectionText;
    v11->_sectionText = v16;
  }

  return v11;
}

- (DMCProfileInfoSection)initWithSectionTitle:(id)a3 footer:(id)a4 attributedText:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 string];
  v12 = [(DMCProfileInfoSection *)self initWithSectionTitle:v10 footer:v9 text:v11];

  if (v12)
  {
    v13 = [v8 copy];
    sectionAttributedText = v12->_sectionAttributedText;
    v12->_sectionAttributedText = v13;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMCProfileInfoSection *)self sectionTitle];
  [v4 encodeObject:v5 forKey:@"sectionTitle"];

  v6 = [(DMCProfileInfoSection *)self sectionFooter];
  [v4 encodeObject:v6 forKey:@"sectionFooter"];

  v7 = [(DMCProfileInfoSection *)self sectionText];
  [v4 encodeObject:v7 forKey:@"sectionText"];

  v8 = [(DMCProfileInfoSection *)self sectionAttributedText];
  [v4 encodeObject:v8 forKey:@"sectionAttributedText"];
}

- (DMCProfileInfoSection)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DMCProfileInfoSection;
  v5 = [(DMCProfileInfoSection *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sectionTitle"];
    sectionTitle = v5->_sectionTitle;
    v5->_sectionTitle = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"sectionText"];
    sectionText = v5->_sectionText;
    v5->_sectionText = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"sectionAttributedText"];
    sectionAttributedText = v5->_sectionAttributedText;
    v5->_sectionAttributedText = v16;
  }

  return v5;
}

@end