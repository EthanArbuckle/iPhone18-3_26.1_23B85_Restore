@interface _UIShareTableStaticDataSource
- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (UITableView)tableView;
- (_UIShareTableStaticDataSource)init;
- (_UIShareTableStaticDataSource)initWithTableView:(id)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)defaultTarget;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 editActionsForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)target;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_toggleValueChanged:(id)a3;
- (void)_updateEstimatedHeightsForDynamicTypeChange;
- (void)menuWillHide:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
@end

@implementation _UIShareTableStaticDataSource

- (_UIShareTableStaticDataSource)initWithTableView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIShareTableStaticDataSource;
  v5 = [(_UIShareTableStaticDataSource *)&v8 init];
  if (v5)
  {
    [v4 setDelegate:v5];
    [v4 setDataSource:v5];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"action"];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"link"];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"toggle"];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"radio"];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"centered"];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"subtitle"];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"header"];
    [v4 setRowHeight:UITableViewAutomaticDimension];
    [v4 setSectionFooterHeight:UITableViewAutomaticDimension];
    [v4 setSectionHeaderHeight:UITableViewAutomaticDimension];
    [(_UIShareTableStaticDataSource *)v5 setTableView:v4];
    [(_UIShareTableStaticDataSource *)v5 _updateEstimatedHeightsForDynamicTypeChange];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_updateEstimatedHeightsForDynamicTypeChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

- (void)_updateEstimatedHeightsForDynamicTypeChange
{
  v3 = +[UIFontMetrics defaultMetrics];
  [v3 scaledValueForValue:44.0];
  v5 = v4;

  v6 = [(_UIShareTableStaticDataSource *)self tableView];
  [v6 setEstimatedRowHeight:v5];
  [v6 setEstimatedSectionHeaderHeight:v5];
  [v6 setEstimatedSectionFooterHeight:v5];
}

- (_UIShareTableStaticDataSource)init
{
  v3 = objc_opt_class();
  v4 = [NSString stringWithUTF8String:"[_UIShareTableStaticDataSource init]"];
  [NSException raise:NSInvalidArgumentException format:@"[%@ %@] is unavailable, use the one of the designated initializers instead.", v3, v4];

  return 0;
}

- (id)target
{
  v2 = self;
  v3 = [(_UIShareTableStaticDataSource *)self defaultTarget];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(_UIShareTableStaticDataSource *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(_UIShareTableStaticDataSource *)self sections];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 objectForKey:@"items"];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIShareTableStaticDataSource *)self sections];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "section")}];

  v10 = [v9 objectForKey:@"items"];
  v11 = [v10 objectAtIndex:{objc_msgSend(v7, "row")}];

  v12 = [v11 objectForKey:@"type"];
  v13 = [v11 objectForKey:@"celltype"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;

  v17 = [v6 dequeueReusableCellWithIdentifier:v16];
  objc_opt_class();
  v116 = v7;
  if (objc_opt_isKindOfClass())
  {
    v18 = v6;
    v19 = v16;
    v20 = v12;
    v21 = v17;
    v22 = [v11 objectForKey:@"shareElementImage"];
    [v21 sharedItemThumnail];
    v24 = v23 = v9;
    [v24 setImage:v22];

    v25 = [v11 objectForKey:@"title"];
    v26 = [v21 sharedItemLabel];
    [v26 setText:v25];

    v27 = [v11 objectForKey:@"detail"];
    v28 = [v21 sharedWithinLabel];
    [v28 setText:v27];

    v29 = [v11 objectForKey:@"sharedByModifiedBy"];
    v30 = [v21 sharedByModifiedByLabel];
    [v30 setText:v29];

    v31 = [v11 objectForKey:@"shareElementBadge"];
    v32 = +[NSNull null];
    v33 = v11;
    if (v31 == v32)
    {
      v34 = 0;
    }

    else
    {
      v34 = v31;
    }

    v35 = v21;
    v12 = v20;
    v36 = [v35 sharedItemBadge];
    v37 = v34;
    v11 = v33;
    [v36 setImage:v37];

    v16 = v19;
    v6 = v18;

    goto LABEL_55;
  }

  v38 = [v11 objectForKey:@"target"];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = [(_UIShareTableStaticDataSource *)self target];
  }

  v41 = v40;

  if ([v17 conformsToProtocol:&OBJC_PROTOCOL____UIShareTableValueCell])
  {
    v42 = [v11 objectForKey:@"value"];
    [v17 setRepresentedValue:v42];
  }

  v114 = v41;
  v43 = [v11 objectForKey:@"enabled"];
  v112 = v43;
  v44 = v9;
  if (v43)
  {
    v45 = [v43 BOOLValue];
  }

  else
  {
    v45 = 1;
  }

  v46 = [v17 textLabel];
  [v46 setEnabled:v45];

  v47 = [v17 textLabel];
  [v47 setLineBreakMode:0];

  v48 = [v17 textLabel];
  [v48 setNumberOfLines:3];

  v49 = [v17 detailTextLabel];
  [v49 setEnabled:v45];

  v50 = [v11 objectForKey:@"title"];
  v51 = [v17 textLabel];
  [v51 setText:v50];

  v52 = [v11 objectForKey:@"axIdentifier"];
  [v17 setAccessibilityIdentifier:v52];

  if ([v12 isEqual:@"radio"])
  {
    v53 = [v11 objectForKey:@"key"];
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_100010D7C;
    v117[3] = &unk_10004CE80;
    v118 = v114;
    v115 = v53;
    v119 = v115;
    v54 = objc_retainBlock(v117);
    v55 = [v11 objectForKey:@"value"];
    v113 = v54;
    LODWORD(v54) = (v54[2])(v54, v55);

    if (v54)
    {
      [v17 setAccessoryView:0];
      [v17 setAccessoryType:3];
      v23 = v44;
    }

    else
    {
      v107 = v16;
      v110 = v12;
      v60 = [v44 objectForKey:@"items"];
      if ([v60 count])
      {
        for (i = 0; i < [v60 count]; ++i)
        {
          v62 = [v60 objectAtIndex:i];
          v63 = [v62 objectForKey:@"type"];
          if ([v63 isEqual:@"radio"])
          {
            v64 = [v62 objectForKey:@"key"];
            v65 = [v64 isEqual:v115];

            if (v65)
            {
              v66 = [v62 valueForKey:@"value"];
              v67 = (v113)[2](v113, v66);

              if (v67)
              {

                [v17 setAccessoryType:0];
                [v17 setAccessoryView:0];
                goto LABEL_32;
              }
            }
          }

          else
          {
          }
        }
      }

      [v17 setAccessoryType:0];
      v68 = [UIImageView alloc];
      v69 = [UIImage imageNamed:@"IndeterminateDash"];
      v70 = [v68 initWithImage:v69];
      [v17 setAccessoryView:v70];

LABEL_32:
      v12 = v110;
      v23 = v44;
      v16 = v107;
    }

    v71 = v114;
    v72 = [v11 objectForKey:@"detail"];
    if (v72)
    {
      v73 = [v17 detailTextLabel];
      [v73 setText:v72];

      v74 = +[UIColor secondaryLabelColor];
      [v17 detailTextLabel];
      v75 = v6;
      v76 = v16;
      v78 = v77 = v11;
      [v78 setTextColor:v74];

      v11 = v77;
      v16 = v76;
      v6 = v75;
      v71 = v114;
    }

    goto LABEL_54;
  }

  v23 = v44;
  if (![v12 isEqual:@"action"])
  {
    v71 = v114;
    if ([v12 isEqual:@"toggle"])
    {
      v108 = v16;
      v79 = v12;
      v80 = objc_alloc_init(UISwitch);
      [v17 setAccessoryView:v80];
      v81 = [v11 objectForKey:@"action"];

      if (v81)
      {
        v82 = [v11 objectForKey:@"action"];
        v83 = NSSelectorFromString(v82);

        v84 = v80;
        v85 = v114;
        v86 = v83;
      }

      else
      {
        objc_setAssociatedObject(v80, &unk_100060300, v11, 0x301);
        v86 = "_toggleValueChanged:";
        v84 = v80;
        v85 = self;
      }

      [v84 addTarget:v85 action:v86 forControlEvents:4096];
      v100 = [v11 objectForKey:@"toggleCreationCallback"];

      if (v100)
      {
        v101 = [v11 objectForKey:@"toggleCreationCallback"];
        v102 = NSSelectorFromString(v101);

        if (objc_opt_respondsToSelector())
        {
          ([(_UIShareTableStaticDataSource *)v114 methodForSelector:v102])(v114, v102, v80);
        }
      }

      v103 = [v11 objectForKey:@"key"];
      v104 = [(_UIShareTableStaticDataSource *)v114 valueForKey:v103];
      [v80 setOn:{objc_msgSend(v104, "BOOLValue")}];

      v12 = v79;
      v16 = v108;
    }

    goto LABEL_54;
  }

  v109 = v12;
  v56 = [v11 objectForKey:@"detail"];
  if (v56)
  {
    v57 = [v17 detailTextLabel];
    [v57 setText:v56];

    v58 = +[UIColor secondaryLabelColor];
    v59 = [v17 detailTextLabel];
    [v59 setTextColor:v58];

LABEL_40:
    v89 = [v11 objectForKey:@"action"];

    [v17 setAccessoryType:v89 != 0];
    goto LABEL_41;
  }

  v87 = [v17 textLabel];
  [v87 setTextAlignment:1];

  v88 = [v17 detailTextLabel];
  [v88 setText:0];

  if (v16 != @"centered")
  {
    goto LABEL_40;
  }

LABEL_41:
  v111 = v6;
  v90 = [v11 objectForKey:@"accessibilityLabel"];
  if (v90)
  {
    [v17 setIsAccessibilityElement:1];
    [v17 setAccessibilityLabel:v90];
  }

  v91 = v16;
  v92 = [v11 objectForKey:@"accessibilityHint"];
  if (v92)
  {
    [v17 setIsAccessibilityElement:1];
    [v17 setAccessibilityHint:v92];
  }

  v93 = v11;
  v94 = [v11 objectForKey:@"destructive"];
  v95 = [v94 BOOLValue];
  v96 = [v17 textLabel];
  v97 = v96;
  if (v95)
  {
    [v96 _setTextColorFollowsTintColor:0];

    v98 = +[UIColor systemRedColor];
    v99 = [v17 textLabel];
    [v99 setTextColor:v98];
  }

  else
  {
    [v96 setTextColor:0];

    v98 = [v17 textLabel];
    [v98 _setTextColorFollowsTintColor:v56 == 0];
  }

  v23 = v44;
  v11 = v93;
  v16 = v91;
  v12 = v109;
  v6 = v111;
  v71 = v114;
LABEL_54:
  v105 = v17;

LABEL_55:

  return v17;
}

- (void)_toggleValueChanged:(id)a3
{
  v4 = a3;
  v12 = objc_getAssociatedObject(v4, &unk_100060300);
  v5 = [v12 objectForKey:@"target"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(_UIShareTableStaticDataSource *)self target];
  }

  v8 = v7;

  v9 = [v4 isOn];
  v10 = [NSNumber numberWithBool:v9];
  v11 = [v12 objectForKey:@"key"];
  [v8 setValue:v10 forKey:v11];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIShareTableStaticDataSource *)self sections];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "section")}];

  v8 = [v7 objectForKey:@"items"];
  v9 = [v5 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v10 objectForKey:@"type"];
  if (([v11 isEqual:@"radio"] & 1) == 0)
  {
    if ([v11 isEqual:@"action"])
    {
      v12 = [v10 objectForKey:@"action"];
      if (v12)
      {

        goto LABEL_6;
      }

      if ([v11 isEqual:@"link"])
      {
        goto LABEL_6;
      }
    }

    else if ([v11 isEqual:@"link"])
    {
      goto LABEL_6;
    }

    v15 = 0;
    goto LABEL_10;
  }

LABEL_6:
  v13 = [v10 objectForKey:@"enabled"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

LABEL_10:
  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v46 = a3;
  v6 = a4;
  v7 = [(_UIShareTableStaticDataSource *)self sections];
  v8 = [v7 objectAtIndex:{objc_msgSend(v6, "section")}];

  v9 = [v8 objectForKey:@"items"];
  v45 = v6;
  v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

  v11 = [v10 objectForKey:@"type"];
  v12 = [v10 objectForKey:@"target"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(_UIShareTableStaticDataSource *)self target];
  }

  v15 = v14;

  if ([v11 isEqual:@"radio"])
  {
    v44 = v11;
    v16 = [v10 objectForKey:@"key"];
    v43 = v10;
    v41 = [v10 objectForKey:@"value"];
    v42 = v15;
    [v15 setValue:? forKey:?];
    v17 = [v8 objectForKey:@"items"];
    if ([v17 count])
    {
      v18 = 0;
      while (1)
      {
        v19 = [v17 objectAtIndex:v18];
        v20 = [v19 objectForKey:@"type"];
        if (![v20 isEqual:@"radio"])
        {
          goto LABEL_10;
        }

        v21 = [v19 objectForKey:@"key"];
        v22 = [v21 isEqual:v16];

        if (v22)
        {
          break;
        }

LABEL_11:

        if (++v18 >= [v17 count])
        {
          goto LABEL_12;
        }
      }

      v20 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v18, [v45 section]);
      v48 = v20;
      v23 = [NSArray arrayWithObjects:&v48 count:1];
      [v46 reloadRowsAtIndexPaths:v23 withRowAnimation:100];

LABEL_10:
      goto LABEL_11;
    }

LABEL_12:

    v10 = v43;
    v11 = v44;
    v15 = v42;
  }

  else if ([v11 isEqual:@"action"])
  {
    v24 = [v10 objectForKey:@"action"];
    v25 = NSSelectorFromString(v24);

    v26 = [v10 objectForKey:@"param"];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = [v46 cellForRowAtIndexPath:v45];
    }

    v40 = v28;

    [v15 performSelector:v25 withObject:v40];
  }

  else if ([v11 isEqual:@"link"])
  {
    [v46 cellForRowAtIndexPath:v6];
    v30 = v29 = v15;
    v31 = [v30 window];
    [v31 makeKeyWindow];

    [v30 becomeFirstResponder];
    v32 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v33 = [v32 localizedStringForKey:@"COPY_LINK_ACTION_TEXT" value:@"Copy Link" table:@"Localizable"];

    v34 = [[UIMenuItem alloc] initWithTitle:v33 action:"copyLink:"];
    v35 = +[UIMenuController sharedMenuController];
    v47 = v34;
    v36 = [NSArray arrayWithObjects:&v47 count:1];
    [v35 setMenuItems:v36];

    v37 = +[UIMenuController sharedMenuController];
    [v30 bounds];
    [v37 setTargetRect:v30 inView:?];

    v38 = +[UIMenuController sharedMenuController];
    [v38 setMenuVisible:1 animated:1];

    v39 = +[NSNotificationCenter defaultCenter];
    [v39 addObserver:self selector:"menuWillHide:" name:UIMenuControllerWillHideMenuNotification object:0];

    v15 = v29;
  }
}

- (void)menuWillHide:(id)a3
{
  v6 = [(_UIShareTableStaticDataSource *)self tableView];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIMenuControllerWillHideMenuNotification object:0];

  v5 = [v6 indexPathForSelectedRow];
  [v6 deselectRowAtIndexPath:v5 animated:1];
}

- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  v7 = [a3 cellForRowAtIndexPath:a5];
  if ("copyLink:" == a4 || "copy:" == a4)
  {
    v9 = objc_opt_respondsToSelector();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(_UIShareTableStaticDataSource *)self sections];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 objectForKey:@"title"];
  v8 = [v7 localizedUppercaseString];

  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(_UIShareTableStaticDataSource *)self sections];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 objectForKey:@"title"];
  if (v7)
  {
  }

  else
  {
    v8 = [v6 objectForKey:@"hheight"];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v8 = objc_alloc_init(UITableViewHeaderFooterView);
  v9 = +[UIColor systemGrayColor];
  v10 = [v8 textLabel];
  [v10 setTextColor:v9];

LABEL_5:

  return v8;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIShareTableStaticDataSource *)self sections];
  v8 = [v7 objectAtIndex:a4];

  v9 = [v8 objectForKey:@"footer"];
  if (v9)
  {

LABEL_4:
    v10 = objc_alloc_init(_UIShareHeaderFooterView);
    v11 = [v6 backgroundColor];
    v12 = [(_UIShareHeaderFooterView *)v10 contentView];
    [v12 setBackgroundColor:v11];

    v13 = [v8 objectForKey:@"footer"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v15 = [(_UIShareHeaderFooterView *)v10 centeredTitleView];
    v16 = v15;
    if (isKindOfClass)
    {
      [v15 setAttributedText:v13];
    }

    else
    {
      [v15 setText:v13];
    }

    goto LABEL_8;
  }

  v10 = [v8 objectForKey:@"fheight"];

  if (v10)
  {
    goto LABEL_4;
  }

LABEL_8:

  return v10;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v12 = a4;
  v6 = a3;
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v8 = [v12 textLabel];
  [v8 setFont:v7];

  v9 = [v12 textLabel];
  [v9 setAdjustsFontForContentSizeCategory:1];

  v10 = [v6 backgroundColor];

  v11 = [v12 contentView];
  [v11 setBackgroundColor:v10];
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(_UIShareTableStaticDataSource *)self sections];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 objectForKey:@"hheight"];
  v8 = v7;
  if (v7)
  {
    [v7 floatValue];
    if (v9 == 0.0)
    {
      v11 = 2.22507386e-308;
    }

    else
    {
      [v8 floatValue];
      v11 = v10;
    }
  }

  else
  {
    v11 = UITableViewAutomaticDimension;
  }

  return v11;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(_UIShareTableStaticDataSource *)self sections];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 objectForKey:@"fheight"];
  v8 = v7;
  if (v7)
  {
    [v7 floatValue];
    if (v9 == 0.0)
    {
      v11 = 2.22507386e-308;
    }

    else
    {
      [v8 floatValue];
      v11 = v10;
    }
  }

  else
  {
    v11 = UITableViewAutomaticDimension;
  }

  return v11;
}

- (id)tableView:(id)a3 editActionsForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIShareTableStaticDataSource *)self sections];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "section")}];

  v10 = [v9 objectForKey:@"items"];
  v11 = [v10 objectAtIndex:{objc_msgSend(v7, "row")}];

  v12 = [v11 objectForKey:@"target"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(_UIShareTableStaticDataSource *)self target];
  }

  v15 = v14;

  v16 = [v11 objectForKey:@"remact"];

  if (v16)
  {
    v17 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v18 = [v17 localizedStringForKey:@"Remove" value:@"Remove" table:@"Localizable"];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100011E2C;
    v25 = &unk_10004CEA8;
    v26 = v11;
    v27 = v6;
    v28 = v7;
    v29 = v15;
    v19 = [UITableViewRowAction rowActionWithStyle:0 title:v18 handler:&v22];

    v30 = v19;
    v20 = [NSArray arrayWithObjects:&v30 count:1, v22, v23, v24, v25];
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)defaultTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultTarget);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end