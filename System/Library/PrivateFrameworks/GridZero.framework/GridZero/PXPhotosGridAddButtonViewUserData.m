@interface PXPhotosGridAddButtonViewUserData
- (BOOL)isEqual:(id)a3;
- (PXPhotosGridAddButtonViewUserData)init;
- (PXPhotosGridAddButtonViewUserData)initWithStyle:(int64_t)a3 actionHandler:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXPhotosGridAddButtonViewUserData

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXPhotosGridAddButtonViewUserData *)self style];
      if (v6 == [(PXPhotosGridAddButtonViewUserData *)v5 style])
      {
        v7 = [(PXPhotosGridAddButtonViewUserData *)self actionHandler];
        v8 = [(PXPhotosGridAddButtonViewUserData *)v5 actionHandler];
        if (v7 == v8 && ([(PXPhotosGridAddButtonViewUserData *)self cornerRadius], v11 = v10, [(PXPhotosGridAddButtonViewUserData *)v5 cornerRadius], v11 == v12))
        {
          v13 = [(PXPhotosGridAddButtonViewUserData *)self preferredUserInterfaceStyle];
          v9 = v13 == [(PXPhotosGridAddButtonViewUserData *)v5 preferredUserInterfaceStyle];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PXPhotosGridAddButtonViewUserData *)self style];
  v6 = [(PXPhotosGridAddButtonViewUserData *)self actionHandler];
  v7 = [v4 initWithStyle:v5 actionHandler:v6];

  [(PXPhotosGridAddButtonViewUserData *)self cornerRadius];
  v7[4] = v8;
  v7[3] = [(PXPhotosGridAddButtonViewUserData *)self preferredUserInterfaceStyle];
  return v7;
}

- (PXPhotosGridAddButtonViewUserData)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosGridAddButtonView.m" lineNumber:231 description:{@"%s is not available as initializer", "-[PXPhotosGridAddButtonViewUserData init]"}];

  abort();
}

- (PXPhotosGridAddButtonViewUserData)initWithStyle:(int64_t)a3 actionHandler:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PXPhotosGridAddButtonViewUserData;
  v7 = [(PXPhotosGridAddButtonViewUserData *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_style = a3;
    v9 = [v6 copy];
    actionHandler = v8->_actionHandler;
    v8->_actionHandler = v9;

    v8->_preferredUserInterfaceStyle = 0;
  }

  return v8;
}

@end