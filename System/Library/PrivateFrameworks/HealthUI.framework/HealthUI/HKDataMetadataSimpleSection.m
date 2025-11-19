@interface HKDataMetadataSimpleSection
- (HKDataMetadataSimpleSection)initWithTitle:(id)a3;
- (id)_valueForRowWithTitle:(id)a3;
- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4;
- (void)addText:(id)a3 detail:(id)a4 baseIdentifier:(id)a5;
@end

@implementation HKDataMetadataSimpleSection

- (HKDataMetadataSimpleSection)initWithTitle:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HKDataMetadataSimpleSection;
  v6 = [(HKDataMetadataSimpleSection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rows = v7->_rows;
    v7->_rows = v8;
  }

  return v7;
}

- (void)addText:(id)a3 detail:(id)a4 baseIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(_HKDataMetadataSimpleRow);
  [(_HKDataMetadataSimpleRow *)v11 setText:v10];

  [(_HKDataMetadataSimpleRow *)v11 setDetail:v9];
  [(_HKDataMetadataSimpleRow *)v11 setBaseIdentifier:v8];

  [(NSMutableArray *)self->_rows addObject:v11];
}

- (id)_valueForRowWithTitle:(id)a3
{
  v4 = a3;
  rows = self->_rows;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__HKDataMetadataSimpleSection__valueForRowWithTitle___block_invoke;
  v11[3] = &unk_1E81B8EB0;
  v12 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)rows hk_filter:v11];
  v8 = [v7 firstObject];
  v9 = [v8 text];

  return v9;
}

uint64_t __53__HKDataMetadataSimpleSection__valueForRowWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 detail];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4
{
  v6 = [a4 dequeueReusableCellWithIdentifier:@"SimpleCellReuseIdentifier"];
  if (!v6)
  {
    v6 = [[HKDataMetadataSimpleTableViewCell alloc] initWithReuseIdentifier:@"SimpleCellReuseIdentifier"];
  }

  v7 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a3];
  v8 = [v7 text];
  v9 = [(HKDataMetadataSimpleTableViewCell *)v6 titleTextLabel];
  [v9 setText:v8];

  v10 = [v7 detail];

  if (v10)
  {
    v11 = [v7 detail];
    v12 = [(HKDataMetadataSimpleTableViewCell *)v6 subtitleTextLabel];
    [v12 setText:v11];
  }

  v13 = [v7 baseIdentifier];
  [(HKDataMetadataSimpleTableViewCell *)v6 updateAutomationIdentifiersWith:v13];

  return v6;
}

@end