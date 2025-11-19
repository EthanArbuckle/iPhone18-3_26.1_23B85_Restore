@interface CertInfoCertificateDetailsView
- (CertInfoCertificateDetailsView)initWithFrame:(CGRect)a3 certificateProperties:(id)a4;
- (id)_cellInfosForSection:(id)a3;
- (id)_detailForIndexPath:(id)a3;
- (id)_sectionInfoForCertSection:(id)a3 title:(id)a4;
- (id)_sectionsFromProperties:(id)a3;
- (id)_titleForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)appendInfoFromCertView:(id)a3;
- (void)layoutSubviews;
@end

@implementation CertInfoCertificateDetailsView

- (void)appendInfoFromCertView:(id)a3
{
  if (a3)
  {
    v4 = *(a3 + 52);
    if (v4)
    {
      tableSections = self->_tableSections;
      v7 = v4;
      v6 = [MEMORY[0x277CBEAC0] dictionary];
      [(NSMutableArray *)tableSections addObject:v6];

      [(NSMutableArray *)self->_tableSections addObjectsFromArray:v7];
    }
  }
}

- (id)_cellInfosForSection:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 objectForKey:@"localized label"];
        v11 = [v9 objectForKey:@"type"];
        v12 = [v9 objectForKey:@"value"];
        if ([v11 isEqualToString:@"section"])
        {
          v13 = [(CertInfoCertificateDetailsView *)self _cellInfosForSection:v12];
          [v4 addObjectsFromArray:v13];
        }

        else
        {
          if (([v11 isEqualToString:@"string"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"url"))
          {
            v14 = v12;
          }

          else
          {
            v14 = [v12 description];
          }

          v13 = v14;
          v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v10, @"cell title", v14, @"cell value", 0}];
          [v4 addObject:v15];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_sectionInfoForCertSection:(id)a3 title:(id)a4
{
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [(CertInfoCertificateDetailsView *)self _cellInfosForSection:a3];
  v9 = [v6 dictionaryWithObjectsAndKeys:{v8, @"cell infos", v7, @"header title", 0}];

  return v9;
}

- (id)_sectionsFromProperties:(id)a3
{
  v16 = self;
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = [MEMORY[0x277CBEB18] array];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 objectForKey:{@"localized label", v16}];
        v10 = [v8 objectForKey:@"type"];
        v11 = [v8 objectForKey:@"value"];
        if ([v10 isEqualToString:@"section"])
        {
          v12 = [(CertInfoCertificateDetailsView *)v16 _sectionInfoForCertSection:v11 title:v9];
          [v18 addObject:v12];
        }

        else
        {
          [v17 addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  if ([v17 count])
  {
    v13 = [(CertInfoCertificateDetailsView *)v16 _sectionInfoForCertSection:v17 title:0];
    [v18 addObject:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v18;
}

- (CertInfoCertificateDetailsView)initWithFrame:(CGRect)a3 certificateProperties:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CertInfoCertificateDetailsView;
  v10 = [(CertInfoCertificateDetailsView *)&v18 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v12 = [(CertInfoCertificateDetailsView *)v10 _sectionsFromProperties:v9];
    v13 = [v12 mutableCopy];
    tableSections = v11->_tableSections;
    v11->_tableSections = v13;

    v15 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{x, y, width, height}];
    tableView = v11->_tableView;
    v11->_tableView = v15;

    [(UITableView *)v11->_tableView setAllowsSelection:0];
    [(UITableView *)v11->_tableView setDataSource:v11];
    [(CertInfoCertificateDetailsView *)v11 addSubview:v11->_tableView];
  }

  return v11;
}

- (void)layoutSubviews
{
  [(CertInfoCertificateDetailsView *)self bounds];
  tableView = self->_tableView;

  [(UITableView *)tableView setFrame:?];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(NSMutableArray *)self->_tableSections count]<= a4)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_tableSections objectAtIndex:a4];
  v7 = [v6 objectForKey:@"cell infos"];
  v8 = [v7 count];

  return v8;
}

- (id)_titleForIndexPath:(id)a3
{
  tableSections = self->_tableSections;
  v4 = a3;
  v5 = -[NSMutableArray objectAtIndex:](tableSections, "objectAtIndex:", [v4 section]);
  v6 = [v5 objectForKey:@"cell infos"];
  v7 = [v4 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 objectForKey:@"cell title"];

  return v9;
}

- (id)_detailForIndexPath:(id)a3
{
  tableSections = self->_tableSections;
  v4 = a3;
  v5 = -[NSMutableArray objectAtIndex:](tableSections, "objectAtIndex:", [v4 section]);
  v6 = [v5 objectForKey:@"cell infos"];
  v7 = [v4 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 objectForKey:@"cell value"];

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 >= [(NSMutableArray *)self->_tableSections count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"CertificateTableCellReuseIdentifier"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"CertificateTableCellReuseIdentifier"];
    }

    v10 = [v9 textLabel];
    v11 = [(CertInfoCertificateDetailsView *)self _titleForIndexPath:v7];
    [v10 setText:v11];

    v12 = [v9 detailTextLabel];
    v13 = [(CertInfoCertificateDetailsView *)self _detailForIndexPath:v7];
    [v12 setText:v13];
  }

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(NSMutableArray *)self->_tableSections count]<= a4)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_tableSections objectAtIndex:a4];
    v7 = [v6 objectForKey:@"header title"];
  }

  return v7;
}

@end