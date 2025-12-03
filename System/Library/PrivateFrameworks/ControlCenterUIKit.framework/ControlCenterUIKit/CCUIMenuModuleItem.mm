@interface CCUIMenuModuleItem
- (BOOL)isEqual:(id)equal;
- (BOOL)performAction;
- (CCUIMenuModuleItem)initWithTitle:(id)title identifier:(id)identifier image:(id)image handler:(id)handler;
- (id)description;
- (unint64_t)hash;
@end

@implementation CCUIMenuModuleItem

- (CCUIMenuModuleItem)initWithTitle:(id)title identifier:(id)identifier image:(id)image handler:(id)handler
{
  titleCopy = title;
  identifierCopy = identifier;
  imageCopy = image;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = CCUIMenuModuleItem;
  v15 = [(CCUIMenuModuleItem *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v16->_identifier, identifier);
    v17 = [handlerCopy copy];
    handler = v16->_handler;
    v16->_handler = v17;

    v19 = [imageCopy copy];
    image = v16->_image;
    v16->_image = v19;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(CCUIMenuModuleItem *)self identifier];
      identifier2 = [(CCUIMenuModuleItem *)v5 identifier];
      if (BSEqualObjects())
      {
        title = [(CCUIMenuModuleItem *)self title];
        title2 = [(CCUIMenuModuleItem *)v5 title];
        if (BSEqualObjects())
        {
          image = [(CCUIMenuModuleItem *)self image];
          image2 = [(CCUIMenuModuleItem *)v5 image];
          if (BSEqualObjects())
          {
            subtitle = [(CCUIMenuModuleItem *)self subtitle];
            subtitle2 = [(CCUIMenuModuleItem *)v5 subtitle];
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
  builder = [MEMORY[0x1E698E6B8] builder];
  identifier = [(CCUIMenuModuleItem *)self identifier];
  v5 = [builder appendObject:identifier];

  title = [(CCUIMenuModuleItem *)self title];
  v7 = [builder appendObject:title];

  image = [(CCUIMenuModuleItem *)self image];

  if (image)
  {
    image2 = [(CCUIMenuModuleItem *)self image];
    v10 = [builder appendObject:image2];
  }

  subtitle = [(CCUIMenuModuleItem *)self subtitle];
  v12 = [builder appendObject:subtitle];

  v13 = [builder appendBool:{-[CCUIMenuModuleItem isBusy](self, "isBusy")}];
  v14 = [builder appendBool:{-[CCUIMenuModuleItem isPlaceholder](self, "isPlaceholder")}];
  v15 = [builder appendBool:{-[CCUIMenuModuleItem isSelected](self, "isSelected")}];
  v16 = [builder hash];

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(CCUIMenuModuleItem *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  title = [(CCUIMenuModuleItem *)self title];
  [v3 appendString:title withName:@"title"];

  image = [(CCUIMenuModuleItem *)self image];
  v7 = [v3 appendObject:image withName:@"image" skipIfNil:1];

  subtitle = [(CCUIMenuModuleItem *)self subtitle];
  [v3 appendString:subtitle withName:@"subtitle" skipIfEmpty:1];

  v9 = [v3 appendBool:-[CCUIMenuModuleItem isPlaceholder](self withName:"isPlaceholder") ifEqualTo:{@"placeholder", 1}];
  v10 = [v3 appendBool:-[CCUIMenuModuleItem isSelected](self withName:"isSelected") ifEqualTo:{@"selected", 1}];
  v11 = [v3 appendBool:-[CCUIMenuModuleItem isBusy](self withName:"isBusy") ifEqualTo:{@"busy", 1}];
  build = [v3 build];

  return build;
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