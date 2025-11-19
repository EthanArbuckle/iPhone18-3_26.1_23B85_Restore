@interface PKPassUpcomingPassInformationImageManifest
+ (id)createFromDictionary:(id)a3 bundle:(id)a4 imageName:(id)a5 reuseAllowed:(BOOL)a6;
- (BOOL)composeFromDictionary:(id)a3 bundle:(id)a4 reuseAllowed:(BOOL)a5;
- (PKPassUpcomingPassInformationImageManifest)initWithCoder:(id)a3;
- (id)_initWithImageName:(id)a3;
- (id)itemClosestMatchingScreenScale:(double)a3;
- (id)itemForScreenScale:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpcomingPassInformationImageManifest

+ (id)createFromDictionary:(id)a3 bundle:(id)a4 imageName:(id)a5 reuseAllowed:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (v10 && v9 && a5)
  {
    v12 = a5;
    v13 = [[PKPassUpcomingPassInformationImageManifest alloc] _initWithImageName:v12];

    if (v13 && [v13 composeFromDictionary:v9 bundle:v10 reuseAllowed:v6])
    {
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_initWithImageName:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKPassUpcomingPassInformationImageManifest;
    v6 = [(PKPassUpcomingPassInformationImageManifest *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_imageName, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)composeFromDictionary:(id)a3 bundle:(id)a4 reuseAllowed:(BOOL)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 PKBoolForKey:@"reuseExisting"];
  self->_reuseExisting = v10;
  if (v10 && !a5)
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      v14 = 0;
LABEL_25:

      goto LABEL_26;
    }

    imageName = self->_imageName;
    *buf = 138412290;
    v40 = imageName;
    v13 = "[PKPassUpcomingPassInformationImageManifest] Reusability not allowed for %@";
LABEL_5:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    goto LABEL_6;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v15 = [PKImage URLForImageNamed:self->_imageName inBundle:v9 scale:0];

  if (!v15)
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v30 = self->_imageName;
    *buf = 138412290;
    v40 = v30;
    v13 = "[PKPassUpcomingPassInformationImageManifest] Cannot reuse %@ as asset doesn't exist";
    goto LABEL_5;
  }

  if (!self->_reuseExisting)
  {
LABEL_11:
    v31 = v9;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = v8;
    v16 = [v8 PKArrayForKey:@"URLs"];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [PKPassUpcomingPassInformationImageManifestItem createFromDictionary:*(*(&v34 + 1) + 8 * i), v31];
          v22 = v21;
          if (v21)
          {
            v23 = MEMORY[0x1E696AD98];
            [v21 scale];
            v24 = [v23 numberWithDouble:?];
            [v11 setObject:v22 forKeyedSubscript:v24];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v18);
    }

    v25 = [v11 count];
    v14 = v25 != 0;
    if (v25)
    {
      v26 = [v11 copy];
      p_super = &self->_items->super;
      self->_items = v26;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_imageName;
        *buf = 138412290;
        v40 = v28;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "[PKPassUpcomingPassInformationImageManifest] No URLs were provided for %@", buf, 0xCu);
      }
    }

    v9 = v32;

    v8 = v33;
    goto LABEL_25;
  }

  v14 = 1;
LABEL_26:

  return v14;
}

- (PKPassUpcomingPassInformationImageManifest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPassUpcomingPassInformationImageManifest;
  v5 = [(PKPassUpcomingPassInformationImageManifest *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v5->_reuseExisting = [v4 decodeBoolForKey:@"reuseExisting"];
    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  imageName = self->_imageName;
  v5 = a3;
  [v5 encodeObject:imageName forKey:@"imageName"];
  [v5 encodeBool:self->_reuseExisting forKey:@"reuseExisting"];
  [v5 encodeObject:self->_items forKey:@"items"];
}

- (id)itemForScreenScale:(double)a3
{
  items = self->_items;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = [(NSDictionary *)items objectForKeyedSubscript:v4];

  return v5;
}

- (id)itemClosestMatchingScreenScale:(double)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__72;
  v19 = __Block_byref_object_dispose__72;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__PKPassUpcomingPassInformationImageManifest_itemClosestMatchingScreenScale___block_invoke;
  v14[3] = &unk_1E79E01E0;
  v14[4] = self;
  v14[5] = &v15;
  v4 = _Block_copy(v14);
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4[2](v4, v5);

  v6 = v16[5];
  if (!v6)
  {
    v7 = a3;
    do
    {
      v7 = v7 + 1.0;
      if (v7 > 3.0)
      {
        break;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      v9 = (v4[2])(v4, v8);
    }

    while ((v9 & 1) == 0);
    v6 = v16[5];
    if (!v6)
    {
      do
      {
        a3 = a3 + -1.0;
        if (a3 <= 0.0)
        {
          break;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
        v11 = (v4[2])(v4, v10);
      }

      while (!v11);
      v6 = v16[5];
    }
  }

  v12 = v6;

  _Block_object_dispose(&v15, 8);

  return v12;
}

BOOL __77__PKPassUpcomingPassInformationImageManifest_itemClosestMatchingScreenScale___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

@end