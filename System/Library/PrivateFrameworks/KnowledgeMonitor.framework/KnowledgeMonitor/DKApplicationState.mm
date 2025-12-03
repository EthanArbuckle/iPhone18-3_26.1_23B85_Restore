@interface DKApplicationState
- (DKApplicationState)initWithDisplayType:(unint64_t)type element:(id)element;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation DKApplicationState

- (DKApplicationState)initWithDisplayType:(unint64_t)type element:(id)element
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = DKApplicationState;
  v7 = [(DKApplicationState *)&v15 init];
  if (v7)
  {
    bundleIdentifier = [elementCopy bundleIdentifier];
    v9 = bundleIdentifier;
    if (bundleIdentifier)
    {
      identifier = bundleIdentifier;
    }

    else
    {
      identifier = [elementCopy identifier];
    }

    v11 = identifier;

    if ([&unk_2838F77C0 containsObject:v11])
    {

      v11 = &stru_2838F0870;
    }

    v12 = [(__CFString *)v11 copy];
    application = v7->_application;
    v7->_application = v12;

    v7->_level = [elementCopy level];
    v7->_zIndex = [elementCopy zOrderIndex];
    v7->_hasKeyboardFocus = [elementCopy hasKeyboardFocus];
    v7->_role = [elementCopy layoutRole];
    v7->_displayType = type;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = @"False";
  if (self->_hasKeyboardFocus)
  {
    v4 = @"True";
  }

  role = self->_role;
  v6 = [v3 initWithFormat:@"<DKApplicationState: %@ lvl:%zd zind:%zd keyb:%@ role:%zd dt:%zd>", *&self->_application, self->_zIndex, v4, role, self->_displayType];

  return v6;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  level = [compareCopy level];
  level2 = [(DKApplicationState *)self level];
  v7 = level == level2;
  if (level < level2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v7)
  {
    zIndex = self->_zIndex;
    zIndex = [compareCopy zIndex];
    v11 = zIndex == zIndex;
    v8 = zIndex < zIndex ? -1 : 1;
    if (v11)
    {
      hasKeyboardFocus = [compareCopy hasKeyboardFocus];
      hasKeyboardFocus = self->_hasKeyboardFocus;
      v8 = hasKeyboardFocus < hasKeyboardFocus ? -1 : 1;
      if (hasKeyboardFocus == hasKeyboardFocus)
      {
        role = [compareCopy role];
        role = self->_role;
        v8 = role < role ? -1 : 1;
        if (role == role)
        {
          displayType = self->_displayType;
          displayType = [compareCopy displayType];
          v18 = -1;
          if (displayType >= displayType)
          {
            v18 = 1;
          }

          if (displayType == displayType)
          {
            v8 = 0;
          }

          else
          {
            v8 = v18;
          }
        }
      }
    }
  }

  return v8;
}

@end