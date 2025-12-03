@interface PXPhotosGridAddButtonViewUserData
- (BOOL)isEqual:(id)equal;
- (PXPhotosGridAddButtonViewUserData)init;
- (PXPhotosGridAddButtonViewUserData)initWithStyle:(int64_t)style actionHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXPhotosGridAddButtonViewUserData

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      style = [(PXPhotosGridAddButtonViewUserData *)self style];
      if (style == [(PXPhotosGridAddButtonViewUserData *)v5 style])
      {
        actionHandler = [(PXPhotosGridAddButtonViewUserData *)self actionHandler];
        actionHandler2 = [(PXPhotosGridAddButtonViewUserData *)v5 actionHandler];
        if (actionHandler == actionHandler2 && ([(PXPhotosGridAddButtonViewUserData *)self cornerRadius], v11 = v10, [(PXPhotosGridAddButtonViewUserData *)v5 cornerRadius], v11 == v12))
        {
          preferredUserInterfaceStyle = [(PXPhotosGridAddButtonViewUserData *)self preferredUserInterfaceStyle];
          v9 = preferredUserInterfaceStyle == [(PXPhotosGridAddButtonViewUserData *)v5 preferredUserInterfaceStyle];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  [(PXPhotosGridAddButtonViewUserData *)self cornerRadius];
  v4 = v3 ^ (4 * [(PXPhotosGridAddButtonViewUserData *)self style]);
  return v4 ^ (8 * [(PXPhotosGridAddButtonViewUserData *)self preferredUserInterfaceStyle]);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  style = [(PXPhotosGridAddButtonViewUserData *)self style];
  actionHandler = [(PXPhotosGridAddButtonViewUserData *)self actionHandler];
  v7 = [v4 initWithStyle:style actionHandler:actionHandler];

  [(PXPhotosGridAddButtonViewUserData *)self cornerRadius];
  v7[4] = v8;
  v7[3] = [(PXPhotosGridAddButtonViewUserData *)self preferredUserInterfaceStyle];
  return v7;
}

- (PXPhotosGridAddButtonViewUserData)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridAddButtonView.m" lineNumber:231 description:{@"%s is not available as initializer", "-[PXPhotosGridAddButtonViewUserData init]"}];

  abort();
}

- (PXPhotosGridAddButtonViewUserData)initWithStyle:(int64_t)style actionHandler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = PXPhotosGridAddButtonViewUserData;
  v7 = [(PXPhotosGridAddButtonViewUserData *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_style = style;
    v9 = [handlerCopy copy];
    actionHandler = v8->_actionHandler;
    v8->_actionHandler = v9;

    v8->_preferredUserInterfaceStyle = 0;
  }

  return v8;
}

@end