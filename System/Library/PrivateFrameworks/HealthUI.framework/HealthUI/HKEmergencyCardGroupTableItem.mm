@interface HKEmergencyCardGroupTableItem
- (BOOL)canEditRowAtIndex:(int64_t)a3;
- (BOOL)hasPresentableData;
- (BOOL)shouldHighlightRowAtIndex:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndex:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (int64_t)editingStyleForRowAtIndex:(int64_t)a3;
- (int64_t)numberOfRows;
- (void)_getSubitem:(id *)a3 andSubitemRow:(int64_t *)a4 forTableViewRow:(int64_t)a5;
- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (void)setData:(id)a3;
- (void)setOwningViewController:(id)a3;
- (void)setProfileFirstName:(id)a3;
- (void)setSubitems:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndex:(int64_t)a4;
@end

@implementation HKEmergencyCardGroupTableItem

- (void)setSubitems:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_allSubItems, a3);
  subitems = self->_subitems;
  self->_subitems = v5;
  v9 = v5;

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v9, "count")}];
  cumulativeRowOffsets = self->_cumulativeRowOffsets;
  self->_cumulativeRowOffsets = v7;
}

- (void)_getSubitem:(id *)a3 andSubitemRow:(int64_t *)a4 forTableViewRow:(int64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_subitems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      v12 = a5;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v11);
        v14 = [v13 numberOfRows];
        a5 = v12 - v14;
        if (v12 < v14)
        {
          v9 = v13;
          a5 = v12;
          goto LABEL_11;
        }

        v11 = v11 + 1;
        v12 -= v14;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = v9;
  *a3 = v9;
  *a4 = a5;
}

- (void)setData:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKEmergencyCardGroupTableItem;
  v4 = a3;
  [(HKEmergencyCardTableItem *)&v5 setData:v4];
  [(NSArray *)self->_allSubItems makeObjectsPerformSelector:sel_setData_ withObject:v4, v5.receiver, v5.super_class];
}

- (void)setProfileFirstName:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKEmergencyCardGroupTableItem;
  v4 = a3;
  [(HKEmergencyCardTableItem *)&v5 setProfileFirstName:v4];
  [(NSArray *)self->_allSubItems makeObjectsPerformSelector:sel_setProfileFirstName_ withObject:v4, v5.receiver, v5.super_class];
}

- (void)setOwningViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKEmergencyCardGroupTableItem;
  v4 = a3;
  [(HKEmergencyCardTableItem *)&v5 setOwningViewController:v4];
  [(NSArray *)self->_allSubItems makeObjectsPerformSelector:sel_setOwningViewController_ withObject:v4, v5.receiver, v5.super_class];
}

- (BOOL)hasPresentableData
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_allSubItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 hasPresentableData])
        {
          [(NSArray *)v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  subitems = self->_subitems;
  self->_subitems = v3;

  v11 = [(HKEmergencyCardGroupTableItem *)self subitems];
  v12 = [v11 count] != 0;

  return v12;
}

- (int64_t)numberOfRows
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_subitems;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) numberOfRows];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v10 = 0;
  v11 = 0;
  v6 = a3;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v10 andSubitemRow:&v11 forTableViewRow:a4];
  v7 = v10;
  v8 = [v7 tableView:v6 cellForRowAtIndex:v11];

  return v8;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndex:(int64_t)a4
{
  v11 = 0;
  v12 = 0;
  v6 = a3;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v11 andSubitemRow:&v12 forTableViewRow:a4];
  v7 = v11;
  [v7 tableView:v6 estimatedHeightForRowAtIndex:v12];
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4
{
  v11 = 0;
  v12 = 0;
  v6 = a3;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v11 andSubitemRow:&v12 forTableViewRow:a4];
  v7 = v11;
  [v7 tableView:v6 heightForRowAtIndex:v12];
  v9 = v8;

  return v9;
}

- (BOOL)shouldHighlightRowAtIndex:(int64_t)a3
{
  v6 = 0;
  v7 = 0;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v6 andSubitemRow:&v7 forTableViewRow:a3];
  v3 = v6;
  v4 = [v3 shouldHighlightRowAtIndex:v7];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndex:(int64_t)a4
{
  v8 = 0;
  v9 = 0;
  v6 = a3;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v8 andSubitemRow:&v9 forTableViewRow:a4];
  v7 = v8;
  [v7 tableView:v6 didSelectRowAtIndex:v9];
}

- (BOOL)canEditRowAtIndex:(int64_t)a3
{
  v6 = 0;
  v7 = 0;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v6 andSubitemRow:&v7 forTableViewRow:a3];
  v3 = v6;
  v4 = [v3 canEditRowAtIndex:v7];

  return v4;
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)a3
{
  v6 = 0;
  v7 = 0;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v6 andSubitemRow:&v7 forTableViewRow:a3];
  v3 = v6;
  v4 = [v3 editingStyleForRowAtIndex:v7];

  return v4;
}

- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  v8 = 0;
  v9 = 0;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v8 andSubitemRow:&v9 forTableViewRow:a4];
  v5 = v8;
  v6 = [v5 commitEditingStyle:a3 forRowAtIndex:v9];

  return v6;
}

- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  v6 = 0;
  v7 = 0;
  [(HKEmergencyCardGroupTableItem *)self _getSubitem:&v6 andSubitemRow:&v7 forTableViewRow:a4];
  v5 = v6;
  [v5 didCommitEditingStyle:a3 forRowAtIndex:v7];
}

@end