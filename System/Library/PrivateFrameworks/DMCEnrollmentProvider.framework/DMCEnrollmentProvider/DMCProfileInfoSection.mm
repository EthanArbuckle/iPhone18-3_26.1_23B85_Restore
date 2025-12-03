@interface DMCProfileInfoSection
- (DMCProfileInfoSection)initWithCoder:(id)coder;
- (DMCProfileInfoSection)initWithSectionTitle:(id)title footer:(id)footer attributedText:(id)text;
- (DMCProfileInfoSection)initWithSectionTitle:(id)title footer:(id)footer text:(id)text;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMCProfileInfoSection

- (DMCProfileInfoSection)initWithSectionTitle:(id)title footer:(id)footer text:(id)text
{
  titleCopy = title;
  footerCopy = footer;
  textCopy = text;
  v19.receiver = self;
  v19.super_class = DMCProfileInfoSection;
  v11 = [(DMCProfileInfoSection *)&v19 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    sectionTitle = v11->_sectionTitle;
    v11->_sectionTitle = v12;

    v14 = [footerCopy copy];
    sectionFooter = v11->_sectionFooter;
    v11->_sectionFooter = v14;

    v16 = [textCopy copy];
    sectionText = v11->_sectionText;
    v11->_sectionText = v16;
  }

  return v11;
}

- (DMCProfileInfoSection)initWithSectionTitle:(id)title footer:(id)footer attributedText:(id)text
{
  textCopy = text;
  footerCopy = footer;
  titleCopy = title;
  string = [textCopy string];
  v12 = [(DMCProfileInfoSection *)self initWithSectionTitle:titleCopy footer:footerCopy text:string];

  if (v12)
  {
    v13 = [textCopy copy];
    sectionAttributedText = v12->_sectionAttributedText;
    v12->_sectionAttributedText = v13;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sectionTitle = [(DMCProfileInfoSection *)self sectionTitle];
  [coderCopy encodeObject:sectionTitle forKey:@"sectionTitle"];

  sectionFooter = [(DMCProfileInfoSection *)self sectionFooter];
  [coderCopy encodeObject:sectionFooter forKey:@"sectionFooter"];

  sectionText = [(DMCProfileInfoSection *)self sectionText];
  [coderCopy encodeObject:sectionText forKey:@"sectionText"];

  sectionAttributedText = [(DMCProfileInfoSection *)self sectionAttributedText];
  [coderCopy encodeObject:sectionAttributedText forKey:@"sectionAttributedText"];
}

- (DMCProfileInfoSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DMCProfileInfoSection;
  v5 = [(DMCProfileInfoSection *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sectionTitle"];
    sectionTitle = v5->_sectionTitle;
    v5->_sectionTitle = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"sectionText"];
    sectionText = v5->_sectionText;
    v5->_sectionText = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"sectionAttributedText"];
    sectionAttributedText = v5->_sectionAttributedText;
    v5->_sectionAttributedText = v16;
  }

  return v5;
}

@end