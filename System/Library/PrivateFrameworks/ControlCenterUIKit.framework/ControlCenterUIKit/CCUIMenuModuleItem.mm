@interface CCUIMenuModuleItem
- (BOOL)isEqual:(id)a3;
- (BOOL)performAction;
- (CCUIMenuModuleItem)initWithTitle:(id)a3 identifier:(id)a4 image:(id)a5 handler:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation CCUIMenuModuleItem

- (CCUIMenuModuleItem)initWithTitle:(id)a3 identifier:(id)a4 image:(id)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CCUIMenuModuleItem;
  v15 = [(CCUIMenuModuleItem *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_identifier, a4);
    v17 = [v14 copy];
    handler = v16->_handler;
    v16->_handler = v17;

    v19 = [v13 copy];
    image = v16->_image;
    v16->_image = v19;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CCUIMenuModuleItem *)self identifier];
      v7 = [(CCUIMenuModuleItem *)v5 identifier];
      if (BSEqualObjects())
      {
        v8 = [(CCUIMenuModuleItem *)self title];
        v9 = [(CCUIMenuModuleItem *)v5 title];
        if (BSEqualObjects())
        {
          v10 = [(CCUIMenuModuleItem *)self image];
          v11 = [(CCUIMenuModuleItem *)v5 image];
          if (BSEqualObjects())
          {
            v12 = [(CCUIMenuModuleItem *)self subtitle];
            v15 = [(CCUIMenuModuleItem *)v5 subtitle];
            if (BSEqualObjects())
            {
              [(CCUIMenuModuleItem *)self isBusy];
              [(CCUIMenuModuleItem *)v5 isBusy];
              if (BSEqualBools() && ([(CCUIMenuModuleItem *)self isPlaceholder], [(CCUIMenuModuleItem *)v5 isPlaceholder], BSEqualBools()))
              {
                [(CCUIMenuModuleItem *)self isSelected];
                [(CCUIMenuModuleItem *)v5 isSelected];
                v13 = BSEqualBools();
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(CCUIMenuModuleItem *)self identifier];
  v5 = [v3 appendObject:v4];

  v6 = [(CCUIMenuModuleItem *)self title];
  v7 = [v3 appendObject:v6];

  v8 = [(CCUIMenuModuleItem *)self image];

  if (v8)
  {
    v9 = [(CCUIMenuModuleItem *)self image];
    v10 = [v3 appendObject:v9];
  }

  v11 = [(CCUIMenuModuleItem *)self subtitle];
  v12 = [v3 appendObject:v11];

  v13 = [v3 appendBool:{-[CCUIMenuModuleItem isBusy](self, "isBusy")}];
  v14 = [v3 appendBool:{-[CCUIMenuModuleItem isPlaceholder](self, "isPlaceholder")}];
  v15 = [v3 appendBool:{-[CCUIMenuModuleItem isSelected](self, "isSelected")}];
  v16 = [v3 hash];

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(CCUIMenuModuleItem *)self identifier];
  [v3 appendString:v4 withName:@"identifier"];

  v5 = [(CCUIMenuModuleItem *)self title];
  [v3 appendString:v5 withName:@"title"];

  v6 = [(CCUIMenuModuleItem *)self image];
  v7 = [v3 appendObject:v6 withName:@"image" skipIfNil:1];

  v8 = [(CCUIMenuModuleItem *)self subtitle];
  [v3 appendString:v8 withName:@"subtitle" skipIfEmpty:1];

  v9 = [v3 appendBool:-[CCUIMenuModuleItem isPlaceholder](self withName:"isPlaceholder") ifEqualTo:{@"placeholder", 1}];
  v10 = [v3 appendBool:-[CCUIMenuModuleItem isSelected](self withName:"isSelected") ifEqualTo:{@"selected", 1}];
  v11 = [v3 appendBool:-[CCUIMenuModuleItem isBusy](self withName:"isBusy") ifEqualTo:{@"busy", 1}];
  v12 = [v3 build];

  return v12;
}

- (BOOL)performAction
{
  handler = self->_handler;
  if (handler)
  {
    LOBYTE(handler) = handler[2]();
  }

  return handler;
}

@end