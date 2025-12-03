@interface CertInfoCertificateDetailsView
- (CertInfoCertificateDetailsView)initWithFrame:(CGRect)frame certificateProperties:(id)properties;
- (id)_cellInfosForSection:(id)section;
- (id)_detailForIndexPath:(id)path;
- (id)_sectionInfoForCertSection:(id)section title:(id)title;
- (id)_sectionsFromProperties:(id)properties;
- (id)_titleForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)appendInfoFromCertView:(id)view;
- (void)layoutSubviews;
@end

@implementation CertInfoCertificateDetailsView

- (void)appendInfoFromCertView:(id)view
{
  if (view)
  {
    v4 = *(view + 52);
    if (v4)
    {
      tableSections = self->_tableSections;
      v7 = v4;
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
      [(NSMutableArray *)tableSections addObject:dictionary];

      [(NSMutableArray *)self->_tableSections addObjectsFromArray:v7];
    }
  }
}

- (id)_cellInfosForSection:(id)section
{
  v25 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = sectionCopy;
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
          [array addObjectsFromArray:v13];
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
          [array addObject:v15];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_sectionInfoForCertSection:(id)section title:(id)title
{
  v6 = MEMORY[0x277CBEAC0];
  titleCopy = title;
  v8 = [(CertInfoCertificateDetailsView *)self _cellInfosForSection:section];
  v9 = [v6 dictionaryWithObjectsAndKeys:{v8, @"cell infos", titleCopy, @"header title", 0}];

  return v9;
}

- (id)_sectionsFromProperties:(id)properties
{
  selfCopy = self;
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  array = [MEMORY[0x277CBEB18] array];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = propertiesCopy;
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
        v9 = [v8 objectForKey:{@"localized label", selfCopy}];
        v10 = [v8 objectForKey:@"type"];
        v11 = [v8 objectForKey:@"value"];
        if ([v10 isEqualToString:@"section"])
        {
          v12 = [(CertInfoCertificateDetailsView *)selfCopy _sectionInfoForCertSection:v11 title:v9];
          [array addObject:v12];
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
    v13 = [(CertInfoCertificateDetailsView *)selfCopy _sectionInfoForCertSection:v17 title:0];
    [array addObject:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (CertInfoCertificateDetailsView)initWithFrame:(CGRect)frame certificateProperties:(id)properties
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  propertiesCopy = properties;
  v18.receiver = self;
  v18.super_class = CertInfoCertificateDetailsView;
  height = [(CertInfoCertificateDetailsView *)&v18 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    v12 = [(CertInfoCertificateDetailsView *)height _sectionsFromProperties:propertiesCopy];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_tableSections count]<= section)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_tableSections objectAtIndex:section];
  v7 = [v6 objectForKey:@"cell infos"];
  v8 = [v7 count];

  return v8;
}

- (id)_titleForIndexPath:(id)path
{
  tableSections = self->_tableSections;
  pathCopy = path;
  v5 = -[NSMutableArray objectAtIndex:](tableSections, "objectAtIndex:", [pathCopy section]);
  v6 = [v5 objectForKey:@"cell infos"];
  v7 = [pathCopy row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 objectForKey:@"cell title"];

  return v9;
}

- (id)_detailForIndexPath:(id)path
{
  tableSections = self->_tableSections;
  pathCopy = path;
  v5 = -[NSMutableArray objectAtIndex:](tableSections, "objectAtIndex:", [pathCopy section]);
  v6 = [v5 objectForKey:@"cell infos"];
  v7 = [pathCopy row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 objectForKey:@"cell value"];

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(NSMutableArray *)self->_tableSections count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"CertificateTableCellReuseIdentifier"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"CertificateTableCellReuseIdentifier"];
    }

    textLabel = [v9 textLabel];
    v11 = [(CertInfoCertificateDetailsView *)self _titleForIndexPath:pathCopy];
    [textLabel setText:v11];

    detailTextLabel = [v9 detailTextLabel];
    v13 = [(CertInfoCertificateDetailsView *)self _detailForIndexPath:pathCopy];
    [detailTextLabel setText:v13];
  }

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_tableSections count]<= section)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_tableSections objectAtIndex:section];
    v7 = [v6 objectForKey:@"header title"];
  }

  return v7;
}

@end