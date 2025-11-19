@interface DKApplicationState
- (DKApplicationState)initWithDisplayType:(unint64_t)a3 element:(id)a4;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation DKApplicationState

- (DKApplicationState)initWithDisplayType:(unint64_t)a3 element:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = DKApplicationState;
  v7 = [(DKApplicationState *)&v15 init];
  if (v7)
  {
    v8 = [v6 bundleIdentifier];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v6 identifier];
    }

    v11 = v10;

    if ([&unk_2838F77C0 containsObject:v11])
    {

      v11 = &stru_2838F0870;
    }

    v12 = [(__CFString *)v11 copy];
    application = v7->_application;
    v7->_application = v12;

    v7->_level = [v6 level];
    v7->_zIndex = [v6 zOrderIndex];
    v7->_hasKeyboardFocus = [v6 hasKeyboardFocus];
    v7->_role = [v6 layoutRole];
    v7->_displayType = a3;
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [v4 level];
  v6 = [(DKApplicationState *)self level];
  v7 = v5 == v6;
  if (v5 < v6)
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
    v10 = [v4 zIndex];
    v11 = zIndex == v10;
    v8 = zIndex < v10 ? -1 : 1;
    if (v11)
    {
      v12 = [v4 hasKeyboardFocus];
      hasKeyboardFocus = self->_hasKeyboardFocus;
      v8 = v12 < hasKeyboardFocus ? -1 : 1;
      if (v12 == hasKeyboardFocus)
      {
        v14 = [v4 role];
        role = self->_role;
        v8 = v14 < role ? -1 : 1;
        if (v14 == role)
        {
          displayType = self->_displayType;
          v17 = [v4 displayType];
          v18 = -1;
          if (displayType >= v17)
          {
            v18 = 1;
          }

          if (displayType == v17)
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