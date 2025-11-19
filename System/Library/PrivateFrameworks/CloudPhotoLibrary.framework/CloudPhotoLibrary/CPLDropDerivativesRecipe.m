@interface CPLDropDerivativesRecipe
+ (id)shortDescriptionForResourceChangeRecordType:(unint64_t)a3;
+ (id)unarchiveArrayOfCPLDropDerivativeRecipesFrom:(id)a3;
+ (unint64_t)changeRecordTypeFromShortDescription:(id)a3;
- (CPLDropDerivativesRecipe)initWithCoder:(id)a3;
- (CPLDropDerivativesRecipe)initWithSourceResourceType:(unint64_t)a3 uti:(id)a4 changeType:(unint64_t)a5 droppingDerivativeTypes:(id)a6;
- (NSDictionary)plistDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLDropDerivativesRecipe

- (void)encodeWithCoder:(id)a3
{
  sourceResourceType = self->_sourceResourceType;
  v5 = a3;
  [v5 encodeInteger:sourceResourceType forKey:@"dropDerivativeRecipeSourceType"];
  [v5 encodeObject:self->_uti forKey:@"dropDerivativeRecipeUTI"];
  [v5 encodeInteger:self->_changeType forKey:@"dropDerivativeRecipeChangeType"];
  [v5 encodeObject:self->_derivativeTypes forKey:@"dropDerivativeRecipeDerivativesType"];
}

- (CPLDropDerivativesRecipe)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLDropDerivativesRecipe;
  v5 = [(CPLDropDerivativesRecipe *)&v11 init];
  if (v5)
  {
    v5->_sourceResourceType = [v4 decodeIntegerForKey:@"dropDerivativeRecipeSourceType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dropDerivativeRecipeUTI"];
    uti = v5->_uti;
    v5->_uti = v6;

    v5->_changeType = [v4 decodeIntegerForKey:@"dropDerivativeRecipeChangeType"];
    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"dropDerivativeRecipeDerivativesType"];
    derivativeTypes = v5->_derivativeTypes;
    v5->_derivativeTypes = v8;
  }

  return v5;
}

- (NSDictionary)plistDescription
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"changeRecordType";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CPLDropDerivativesRecipe changeType](self, "changeType")}];
  v11[0] = v3;
  v10[1] = @"uti";
  v4 = [(CPLDropDerivativesRecipe *)self uti];
  v11[1] = v4;
  v10[2] = @"sourceResourceType";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CPLDropDerivativesRecipe sourceResourceType](self, "sourceResourceType")}];
  v11[2] = v5;
  v10[3] = @"derivativeResourceTypes";
  v6 = [(CPLDropDerivativesRecipe *)self derivativeTypes];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [CPLResource shortDescriptionForResourceType:self->_sourceResourceType];
  uti = self->_uti;
  v6 = [CPLDropDerivativesRecipe shortDescriptionForResourceChangeRecordType:self->_changeType];
  v7 = _shortDescriptionForArrayOfCPLResourceTypes(self->_derivativeTypes);
  v8 = [v3 initWithFormat:@"<sourceResourceType: %@, uti: %@, changeType: %@, derivativeTypes: %@>", v4, uti, v6, v7];

  return v8;
}

- (CPLDropDerivativesRecipe)initWithSourceResourceType:(unint64_t)a3 uti:(id)a4 changeType:(unint64_t)a5 droppingDerivativeTypes:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CPLDropDerivativesRecipe;
  v13 = [(CPLDropDerivativesRecipe *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_sourceResourceType = a3;
    objc_storeStrong(&v13->_uti, a4);
    v14->_changeType = a5;
    objc_storeStrong(&v14->_derivativeTypes, a6);
  }

  return v14;
}

+ (id)unarchiveArrayOfCPLDropDerivativeRecipesFrom:(id)a3
{
  v3 = unarchiveArrayOfCPLDropDerivativeRecipesFrom__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&unarchiveArrayOfCPLDropDerivativeRecipesFrom__onceToken, &__block_literal_global_9942);
  }

  v5 = [MEMORY[0x1E696ACD0] cpl_safeUnarchiveObjectWithData:v4 classes:unarchiveArrayOfCPLDropDerivativeRecipesFrom__classes];

  return v5;
}

uint64_t __73__CPLDropDerivativesRecipe_unarchiveArrayOfCPLDropDerivativeRecipesFrom___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  v3 = unarchiveArrayOfCPLDropDerivativeRecipesFrom__classes;
  unarchiveArrayOfCPLDropDerivativeRecipesFrom__classes = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (unint64_t)changeRecordTypeFromShortDescription:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CPLDropDerivativesRecipe_changeRecordTypeFromShortDescription___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (changeRecordTypeFromShortDescription__onceToken != -1)
  {
    dispatch_once(&changeRecordTypeFromShortDescription__onceToken, block);
  }

  v5 = [changeRecordTypeFromShortDescription__mapping objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __65__CPLDropDerivativesRecipe_changeRecordTypeFromShortDescription___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (i = 0; i != 3; ++i)
  {
    if (i)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      v5 = [*(a1 + 32) shortDescriptionForResourceChangeRecordType:i];
      [v2 setObject:v4 forKeyedSubscript:v5];
    }
  }

  v6 = changeRecordTypeFromShortDescription__mapping;
  changeRecordTypeFromShortDescription__mapping = v2;
}

+ (id)shortDescriptionForResourceChangeRecordType:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CPLResourceChangeRecordType-%i", a3];
  }

  else
  {
    v4 = off_1E861D0F8[a3];
  }

  return v4;
}

@end