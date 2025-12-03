@interface FAProfileViewTableViewDecorator
+ (BOOL)_shouldShowInSection:(id)section;
+ (BOOL)shouldShowInPage:(id)page;
- (FAProfileViewTableViewDecorator)initWithTableView:(id)view ruiTableView:(id)tableView forPerson:(id)person pictureStore:(id)store;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_getOrCreateProfileViewForCell:(id)cell;
- (id)_profileViewForCell:(id)cell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_addProfileViewToCell:(id)cell;
- (void)_removeProfileViewFromCell:(id)cell;
@end

@implementation FAProfileViewTableViewDecorator

- (FAProfileViewTableViewDecorator)initWithTableView:(id)view ruiTableView:(id)tableView forPerson:(id)person pictureStore:(id)store
{
  tableViewCopy = tableView;
  personCopy = person;
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = FAProfileViewTableViewDecorator;
  v14 = [(FATableViewDecorator *)&v19 initWithTableView:view];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pictureStore, store);
    objc_storeStrong(&v15->_familyMember, person);
    objc_storeStrong(&v15->_remoteTableViewController, tableView);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    profileViewForCells = v15->_profileViewForCells;
    v15->_profileViewForCells = v16;
  }

  return v15;
}

+ (BOOL)shouldShowInPage:(id)page
{
  v19 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  if ([pageCopy hasTableView])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    tableViewOM = [pageCopy tableViewOM];
    sections = [tableViewOM sections];

    v7 = [sections countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(sections);
          }

          if ([self _shouldShowInSection:*(*(&v14 + 1) + 8 * i)])
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v8 = [sections countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)_shouldShowInSection:(id)section
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  rows = [section rows];
  v4 = [rows countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(rows);
        }

        attributes = [*(*(&v14 + 1) + 8 * i) attributes];
        v9 = [attributes objectForKeyedSubscript:@"familyAction"];
        v10 = [v9 isEqual:@"InjectProfileView"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [rows countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_profileViewForCell:(id)cell
{
  v4 = [(FAProfileViewTableViewDecorator *)self _keyForCell:cell];
  v5 = [(NSMutableDictionary *)self->_profileViewForCells objectForKeyedSubscript:v4];

  return v5;
}

- (id)_getOrCreateProfileViewForCell:(id)cell
{
  cellCopy = cell;
  v5 = [(FAProfileViewTableViewDecorator *)self _profileViewForCell:cellCopy];

  if (v5)
  {
    v6 = [(FAProfileViewTableViewDecorator *)self _profileViewForCell:cellCopy];
    goto LABEL_18;
  }

  v7 = MEMORY[0x277D755B8];
  v8 = [(FAProfilePictureStore *)self->_pictureStore profilePictureForFamilyMember:self->_familyMember pictureDiameter:60.0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = [v7 imageWithData:v8 scale:?];

  fullName = [(FAFamilyMember *)self->_familyMember fullName];
  v12 = fullName;
  if (fullName)
  {
    v13 = fullName;
  }

  else
  {
    appleID = [(FAFamilyMember *)self->_familyMember appleID];

    familyMember = self->_familyMember;
    if (appleID)
    {
      [(FAFamilyMember *)familyMember appleID];
    }

    else
    {
      [(FAFamilyMember *)familyMember inviteEmail];
    }
    v13 = ;
  }

  v16 = v13;
  fa_standardFormatter = [MEMORY[0x277CCA968] fa_standardFormatter];
  [fa_standardFormatter setFormattingContext:5];
  joinedDate = [(FAFamilyMember *)self->_familyMember joinedDate];

  v19 = self->_familyMember;
  if (joinedDate)
  {
    joinedDate2 = [(FAFamilyMember *)v19 joinedDate];
    v21 = [fa_standardFormatter stringFromDate:joinedDate2];

    joinedDate3 = [(FAFamilyMember *)self->_familyMember joinedDate];
    isDateRelative = [joinedDate3 isDateRelative];

    v24 = MEMORY[0x277CCACA8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = v25;
    v27 = @"JOINED_DATE_ABSOLUTE";
    v28 = @"JOINED_DATE_RELATIVE";
LABEL_13:
    if (isDateRelative)
    {
      v32 = v28;
    }

    else
    {
      v32 = v27;
    }

    v33 = [v25 localizedStringForKey:v32 value:&stru_282D9AA68 table:@"Localizable"];
    v34 = [v24 stringWithFormat:v33, v21];

    goto LABEL_17;
  }

  invitationDate = [(FAFamilyMember *)v19 invitationDate];

  if (invitationDate)
  {
    invitationDate2 = [(FAFamilyMember *)self->_familyMember invitationDate];
    v21 = [fa_standardFormatter stringFromDate:invitationDate2];

    invitationDate3 = [(FAFamilyMember *)self->_familyMember invitationDate];
    isDateRelative = [invitationDate3 isDateRelative];

    v24 = MEMORY[0x277CCACA8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = v25;
    v27 = @"INVITED_DATE_ABSOLUTE";
    v28 = @"INVITED_DATE_RELATIVE";
    goto LABEL_13;
  }

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v21 localizedStringForKey:@"INVITED" value:&stru_282D9AA68 table:@"Localizable"];
LABEL_17:

  v6 = [objc_alloc(MEMORY[0x277CECA98]) initWithName:v16 email:v34 image:v10];
  v35 = [(FAProfileViewTableViewDecorator *)self _keyForCell:cellCopy];
  [(NSMutableDictionary *)self->_profileViewForCells setObject:v6 forKeyedSubscript:v35];

LABEL_18:

  return v6;
}

- (void)_addProfileViewToCell:(id)cell
{
  v28[4] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v5 = [(FAProfileViewTableViewDecorator *)self _profileViewForCell:cellCopy];
  v6 = _FALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [FAProfileViewTableViewDecorator _addProfileViewToCell:v6];
    }
  }

  else
  {
    if (v7)
    {
      [FAProfileViewTableViewDecorator _addProfileViewToCell:v6];
    }

    v6 = [(FAProfileViewTableViewDecorator *)self _getOrCreateProfileViewForCell:cellCopy];
    contentView = [cellCopy contentView];
    [contentView addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    contentView2 = [cellCopy contentView];
    topAnchor = [contentView2 topAnchor];
    topAnchor2 = [v6 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[0] = v24;
    contentView3 = [cellCopy contentView];
    leftAnchor = [contentView3 leftAnchor];
    leftAnchor2 = [v6 leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v28[1] = v19;
    contentView4 = [cellCopy contentView];
    rightAnchor = [contentView4 rightAnchor];
    rightAnchor2 = [v6 rightAnchor];
    v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v28[2] = v10;
    contentView5 = [cellCopy contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    bottomAnchor2 = [v6 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v20 activateConstraints:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeProfileViewFromCell:(id)cell
{
  cellCopy = cell;
  v6 = [(FAProfileViewTableViewDecorator *)self _profileViewForCell:cellCopy];
  v5 = [(FAProfileViewTableViewDecorator *)self _keyForCell:cellCopy];

  [v6 removeFromSuperview];
  [(NSMutableDictionary *)self->_profileViewForCells setObject:0 forKeyedSubscript:v5];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  delegate = [(FATableViewDecorator *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(FATableViewDecorator *)self delegate];
    v10 = [delegate2 tableView:viewCopy viewForHeaderInSection:section];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  delegate = [(FATableViewDecorator *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(FATableViewDecorator *)self delegate];
    [delegate2 tableView:viewCopy heightForHeaderInSection:section];
    v11 = v10;
  }

  else
  {
    [viewCopy rowHeight];
    v11 = v12;
  }

  return v11;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = viewCopy;
  if (section || [viewCopy numberOfRowsInSection:0])
  {
    delegate = [(FATableViewDecorator *)self delegate];
    v9 = objc_opt_respondsToSelector();

    v10 = 0.0;
    if (v9)
    {
      delegate2 = [(FATableViewDecorator *)self delegate];
      [delegate2 tableView:v7 heightForFooterInSection:section];
      v10 = v12;
    }
  }

  else
  {
    v14 = [(FAProfileViewTableViewDecorator *)self tableView:v7 titleForFooterInSection:0];

    if (v14)
    {
      v10 = *MEMORY[0x277D76F30];
    }

    else
    {
      UIRoundToViewScale();
      v10 = v15;
    }
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(FATableViewDecorator *)self dataSource];
  v9 = [dataSource tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  v10 = [(RUITableView *)self->_remoteTableViewController objectModelRowForIndexPath:pathCopy];

  attributes = [v10 attributes];
  v12 = [attributes objectForKeyedSubscript:@"familyAction"];

  if ([v12 isEqualToString:@"InjectProfileView"])
  {
    [(FAProfileViewTableViewDecorator *)self _addProfileViewToCell:v9];
  }

  else
  {
    [(FAProfileViewTableViewDecorator *)self _removeProfileViewFromCell:v9];
  }

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(RUITableView *)self->_remoteTableViewController objectModelRowForIndexPath:pathCopy];
  attributes = [v8 attributes];
  v10 = [attributes objectForKeyedSubscript:@"familyAction"];

  if ([v10 isEqualToString:@"InjectProfileView"])
  {
    [MEMORY[0x277CECA98] desiredHeight];
LABEL_6:
    v16 = v11;
    goto LABEL_7;
  }

  delegate = [(FATableViewDecorator *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    [viewCopy rowHeight];
    goto LABEL_6;
  }

  delegate2 = [(FATableViewDecorator *)self delegate];
  [delegate2 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
  v16 = v15;

LABEL_7:
  return v16;
}

@end