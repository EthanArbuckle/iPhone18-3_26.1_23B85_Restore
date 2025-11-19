@interface MRUCAPackageAsset
+ (id)packageNamed:(id)a3;
+ (id)packageNamed:(id)a3 glyphState:(id)a4;
+ (id)packageNamed:(id)a3 glyphState:(id)a4 permanentTransform:(CATransform3D *)a5;
+ (id)packageNamed:(id)a3 locale:(id)a4 configurator:(id)a5;
+ (void)prepareSkipPackage:(id)a3 forInterval:(double)a4 isForwards:(BOOL)a5 locale:(id)a6;
- (BOOL)isEqual:(id)a3;
- (CAPackage)package;
- (CATransform3D)permanentTransform;
- (CCUICAPackageDescription)packageDescription;
- (MRUCAPackageAsset)initWithPackageName:(id)a3;
- (MRUCAPackageAsset)initWithPackageName:(id)a3 glyphState:(id)a4;
- (MRUCAPackageAsset)initWithPackageName:(id)a3 glyphState:(id)a4 permanentTransform:(CATransform3D *)a5;
- (MRUCAPackageAsset)initWithPackageName:(id)a3 glyphState:(id)a4 permanentTransform:(CATransform3D *)a5 locale:(id)a6 configurator:(id)a7;
- (void)setPermanentTransform:(CATransform3D *)a3;
@end

@implementation MRUCAPackageAsset

- (CATransform3D)permanentTransform
{
  v3 = *&self[1].m11;
  *&retstr->m31 = *&self->m43;
  *&retstr->m33 = v3;
  v4 = *&self[1].m21;
  *&retstr->m41 = *&self[1].m13;
  *&retstr->m43 = v4;
  v5 = *&self->m31;
  *&retstr->m11 = *&self->m23;
  *&retstr->m13 = v5;
  v6 = *&self->m41;
  *&retstr->m21 = *&self->m33;
  *&retstr->m23 = v6;
  return self;
}

- (CCUICAPackageDescription)packageDescription
{
  packageDescription = self->_packageDescription;
  if (!packageDescription)
  {
    v4 = [MRUAssetsProvider packageDescriptionWithName:self->_packageName];
    v5 = self->_packageDescription;
    self->_packageDescription = v4;

    packageDescription = self->_packageDescription;
  }

  return packageDescription;
}

- (CAPackage)package
{
  v3 = [MRUAssetsProvider packageWithName:self->_packageName];
  v4 = [(MRUCAPackageConfigurator *)self->packageConfigurator block];

  if (v4)
  {
    v5 = [(MRUCAPackageConfigurator *)self->packageConfigurator block];
    v6 = (v5)[2](v5, v3, self->packageLocale);

    v3 = v6;
  }

  return v3;
}

+ (id)packageNamed:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPackageName:v4];

  return v5;
}

+ (id)packageNamed:(id)a3 locale:(id)a4 configurator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = *(MEMORY[0x1E69792E8] + 80);
  v18[4] = *(MEMORY[0x1E69792E8] + 64);
  v18[5] = v12;
  v13 = *(MEMORY[0x1E69792E8] + 112);
  v18[6] = *(MEMORY[0x1E69792E8] + 96);
  v18[7] = v13;
  v14 = *(MEMORY[0x1E69792E8] + 16);
  v18[0] = *MEMORY[0x1E69792E8];
  v18[1] = v14;
  v15 = *(MEMORY[0x1E69792E8] + 48);
  v18[2] = *(MEMORY[0x1E69792E8] + 32);
  v18[3] = v15;
  v16 = [v11 initWithPackageName:v10 glyphState:0 permanentTransform:v18 locale:v9 configurator:v8];

  return v16;
}

+ (id)packageNamed:(id)a3 glyphState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPackageName:v7 glyphState:v6];

  return v8;
}

+ (id)packageNamed:(id)a3 glyphState:(id)a4 permanentTransform:(CATransform3D *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 alloc];
  v11 = *&a5->m33;
  v17[4] = *&a5->m31;
  v17[5] = v11;
  v12 = *&a5->m43;
  v17[6] = *&a5->m41;
  v17[7] = v12;
  v13 = *&a5->m13;
  v17[0] = *&a5->m11;
  v17[1] = v13;
  v14 = *&a5->m23;
  v17[2] = *&a5->m21;
  v17[3] = v14;
  v15 = [v10 initWithPackageName:v9 glyphState:v8 permanentTransform:v17];

  return v15;
}

- (MRUCAPackageAsset)initWithPackageName:(id)a3
{
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v8[4] = *(MEMORY[0x1E69792E8] + 64);
  v8[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v8[6] = *(MEMORY[0x1E69792E8] + 96);
  v8[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v8[0] = *MEMORY[0x1E69792E8];
  v8[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v8[2] = *(MEMORY[0x1E69792E8] + 32);
  v8[3] = v6;
  return [(MRUCAPackageAsset *)self initWithPackageName:a3 glyphState:0 permanentTransform:v8];
}

- (MRUCAPackageAsset)initWithPackageName:(id)a3 glyphState:(id)a4
{
  v4 = *(MEMORY[0x1E69792E8] + 80);
  v9[4] = *(MEMORY[0x1E69792E8] + 64);
  v9[5] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 112);
  v9[6] = *(MEMORY[0x1E69792E8] + 96);
  v9[7] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 16);
  v9[0] = *MEMORY[0x1E69792E8];
  v9[1] = v6;
  v7 = *(MEMORY[0x1E69792E8] + 48);
  v9[2] = *(MEMORY[0x1E69792E8] + 32);
  v9[3] = v7;
  return [(MRUCAPackageAsset *)self initWithPackageName:a3 glyphState:a4 permanentTransform:v9];
}

- (MRUCAPackageAsset)initWithPackageName:(id)a3 glyphState:(id)a4 permanentTransform:(CATransform3D *)a5
{
  v8 = MEMORY[0x1E695DF58];
  v9 = a4;
  v10 = a3;
  v11 = [v8 currentLocale];
  v12 = *&a5->m33;
  v18[4] = *&a5->m31;
  v18[5] = v12;
  v13 = *&a5->m43;
  v18[6] = *&a5->m41;
  v18[7] = v13;
  v14 = *&a5->m13;
  v18[0] = *&a5->m11;
  v18[1] = v14;
  v15 = *&a5->m23;
  v18[2] = *&a5->m21;
  v18[3] = v15;
  v16 = [(MRUCAPackageAsset *)self initWithPackageName:v10 glyphState:v9 permanentTransform:v18 locale:v11 configurator:0];

  return v16;
}

- (MRUCAPackageAsset)initWithPackageName:(id)a3 glyphState:(id)a4 permanentTransform:(CATransform3D *)a5 locale:(id)a6 configurator:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = MRUCAPackageAsset;
  v17 = [(MRUCAPackageAsset *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_packageName, a3);
    objc_storeStrong(&v18->_glyphState, a4);
    v19 = *&a5->m11;
    v20 = *&a5->m13;
    v21 = *&a5->m23;
    *&v18->_permanentTransform.m21 = *&a5->m21;
    *&v18->_permanentTransform.m23 = v21;
    *&v18->_permanentTransform.m11 = v19;
    *&v18->_permanentTransform.m13 = v20;
    v22 = *&a5->m31;
    v23 = *&a5->m33;
    v24 = *&a5->m43;
    *&v18->_permanentTransform.m41 = *&a5->m41;
    *&v18->_permanentTransform.m43 = v24;
    *&v18->_permanentTransform.m31 = v22;
    *&v18->_permanentTransform.m33 = v23;
    [(MRUCAPackageAsset *)v18 setPackageLocale:v15];
    [(MRUCAPackageAsset *)v18 setPackageConfigurator:v16];
  }

  return v18;
}

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
      v6 = [(MRUCAPackageAsset *)v5 packageName];
      v7 = v6;
      if (v6 == self->_packageName)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];
      }

      if (v5)
      {
        [(MRUCAPackageAsset *)v5 permanentTransform];
      }

      else
      {
        memset(&a, 0, sizeof(a));
      }

      v10 = *&self->_permanentTransform.m33;
      *&v19.m31 = *&self->_permanentTransform.m31;
      *&v19.m33 = v10;
      v11 = *&self->_permanentTransform.m43;
      *&v19.m41 = *&self->_permanentTransform.m41;
      *&v19.m43 = v11;
      v12 = *&self->_permanentTransform.m13;
      *&v19.m11 = *&self->_permanentTransform.m11;
      *&v19.m13 = v12;
      v13 = *&self->_permanentTransform.m23;
      *&v19.m21 = *&self->_permanentTransform.m21;
      *&v19.m23 = v13;
      v14 = v8 & CATransform3DEqualToTransform(&a, &v19);
      v15 = [(MRUCAPackageAsset *)v5 packageConfigurator];
      v16 = v15;
      if (v15 == self->packageConfigurator)
      {
        v17 = 1;
      }

      else
      {
        v17 = [(MRUCAPackageConfigurator *)v15 isEqual:?];
      }

      v9 = v14 & v17;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (void)prepareSkipPackage:(id)a3 forInterval:(double)a4 isForwards:(BOOL)a5 locale:(id)a6
{
  v32 = a5;
  v47 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v34 = a6;
  v8 = llround(fabs(a4));
  v9 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = [&unk_1F148B340 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(&unk_1F148B340);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __70__MRUCAPackageAsset_prepareSkipPackage_forInterval_isForwards_locale___block_invoke;
        v41[3] = &unk_1E76644B8;
        v41[4] = v14;
        v15 = [&unk_1F148B328 msv_map:v41];
        [v9 addObjectsFromArray:v15];
      }

      v11 = [&unk_1F148B340 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v11);
  }

  v16 = [v9 count];
  v17 = v34;
  v18 = [v34 _numberingSystem];
  v19 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v18];

  v20 = [v34 availableNumberingSystems];
  v21 = [v19 arrayByAddingObjectsFromArray:v20];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __70__MRUCAPackageAsset_prepareSkipPackage_forInterval_isForwards_locale___block_invoke_2;
  v39[3] = &unk_1E76644E0;
  v40 = &unk_1F148B340;
  v22 = [v21 msv_firstWhere:v39];
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = @"latn";
  }

  v24 = [MRUCAPackageAssetLayerDescription descriptionWithInterval:v23 numberingSystem:v8];
  v25 = [v9 msv_firstIndexOfObjectEqualTo:v24];
  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = v16 + !v32;
  }

  else
  {
    v26 = v25;
  }

  if (v32)
  {
    v27 = [v33 publishedObjectWithName:@"flip"];
    if (v27)
    {
      CATransform3DMakeRotation(&v38, 3.14159265, 0.0, 1.0, 0.0);
      v37 = v38;
      [v27 setTransform:&v37];
    }
  }

  v28 = [v33 publishedObjectWithName:@"glyphs"];
  v29 = [v28 sublayers];

  v30 = [v33 publishedObjectWithName:@"glyphs-mask"];
  v31 = [v30 sublayers];

  if (v29 && v31)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __70__MRUCAPackageAsset_prepareSkipPackage_forInterval_isForwards_locale___block_invoke_3;
    v36[3] = &__block_descriptor_40_e24_v32__0__CALayer_8Q16_B24l;
    v36[4] = v26;
    [v29 enumerateObjectsUsingBlock:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __70__MRUCAPackageAsset_prepareSkipPackage_forInterval_isForwards_locale___block_invoke_4;
    v35[3] = &__block_descriptor_40_e24_v32__0__CALayer_8Q16_B24l;
    v17 = v34;
    v35[4] = v26;
    [v31 enumerateObjectsUsingBlock:v35];
  }
}

MRUCAPackageAssetLayerDescription *__70__MRUCAPackageAsset_prepareSkipPackage_forInterval_isForwards_locale___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);

  return [MRUCAPackageAssetLayerDescription descriptionWithInterval:v4 numberingSystem:v3];
}

- (void)setPermanentTransform:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m23;
  *&self->_permanentTransform.m21 = *&a3->m21;
  *&self->_permanentTransform.m23 = v5;
  *&self->_permanentTransform.m11 = v3;
  *&self->_permanentTransform.m13 = v4;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m43;
  *&self->_permanentTransform.m41 = *&a3->m41;
  *&self->_permanentTransform.m43 = v8;
  *&self->_permanentTransform.m31 = v6;
  *&self->_permanentTransform.m33 = v7;
}

@end