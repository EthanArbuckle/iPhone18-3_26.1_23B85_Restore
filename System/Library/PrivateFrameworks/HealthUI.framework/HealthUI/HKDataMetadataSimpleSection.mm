@interface HKDataMetadataSimpleSection
- (HKDataMetadataSimpleSection)initWithTitle:(id)title;
- (id)_valueForRowWithTitle:(id)title;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (void)addText:(id)text detail:(id)detail baseIdentifier:(id)identifier;
@end

@implementation HKDataMetadataSimpleSection

- (HKDataMetadataSimpleSection)initWithTitle:(id)title
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = HKDataMetadataSimpleSection;
  v6 = [(HKDataMetadataSimpleSection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, title);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rows = v7->_rows;
    v7->_rows = v8;
  }

  return v7;
}

- (void)addText:(id)text detail:(id)detail baseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  detailCopy = detail;
  textCopy = text;
  v11 = objc_alloc_init(_HKDataMetadataSimpleRow);
  [(_HKDataMetadataSimpleRow *)v11 setText:textCopy];

  [(_HKDataMetadataSimpleRow *)v11 setDetail:detailCopy];
  [(_HKDataMetadataSimpleRow *)v11 setBaseIdentifier:identifierCopy];

  [(NSMutableArray *)self->_rows addObject:v11];
}

- (id)_valueForRowWithTitle:(id)title
{
  titleCopy = title;
  rows = self->_rows;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__HKDataMetadataSimpleSection__valueForRowWithTitle___block_invoke;
  v11[3] = &unk_1E81B8EB0;
  v12 = titleCopy;
  v6 = titleCopy;
  v7 = [(NSMutableArray *)rows hk_filter:v11];
  firstObject = [v7 firstObject];
  text = [firstObject text];

  return text;
}

uint64_t __53__HKDataMetadataSimpleSection__valueForRowWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 detail];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v6 = [view dequeueReusableCellWithIdentifier:@"SimpleCellReuseIdentifier"];
  if (!v6)
  {
    v6 = [[HKDataMetadataSimpleTableViewCell alloc] initWithReuseIdentifier:@"SimpleCellReuseIdentifier"];
  }

  v7 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:index];
  text = [v7 text];
  titleTextLabel = [(HKDataMetadataSimpleTableViewCell *)v6 titleTextLabel];
  [titleTextLabel setText:text];

  detail = [v7 detail];

  if (detail)
  {
    detail2 = [v7 detail];
    subtitleTextLabel = [(HKDataMetadataSimpleTableViewCell *)v6 subtitleTextLabel];
    [subtitleTextLabel setText:detail2];
  }

  baseIdentifier = [v7 baseIdentifier];
  [(HKDataMetadataSimpleTableViewCell *)v6 updateAutomationIdentifiersWith:baseIdentifier];

  return v6;
}

@end