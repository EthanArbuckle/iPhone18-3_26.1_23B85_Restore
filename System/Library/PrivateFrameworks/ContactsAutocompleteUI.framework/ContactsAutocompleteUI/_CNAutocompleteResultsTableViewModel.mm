@interface _CNAutocompleteResultsTableViewModel
- (_CNAutocompleteResultsTableViewModel)initWithNumberOfSections:(unint64_t)a3;
- (id)computeDiffForModel:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (unint64_t)numberOfNonEmptySections;
- (void)enumerateSections:(id)a3;
- (void)setNumberOfSections:(unint64_t)a3;
- (void)setSection:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation _CNAutocompleteResultsTableViewModel

- (void)setNumberOfSections:(unint64_t)a3
{
  self->_numberOfSections = a3;
  self->_sections = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)numberOfNonEmptySections
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64___CNAutocompleteResultsTableViewModel_numberOfNonEmptySections__block_invoke;
  v4[3] = &unk_1E7CD1C30;
  v4[4] = &v5;
  [(_CNAutocompleteResultsTableViewModel *)self enumerateSections:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)enumerateSections:(id)a3
{
  v4 = a3;
  sections = self->_sections;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___CNAutocompleteResultsTableViewModel_enumerateSections___block_invoke;
  v7[3] = &unk_1E7CD1C58;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)sections enumerateKeysAndObjectsUsingBlock:v7];
}

- (_CNAutocompleteResultsTableViewModel)initWithNumberOfSections:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _CNAutocompleteResultsTableViewModel;
  v4 = [(_CNAutocompleteResultsTableViewModel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_CNAutocompleteResultsTableViewModel *)v4 setNumberOfSections:a3];
  }

  return v5;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  if (self->_numberOfSections >= a3)
  {
    sections = self->_sections;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v3 = [(NSMutableDictionary *)sections objectForKey:v7];

    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_sections;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)v8 setObject:v3 forKey:v9];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSection:(id)a3 atIndex:(unint64_t)a4
{
  sections = self->_sections;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)sections setObject:v7 forKey:v6];
}

- (id)computeDiffForModel:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v6 = [MEMORY[0x1E696AD50] indexSet];
  v7 = [MEMORY[0x1E696AD50] indexSet];
  v8 = [v4 numberOfSections];
  if (v8 == [(_CNAutocompleteResultsTableViewModel *)self numberOfSections]&& [(_CNAutocompleteResultsTableViewModel *)self numberOfSections])
  {
    for (i = 0; i < [(_CNAutocompleteResultsTableViewModel *)self numberOfSections]; ++i)
    {
      v10 = [v4 numberOfSections];
      if (v10 < [(_CNAutocompleteResultsTableViewModel *)self numberOfSections])
      {
        v11 = [(_CNAutocompleteResultsTableViewModel *)self sectionAtIndex:i];
        if ([v11 count])
        {
          v12 = [v4 sectionAtIndex:i];
          v13 = [v12 count];

          v14 = v6;
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v15 = [v4 numberOfSections];
      if (v15 > [(_CNAutocompleteResultsTableViewModel *)self numberOfSections])
      {
        v16 = [v4 sectionAtIndex:i];
        if ([v16 count])
        {
          v17 = [(_CNAutocompleteResultsTableViewModel *)self sectionAtIndex:i];
          v18 = [v17 count];

          v14 = v5;
          if (!v18)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v19 = [v4 sectionAtIndex:i];
      v20 = [v19 count];

      v14 = v7;
      if (v20)
      {
LABEL_15:
        [v14 addIndex:i];
      }
    }
  }

  v21 = objc_alloc_init(_CNAutocompleteTableViewModelDiff);
  [(_CNAutocompleteTableViewModelDiff *)v21 setChangedRows:v7];
  [(_CNAutocompleteTableViewModelDiff *)v21 setDeletedRows:v6];
  [(_CNAutocompleteTableViewModelDiff *)v21 setInsertedRows:v5];

  return v21;
}

@end