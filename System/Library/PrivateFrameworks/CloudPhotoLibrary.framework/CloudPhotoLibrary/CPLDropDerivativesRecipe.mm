@interface CPLDropDerivativesRecipe
+ (id)shortDescriptionForResourceChangeRecordType:(unint64_t)type;
+ (id)unarchiveArrayOfCPLDropDerivativeRecipesFrom:(id)from;
+ (unint64_t)changeRecordTypeFromShortDescription:(id)description;
- (CPLDropDerivativesRecipe)initWithCoder:(id)coder;
- (CPLDropDerivativesRecipe)initWithSourceResourceType:(unint64_t)type uti:(id)uti changeType:(unint64_t)changeType droppingDerivativeTypes:(id)types;
- (NSDictionary)plistDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLDropDerivativesRecipe

- (void)encodeWithCoder:(id)coder
{
  sourceResourceType = self->_sourceResourceType;
  coderCopy = coder;
  [coderCopy encodeInteger:sourceResourceType forKey:@"dropDerivativeRecipeSourceType"];
  [coderCopy encodeObject:self->_uti forKey:@"dropDerivativeRecipeUTI"];
  [coderCopy encodeInteger:self->_changeType forKey:@"dropDerivativeRecipeChangeType"];
  [coderCopy encodeObject:self->_derivativeTypes forKey:@"dropDerivativeRecipeDerivativesType"];
}

- (CPLDropDerivativesRecipe)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPLDropDerivativesRecipe;
  v5 = [(CPLDropDerivativesRecipe *)&v11 init];
  if (v5)
  {
    v5->_sourceResourceType = [coderCopy decodeIntegerForKey:@"dropDerivativeRecipeSourceType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dropDerivativeRecipeUTI"];
    uti = v5->_uti;
    v5->_uti = v6;

    v5->_changeType = [coderCopy decodeIntegerForKey:@"dropDerivativeRecipeChangeType"];
    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"dropDerivativeRecipeDerivativesType"];
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
  derivativeTypes = [(CPLDropDerivativesRecipe *)self derivativeTypes];
  v11[3] = derivativeTypes;
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

- (CPLDropDerivativesRecipe)initWithSourceResourceType:(unint64_t)type uti:(id)uti changeType:(unint64_t)changeType droppingDerivativeTypes:(id)types
{
  utiCopy = uti;
  typesCopy = types;
  v16.receiver = self;
  v16.super_class = CPLDropDerivativesRecipe;
  v13 = [(CPLDropDerivativesRecipe *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_sourceResourceType = type;
    objc_storeStrong(&v13->_uti, uti);
    v14->_changeType = changeType;
    objc_storeStrong(&v14->_derivativeTypes, types);
  }

  return v14;
}

+ (id)unarchiveArrayOfCPLDropDerivativeRecipesFrom:(id)from
{
  v3 = unarchiveArrayOfCPLDropDerivativeRecipesFrom__onceToken;
  fromCopy = from;
  if (v3 != -1)
  {
    dispatch_once(&unarchiveArrayOfCPLDropDerivativeRecipesFrom__onceToken, &__block_literal_global_9942);
  }

  v5 = [MEMORY[0x1E696ACD0] cpl_safeUnarchiveObjectWithData:fromCopy classes:unarchiveArrayOfCPLDropDerivativeRecipesFrom__classes];

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

+ (unint64_t)changeRecordTypeFromShortDescription:(id)description
{
  descriptionCopy = description;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CPLDropDerivativesRecipe_changeRecordTypeFromShortDescription___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (changeRecordTypeFromShortDescription__onceToken != -1)
  {
    dispatch_once(&changeRecordTypeFromShortDescription__onceToken, block);
  }

  v5 = [changeRecordTypeFromShortDescription__mapping objectForKeyedSubscript:descriptionCopy];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
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

+ (id)shortDescriptionForResourceChangeRecordType:(unint64_t)type
{
  if (type >= 3)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"CPLResourceChangeRecordType-%i", type];
  }

  else
  {
    type = off_1E861D0F8[type];
  }

  return type;
}

@end