@interface CAMExpandingControlMenuItem
+ (id)_menuItemWithState:(id)state subtitle:(id)subtitle selectedSubtitle:(id)selectedSubtitle configuration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItem:(id)item;
@end

@implementation CAMExpandingControlMenuItem

+ (id)_menuItemWithState:(id)state subtitle:(id)subtitle selectedSubtitle:(id)selectedSubtitle configuration:(id)configuration
{
  stateCopy = state;
  subtitleCopy = subtitle;
  configurationCopy = configuration;
  selectedSubtitleCopy = selectedSubtitle;
  v13 = objc_alloc_init(objc_opt_class());
  v14 = *(v13 + 1);
  *(v13 + 1) = stateCopy;
  v15 = stateCopy;

  v16 = *(v13 + 2);
  *(v13 + 2) = subtitleCopy;
  v17 = subtitleCopy;

  if (selectedSubtitleCopy)
  {
    v18 = selectedSubtitleCopy;
  }

  else
  {
    v18 = v17;
  }

  objc_storeStrong(v13 + 3, v18);
  v19 = [configurationCopy copy];

  v20 = *(v13 + 4);
  *(v13 + 4) = v19;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CAMExpandingControlMenuItem *)self isEqualToItem:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    if (itemCopy == self)
    {
      v14 = 1;
    }

    else
    {
      state = [(CAMExpandingControlMenuItem *)self state];
      state2 = [(CAMExpandingControlMenuItem *)v5 state];
      if ([state isEqualToValue:state2])
      {
        subtitle = [(CAMExpandingControlMenuItem *)self subtitle];
        subtitle2 = [(CAMExpandingControlMenuItem *)v5 subtitle];
        if ([subtitle isEqualToString:subtitle2])
        {
          selectedSubtitle = [(CAMExpandingControlMenuItem *)self selectedSubtitle];
          selectedSubtitle2 = [(CAMExpandingControlMenuItem *)v5 selectedSubtitle];
          if ([selectedSubtitle isEqualToString:selectedSubtitle2])
          {
            _configuration = [(CAMExpandingControlMenuItem *)self _configuration];
            _configuration2 = [(CAMExpandingControlMenuItem *)v5 _configuration];
            v14 = [_configuration isEqualToConfiguration:_configuration2];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end