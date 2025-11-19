@interface ISIconDecorationResource
- (ISIconDecorationResource)initWithDecoration:(id)a3;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (void)configureWithType:(id)a3;
@end

@implementation ISIconDecorationResource

- (ISIconDecorationResource)initWithDecoration:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ISIconDecorationResource;
  v6 = [(ISIconDecorationResource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_decoration, a3);
    if ([(ISIconDecoration *)v7->_decoration identifierKind]== 2)
    {
      v8 = [(ISIconDecoration *)v7->_decoration identifier];
      [(ISIconDecorationResource *)v7 configureWithType:v8];
    }

    else
    {
      v8 = _ISDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1A77B8000, v8, OS_LOG_TYPE_DEFAULT, "Invalid decoration %@. Badging with app an icon is not currently supported.", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)configureWithType:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ISIconDecoration *)self->_decoration identifier];
  v6 = UTTypeConformsTo(v5, @"com.apple.icon-decoration");

  if (v6)
  {
    v7 = [(ISIconDecoration *)self->_decoration identifier];
    v8 = _UTTypeCopyGlyphName();

    if (!v8)
    {
      v18 = [(ISIconDecoration *)self->_decoration identifier];
      v19 = UTTypeConformsTo(v18, @"com.apple.icon-decoration.system");

      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = _ISDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(ISIconDecorationResource *)v4 configureWithType:v20];
      }

      v21 = [(ISIconDecoration *)self->_decoration identifier];
      v8 = _UTTypeCopyIconName();

      if (!v8)
      {
LABEL_17:
        v13 = _ISDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v4;
          _os_log_impl(&dword_1A77B8000, v13, OS_LOG_TYPE_DEFAULT, "No resource named for decoration type '%@'", buf, 0xCu);
        }

        v8 = 0;
        goto LABEL_21;
      }
    }

    v9 = [(ISIconDecoration *)self->_decoration identifier];
    v10 = UTTypeCopyDeclaringBundleURL(v9);

    Unique = _CFBundleCreateUnique();
    if (!Unique)
    {
      v13 = v10;
LABEL_21:

      goto LABEL_22;
    }

    v12 = Unique;
    v13 = CFBundleCopyResourceURL(Unique, @"Assets", @"car", 0);
    CFRelease(v12);

    if (v13)
    {
      v23 = 0;
      v14 = [ISAssetCatalogResource assetCatalogResourceWithURL:v13 imageName:v8 error:&v23];
      v15 = v23;
      internalResource = self->_internalResource;
      self->_internalResource = v14;

      if (!self->_internalResource && v15)
      {
        v17 = _ISDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v25 = v8;
          v26 = 2112;
          v27 = v13;
          v28 = 2112;
          v29 = v15;
          _os_log_impl(&dword_1A77B8000, v17, OS_LOG_TYPE_DEFAULT, "Failed to load resource named: %@ from asset catalog at URL: %@ with error: %@", buf, 0x20u);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ISIconDecorationResource *)v4 configureWithType:v8];
    }
  }

LABEL_22:

  v22 = *MEMORY[0x1E69E9840];
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  internalResource = self->_internalResource;
  if (internalResource)
  {
    internalResource = [internalResource imageForSize:a3.width scale:{a3.height, a4}];
    v4 = vars8;
  }

  return internalResource;
}

- (void)configureWithType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "No glyph resource specified, looking for an icon resource for system type '%@'", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)configureWithType:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A77B8000, log, OS_LOG_TYPE_ERROR, "Decoration type %@ does not conform to %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end