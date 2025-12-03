@interface MRUCAPackageAsset
+ (id)packageNamed:(id)named;
+ (id)packageNamed:(id)named glyphState:(id)state;
+ (id)packageNamed:(id)named glyphState:(id)state permanentTransform:(CATransform3D *)transform;
+ (id)packageNamed:(id)named locale:(id)locale configurator:(id)configurator;
+ (void)prepareSkipPackage:(id)package forInterval:(double)interval isForwards:(BOOL)forwards locale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (CAPackage)package;
- (CATransform3D)permanentTransform;
- (CCUICAPackageDescription)packageDescription;
- (MRUCAPackageAsset)initWithPackageName:(id)name;
- (MRUCAPackageAsset)initWithPackageName:(id)name glyphState:(id)state;
- (MRUCAPackageAsset)initWithPackageName:(id)name glyphState:(id)state permanentTransform:(CATransform3D *)transform;
- (MRUCAPackageAsset)initWithPackageName:(id)name glyphState:(id)state permanentTransform:(CATransform3D *)transform locale:(id)locale configurator:(id)configurator;
- (void)setPermanentTransform:(CATransform3D *)transform;
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
  block = [(MRUCAPackageConfigurator *)self->packageConfigurator block];

  if (block)
  {
    block2 = [(MRUCAPackageConfigurator *)self->packageConfigurator block];
    v6 = (block2)[2](block2, v3, self->packageLocale);

    v3 = v6;
  }

  return v3;
}

+ (id)packageNamed:(id)named
{
  namedCopy = named;
  v5 = [[self alloc] initWithPackageName:namedCopy];

  return v5;
}

+ (id)packageNamed:(id)named locale:(id)locale configurator:(id)configurator
{
  configuratorCopy = configurator;
  localeCopy = locale;
  namedCopy = named;
  v11 = [self alloc];
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
  v16 = [v11 initWithPackageName:namedCopy glyphState:0 permanentTransform:v18 locale:localeCopy configurator:configuratorCopy];

  return v16;
}

+ (id)packageNamed:(id)named glyphState:(id)state
{
  stateCopy = state;
  namedCopy = named;
  v8 = [[self alloc] initWithPackageName:namedCopy glyphState:stateCopy];

  return v8;
}

+ (id)packageNamed:(id)named glyphState:(id)state permanentTransform:(CATransform3D *)transform
{
  stateCopy = state;
  namedCopy = named;
  v10 = [self alloc];
  v11 = *&transform->m33;
  v17[4] = *&transform->m31;
  v17[5] = v11;
  v12 = *&transform->m43;
  v17[6] = *&transform->m41;
  v17[7] = v12;
  v13 = *&transform->m13;
  v17[0] = *&transform->m11;
  v17[1] = v13;
  v14 = *&transform->m23;
  v17[2] = *&transform->m21;
  v17[3] = v14;
  v15 = [v10 initWithPackageName:namedCopy glyphState:stateCopy permanentTransform:v17];

  return v15;
}

- (MRUCAPackageAsset)initWithPackageName:(id)name
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
  return [(MRUCAPackageAsset *)self initWithPackageName:name glyphState:0 permanentTransform:v8];
}

- (MRUCAPackageAsset)initWithPackageName:(id)name glyphState:(id)state
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
  return [(MRUCAPackageAsset *)self initWithPackageName:name glyphState:state permanentTransform:v9];
}

- (MRUCAPackageAsset)initWithPackageName:(id)name glyphState:(id)state permanentTransform:(CATransform3D *)transform
{
  v8 = MEMORY[0x1E695DF58];
  stateCopy = state;
  nameCopy = name;
  currentLocale = [v8 currentLocale];
  v12 = *&transform->m33;
  v18[4] = *&transform->m31;
  v18[5] = v12;
  v13 = *&transform->m43;
  v18[6] = *&transform->m41;
  v18[7] = v13;
  v14 = *&transform->m13;
  v18[0] = *&transform->m11;
  v18[1] = v14;
  v15 = *&transform->m23;
  v18[2] = *&transform->m21;
  v18[3] = v15;
  v16 = [(MRUCAPackageAsset *)self initWithPackageName:nameCopy glyphState:stateCopy permanentTransform:v18 locale:currentLocale configurator:0];

  return v16;
}

- (MRUCAPackageAsset)initWithPackageName:(id)name glyphState:(id)state permanentTransform:(CATransform3D *)transform locale:(id)locale configurator:(id)configurator
{
  nameCopy = name;
  stateCopy = state;
  localeCopy = locale;
  configuratorCopy = configurator;
  v26.receiver = self;
  v26.super_class = MRUCAPackageAsset;
  v17 = [(MRUCAPackageAsset *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_packageName, name);
    objc_storeStrong(&v18->_glyphState, state);
    v19 = *&transform->m11;
    v20 = *&transform->m13;
    v21 = *&transform->m23;
    *&v18->_permanentTransform.m21 = *&transform->m21;
    *&v18->_permanentTransform.m23 = v21;
    *&v18->_permanentTransform.m11 = v19;
    *&v18->_permanentTransform.m13 = v20;
    v22 = *&transform->m31;
    v23 = *&transform->m33;
    v24 = *&transform->m43;
    *&v18->_permanentTransform.m41 = *&transform->m41;
    *&v18->_permanentTransform.m43 = v24;
    *&v18->_permanentTransform.m31 = v22;
    *&v18->_permanentTransform.m33 = v23;
    [(MRUCAPackageAsset *)v18 setPackageLocale:localeCopy];
    [(MRUCAPackageAsset *)v18 setPackageConfigurator:configuratorCopy];
  }

  return v18;
}

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
      packageName = [(MRUCAPackageAsset *)v5 packageName];
      v7 = packageName;
      if (packageName == self->_packageName)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSString *)packageName isEqual:?];
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
      packageConfigurator = [(MRUCAPackageAsset *)v5 packageConfigurator];
      v16 = packageConfigurator;
      if (packageConfigurator == self->packageConfigurator)
      {
        v17 = 1;
      }

      else
      {
        v17 = [(MRUCAPackageConfigurator *)packageConfigurator isEqual:?];
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

+ (void)prepareSkipPackage:(id)package forInterval:(double)interval isForwards:(BOOL)forwards locale:(id)locale
{
  forwardsCopy = forwards;
  v47 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  localeCopy = locale;
  v8 = llround(fabs(interval));
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
  v17 = localeCopy;
  _numberingSystem = [localeCopy _numberingSystem];
  v19 = [MEMORY[0x1E695E0F0] arrayByAddingObject:_numberingSystem];

  availableNumberingSystems = [localeCopy availableNumberingSystems];
  v21 = [v19 arrayByAddingObjectsFromArray:availableNumberingSystems];

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
    v26 = v16 + !forwardsCopy;
  }

  else
  {
    v26 = v25;
  }

  if (forwardsCopy)
  {
    v27 = [packageCopy publishedObjectWithName:@"flip"];
    if (v27)
    {
      CATransform3DMakeRotation(&v38, 3.14159265, 0.0, 1.0, 0.0);
      v37 = v38;
      [v27 setTransform:&v37];
    }
  }

  v28 = [packageCopy publishedObjectWithName:@"glyphs"];
  sublayers = [v28 sublayers];

  v30 = [packageCopy publishedObjectWithName:@"glyphs-mask"];
  sublayers2 = [v30 sublayers];

  if (sublayers && sublayers2)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __70__MRUCAPackageAsset_prepareSkipPackage_forInterval_isForwards_locale___block_invoke_3;
    v36[3] = &__block_descriptor_40_e24_v32__0__CALayer_8Q16_B24l;
    v36[4] = v26;
    [sublayers enumerateObjectsUsingBlock:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __70__MRUCAPackageAsset_prepareSkipPackage_forInterval_isForwards_locale___block_invoke_4;
    v35[3] = &__block_descriptor_40_e24_v32__0__CALayer_8Q16_B24l;
    v17 = localeCopy;
    v35[4] = v26;
    [sublayers2 enumerateObjectsUsingBlock:v35];
  }
}

MRUCAPackageAssetLayerDescription *__70__MRUCAPackageAsset_prepareSkipPackage_forInterval_isForwards_locale___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);

  return [MRUCAPackageAssetLayerDescription descriptionWithInterval:v4 numberingSystem:v3];
}

- (void)setPermanentTransform:(CATransform3D *)transform
{
  v3 = *&transform->m11;
  v4 = *&transform->m13;
  v5 = *&transform->m23;
  *&self->_permanentTransform.m21 = *&transform->m21;
  *&self->_permanentTransform.m23 = v5;
  *&self->_permanentTransform.m11 = v3;
  *&self->_permanentTransform.m13 = v4;
  v6 = *&transform->m31;
  v7 = *&transform->m33;
  v8 = *&transform->m43;
  *&self->_permanentTransform.m41 = *&transform->m41;
  *&self->_permanentTransform.m43 = v8;
  *&self->_permanentTransform.m31 = v6;
  *&self->_permanentTransform.m33 = v7;
}

@end