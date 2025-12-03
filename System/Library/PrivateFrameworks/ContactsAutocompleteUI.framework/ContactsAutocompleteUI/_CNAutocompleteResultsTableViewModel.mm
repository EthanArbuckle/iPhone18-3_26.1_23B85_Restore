@interface _CNAutocompleteResultsTableViewModel
- (_CNAutocompleteResultsTableViewModel)initWithNumberOfSections:(unint64_t)sections;
- (id)computeDiffForModel:(id)model;
- (id)sectionAtIndex:(unint64_t)index;
- (unint64_t)numberOfNonEmptySections;
- (void)enumerateSections:(id)sections;
- (void)setNumberOfSections:(unint64_t)sections;
- (void)setSection:(id)section atIndex:(unint64_t)index;
@end

@implementation _CNAutocompleteResultsTableViewModel

- (void)setNumberOfSections:(unint64_t)sections
{
  self->_numberOfSections = sections;
  self->_sections = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:sections];

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

- (void)enumerateSections:(id)sections
{
  sectionsCopy = sections;
  sections = self->_sections;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___CNAutocompleteResultsTableViewModel_enumerateSections___block_invoke;
  v7[3] = &unk_1E7CD1C58;
  v8 = sectionsCopy;
  v6 = sectionsCopy;
  [(NSMutableDictionary *)sections enumerateKeysAndObjectsUsingBlock:v7];
}

- (_CNAutocompleteResultsTableViewModel)initWithNumberOfSections:(unint64_t)sections
{
  v7.receiver = self;
  v7.super_class = _CNAutocompleteResultsTableViewModel;
  v4 = [(_CNAutocompleteResultsTableViewModel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_CNAutocompleteResultsTableViewModel *)v4 setNumberOfSections:sections];
  }

  return v5;
}

- (id)sectionAtIndex:(unint64_t)index
{
  if (self->_numberOfSections >= index)
  {
    sections = self->_sections;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v3 = [(NSMutableDictionary *)sections objectForKey:v7];

    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_sections;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
      [(NSMutableDictionary *)v8 setObject:v3 forKey:v9];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSection:(id)section atIndex:(unint64_t)index
{
  sections = self->_sections;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:section];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [(NSMutableDictionary *)sections setObject:v7 forKey:v6];
}

- (id)computeDiffForModel:(id)model
{
  modelCopy = model;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  indexSet3 = [MEMORY[0x1E696AD50] indexSet];
  numberOfSections = [modelCopy numberOfSections];
  if (numberOfSections == [(_CNAutocompleteResultsTableViewModel *)self numberOfSections]&& [(_CNAutocompleteResultsTableViewModel *)self numberOfSections])
  {
    for (i = 0; i < [(_CNAutocompleteResultsTableViewModel *)self numberOfSections]; ++i)
    {
      numberOfSections2 = [modelCopy numberOfSections];
      if (numberOfSections2 < [(_CNAutocompleteResultsTableViewModel *)self numberOfSections])
      {
        v11 = [(_CNAutocompleteResultsTableViewModel *)self sectionAtIndex:i];
        if ([v11 count])
        {
          v12 = [modelCopy sectionAtIndex:i];
          v13 = [v12 count];

          v14 = indexSet2;
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      numberOfSections3 = [modelCopy numberOfSections];
      if (numberOfSections3 > [(_CNAutocompleteResultsTableViewModel *)self numberOfSections])
      {
        v16 = [modelCopy sectionAtIndex:i];
        if ([v16 count])
        {
          v17 = [(_CNAutocompleteResultsTableViewModel *)self sectionAtIndex:i];
          v18 = [v17 count];

          v14 = indexSet;
          if (!v18)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v19 = [modelCopy sectionAtIndex:i];
      v20 = [v19 count];

      v14 = indexSet3;
      if (v20)
      {
LABEL_15:
        [v14 addIndex:i];
      }
    }
  }

  v21 = objc_alloc_init(_CNAutocompleteTableViewModelDiff);
  [(_CNAutocompleteTableViewModelDiff *)v21 setChangedRows:indexSet3];
  [(_CNAutocompleteTableViewModelDiff *)v21 setDeletedRows:indexSet2];
  [(_CNAutocompleteTableViewModelDiff *)v21 setInsertedRows:indexSet];

  return v21;
}

@end