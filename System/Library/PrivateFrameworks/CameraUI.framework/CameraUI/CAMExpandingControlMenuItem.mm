@interface CAMExpandingControlMenuItem
+ (id)_menuItemWithState:(id)a3 subtitle:(id)a4 selectedSubtitle:(id)a5 configuration:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItem:(id)a3;
@end

@implementation CAMExpandingControlMenuItem

+ (id)_menuItemWithState:(id)a3 subtitle:(id)a4 selectedSubtitle:(id)a5 configuration:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = objc_alloc_init(objc_opt_class());
  v14 = *(v13 + 1);
  *(v13 + 1) = v9;
  v15 = v9;

  v16 = *(v13 + 2);
  *(v13 + 2) = v10;
  v17 = v10;

  if (v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  objc_storeStrong(v13 + 3, v18);
  v19 = [v11 copy];

  v20 = *(v13 + 4);
  *(v13 + 4) = v19;

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CAMExpandingControlMenuItem *)self isEqualToItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v14 = 1;
    }

    else
    {
      v6 = [(CAMExpandingControlMenuItem *)self state];
      v7 = [(CAMExpandingControlMenuItem *)v5 state];
      if ([v6 isEqualToValue:v7])
      {
        v8 = [(CAMExpandingControlMenuItem *)self subtitle];
        v9 = [(CAMExpandingControlMenuItem *)v5 subtitle];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(CAMExpandingControlMenuItem *)self selectedSubtitle];
          v11 = [(CAMExpandingControlMenuItem *)v5 selectedSubtitle];
          if ([v10 isEqualToString:v11])
          {
            v12 = [(CAMExpandingControlMenuItem *)self _configuration];
            v13 = [(CAMExpandingControlMenuItem *)v5 _configuration];
            v14 = [v12 isEqualToConfiguration:v13];
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