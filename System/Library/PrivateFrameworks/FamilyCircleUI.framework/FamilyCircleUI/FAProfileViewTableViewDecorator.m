@interface FAProfileViewTableViewDecorator
+ (BOOL)_shouldShowInSection:(id)a3;
+ (BOOL)shouldShowInPage:(id)a3;
- (FAProfileViewTableViewDecorator)initWithTableView:(id)a3 ruiTableView:(id)a4 forPerson:(id)a5 pictureStore:(id)a6;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_getOrCreateProfileViewForCell:(id)a3;
- (id)_profileViewForCell:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_addProfileViewToCell:(id)a3;
- (void)_removeProfileViewFromCell:(id)a3;
@end

@implementation FAProfileViewTableViewDecorator

- (FAProfileViewTableViewDecorator)initWithTableView:(id)a3 ruiTableView:(id)a4 forPerson:(id)a5 pictureStore:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = FAProfileViewTableViewDecorator;
  v14 = [(FATableViewDecorator *)&v19 initWithTableView:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pictureStore, a6);
    objc_storeStrong(&v15->_familyMember, a5);
    objc_storeStrong(&v15->_remoteTableViewController, a4);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    profileViewForCells = v15->_profileViewForCells;
    v15->_profileViewForCells = v16;
  }

  return v15;
}

+ (BOOL)shouldShowInPage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasTableView])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 tableViewOM];
    v6 = [v5 sections];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          if ([a1 _shouldShowInSection:*(*(&v14 + 1) + 8 * i)])
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (BOOL)_shouldShowInSection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 rows];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) attributes];
        v9 = [v8 objectForKeyedSubscript:@"familyAction"];
        v10 = [v9 isEqual:@"InjectProfileView"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_profileViewForCell:(id)a3
{
  v4 = [(FAProfileViewTableViewDecorator *)self _keyForCell:a3];
  v5 = [(NSMutableDictionary *)self->_profileViewForCells objectForKeyedSubscript:v4];

  return v5;
}

- (id)_getOrCreateProfileViewForCell:(id)a3
{
  v4 = a3;
  v5 = [(FAProfileViewTableViewDecorator *)self _profileViewForCell:v4];

  if (v5)
  {
    v6 = [(FAProfileViewTableViewDecorator *)self _profileViewForCell:v4];
    goto LABEL_18;
  }

  v7 = MEMORY[0x277D755B8];
  v8 = [(FAProfilePictureStore *)self->_pictureStore profilePictureForFamilyMember:self->_familyMember pictureDiameter:60.0];
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v10 = [v7 imageWithData:v8 scale:?];

  v11 = [(FAFamilyMember *)self->_familyMember fullName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [(FAFamilyMember *)self->_familyMember appleID];

    familyMember = self->_familyMember;
    if (v14)
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
  v17 = [MEMORY[0x277CCA968] fa_standardFormatter];
  [v17 setFormattingContext:5];
  v18 = [(FAFamilyMember *)self->_familyMember joinedDate];

  v19 = self->_familyMember;
  if (v18)
  {
    v20 = [(FAFamilyMember *)v19 joinedDate];
    v21 = [v17 stringFromDate:v20];

    v22 = [(FAFamilyMember *)self->_familyMember joinedDate];
    v23 = [v22 isDateRelative];

    v24 = MEMORY[0x277CCACA8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = v25;
    v27 = @"JOINED_DATE_ABSOLUTE";
    v28 = @"JOINED_DATE_RELATIVE";
LABEL_13:
    if (v23)
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

  v29 = [(FAFamilyMember *)v19 invitationDate];

  if (v29)
  {
    v30 = [(FAFamilyMember *)self->_familyMember invitationDate];
    v21 = [v17 stringFromDate:v30];

    v31 = [(FAFamilyMember *)self->_familyMember invitationDate];
    v23 = [v31 isDateRelative];

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
  v35 = [(FAProfileViewTableViewDecorator *)self _keyForCell:v4];
  [(NSMutableDictionary *)self->_profileViewForCells setObject:v6 forKeyedSubscript:v35];

LABEL_18:

  return v6;
}

- (void)_addProfileViewToCell:(id)a3
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FAProfileViewTableViewDecorator *)self _profileViewForCell:v4];
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

    v6 = [(FAProfileViewTableViewDecorator *)self _getOrCreateProfileViewForCell:v4];
    v8 = [v4 contentView];
    [v8 addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    v27 = [v4 contentView];
    v26 = [v27 topAnchor];
    v25 = [v6 topAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [v4 contentView];
    v22 = [v23 leftAnchor];
    v21 = [v6 leftAnchor];
    v19 = [v22 constraintEqualToAnchor:v21];
    v28[1] = v19;
    v18 = [v4 contentView];
    v17 = [v18 rightAnchor];
    v9 = [v6 rightAnchor];
    v10 = [v17 constraintEqualToAnchor:v9];
    v28[2] = v10;
    v11 = [v4 contentView];
    v12 = [v11 bottomAnchor];
    v13 = [v6 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v28[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v20 activateConstraints:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeProfileViewFromCell:(id)a3
{
  v4 = a3;
  v6 = [(FAProfileViewTableViewDecorator *)self _profileViewForCell:v4];
  v5 = [(FAProfileViewTableViewDecorator *)self _keyForCell:v4];

  [v6 removeFromSuperview];
  [(NSMutableDictionary *)self->_profileViewForCells setObject:0 forKeyedSubscript:v5];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(FATableViewDecorator *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(FATableViewDecorator *)self delegate];
    v10 = [v9 tableView:v6 viewForHeaderInSection:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(FATableViewDecorator *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(FATableViewDecorator *)self delegate];
    [v9 tableView:v6 heightForHeaderInSection:a4];
    v11 = v10;
  }

  else
  {
    [v6 rowHeight];
    v11 = v12;
  }

  return v11;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 || [v6 numberOfRowsInSection:0])
  {
    v8 = [(FATableViewDecorator *)self delegate];
    v9 = objc_opt_respondsToSelector();

    v10 = 0.0;
    if (v9)
    {
      v11 = [(FATableViewDecorator *)self delegate];
      [v11 tableView:v7 heightForFooterInSection:a4];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FATableViewDecorator *)self dataSource];
  v9 = [v8 tableView:v7 cellForRowAtIndexPath:v6];

  v10 = [(RUITableView *)self->_remoteTableViewController objectModelRowForIndexPath:v6];

  v11 = [v10 attributes];
  v12 = [v11 objectForKeyedSubscript:@"familyAction"];

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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RUITableView *)self->_remoteTableViewController objectModelRowForIndexPath:v7];
  v9 = [v8 attributes];
  v10 = [v9 objectForKeyedSubscript:@"familyAction"];

  if ([v10 isEqualToString:@"InjectProfileView"])
  {
    [MEMORY[0x277CECA98] desiredHeight];
LABEL_6:
    v16 = v11;
    goto LABEL_7;
  }

  v12 = [(FATableViewDecorator *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    [v6 rowHeight];
    goto LABEL_6;
  }

  v14 = [(FATableViewDecorator *)self delegate];
  [v14 tableView:v6 heightForRowAtIndexPath:v7];
  v16 = v15;

LABEL_7:
  return v16;
}

@end