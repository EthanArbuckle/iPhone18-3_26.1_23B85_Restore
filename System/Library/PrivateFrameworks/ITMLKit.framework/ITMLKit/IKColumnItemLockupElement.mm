@interface IKColumnItemLockupElement
- (BOOL)hasSeparator;
- (BOOL)isWatchlisted;
- (BOOL)onlyVisibleOnColumnHighlight;
- (IKImageElement)image;
- (IKTextBadgeAttachment)subtitleBadge;
- (IKTextBadgeAttachment)titleBadge;
- (IKTextElement)secondarySubtitle;
- (IKTextElement)subtitle;
- (IKTextElement)title;
- (NSArray)images;
- (NSArray)textElements;
- (NSString)columnItemType;
- (void)_computeTitle:(id *)title subtitle:(id *)subtitle secondarySubtitle:(id *)secondarySubtitle unstyledTextElements:(id *)elements;
@end

@implementation IKColumnItemLockupElement

- (NSString)columnItemType
{
  attributes = [(IKViewElement *)self attributes];
  v4 = [attributes objectForKey:@"type"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 copy];
  }

  else
  {
    style = [(IKViewElement *)self style];
    columnItemType = [style columnItemType];
    v6 = [columnItemType copy];
  }

  return v6;
}

- (IKTextElement)title
{
  v4 = 0;
  [(IKColumnItemLockupElement *)self _computeTitle:&v4 subtitle:0 secondarySubtitle:0 unstyledTextElements:0];
  v2 = v4;

  return v2;
}

- (IKTextElement)subtitle
{
  v4 = 0;
  [(IKColumnItemLockupElement *)self _computeTitle:0 subtitle:&v4 secondarySubtitle:0 unstyledTextElements:0];
  v2 = v4;

  return v2;
}

- (IKTextElement)secondarySubtitle
{
  v4 = 0;
  [(IKColumnItemLockupElement *)self _computeTitle:0 subtitle:0 secondarySubtitle:&v4 unstyledTextElements:0];
  v2 = v4;

  return v2;
}

- (IKImageElement)image
{
  images = [(IKColumnItemLockupElement *)self images];
  firstObject = [images firstObject];

  return firstObject;
}

- (NSArray)images
{
  v2 = [(IKViewElement *)self childElementsWithType:49];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_20];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (IKTextBadgeAttachment)titleBadge
{
  title = [(IKColumnItemLockupElement *)self title];
  badges = [title badges];
  firstObject = [badges firstObject];

  return firstObject;
}

- (IKTextBadgeAttachment)subtitleBadge
{
  subtitle = [(IKColumnItemLockupElement *)self subtitle];
  badges = [subtitle badges];
  firstObject = [badges firstObject];

  return firstObject;
}

- (NSArray)textElements
{
  v4 = 0;
  [(IKColumnItemLockupElement *)self _computeTitle:0 subtitle:0 secondarySubtitle:0 unstyledTextElements:&v4];
  v2 = v4;

  return v2;
}

- (BOOL)hasSeparator
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"separator"];
  ik_attributeBoolValue = [v3 ik_attributeBoolValue];

  return ik_attributeBoolValue;
}

- (BOOL)isWatchlisted
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"watchlisted"];
  ik_attributeBoolValue = [v3 ik_attributeBoolValue];

  return ik_attributeBoolValue;
}

- (BOOL)onlyVisibleOnColumnHighlight
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"onlyVisibleOnColumnHighlight"];
  ik_attributeBoolValue = [v3 ik_attributeBoolValue];

  return ik_attributeBoolValue;
}

- (void)_computeTitle:(id *)title subtitle:(id *)subtitle secondarySubtitle:(id *)secondarySubtitle unstyledTextElements:(id *)elements
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = [(IKViewElement *)self childElementsWithType:138];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        if ([v17 textStyle] == 1)
        {
          v18 = v17;

          v14 = v18;
        }

        else if ([v17 textStyle] == 2)
        {
          v19 = v17;

          v13 = v19;
        }

        else if (![v17 textStyle])
        {
          [v9 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v14 | v13)
  {
    v20 = 0;
    titleCopy2 = title;
    subtitleCopy2 = subtitle;
    if (!title)
    {
      goto LABEL_28;
    }

LABEL_27:
    v23 = v14;
    *titleCopy2 = v14;
    goto LABEL_28;
  }

  titleCopy2 = title;
  subtitleCopy2 = subtitle;
  if ([v9 count])
  {
    v14 = [v9 objectAtIndexedSubscript:0];
    if ([v9 count] < 2)
    {
      v20 = 0;
      v13 = 0;
      if (!title)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v13 = [v9 objectAtIndexedSubscript:1];
    if ([v9 count] < 3)
    {
      v20 = 0;
      if (title)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = [v9 objectAtIndexedSubscript:2];
      if (title)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v20 = 0;
    v13 = 0;
    v14 = 0;
    if (title)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  if (subtitleCopy2)
  {
    v24 = v13;
    *subtitleCopy2 = v13;
  }

  if (secondarySubtitle)
  {
    v25 = v20;
    *secondarySubtitle = v20;
  }

  if (elements)
  {
    *elements = [v9 copy];
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end