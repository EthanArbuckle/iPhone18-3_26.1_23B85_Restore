@interface VCPSearchContext
- (VCPSearchContext)init;
- (VCPSearchContext)initWithCoder:(id)coder;
- (VCPSearchContext)initWithEntities:(id)entities;
- (void)addIdentifiers:(id)identifiers forType:(int64_t)type;
- (void)setIdentifiers:(id)identifiers forType:(int64_t)type;
@end

@implementation VCPSearchContext

- (VCPSearchContext)initWithCoder:(id)coder
{
  v13[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = VCPSearchContext;
  v5 = [(VCPSearchContext *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v13[3] = objc_opt_class();
    v13[4] = objc_opt_class();
    v13[5] = objc_opt_class();
    v13[6] = objc_opt_class();
    v13[7] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Entities"];
    entities = v5->_entities;
    v5->_entities = v9;
  }

  return v5;
}

- (VCPSearchContext)init
{
  v7.receiver = self;
  v7.super_class = VCPSearchContext;
  v2 = [(VCPSearchContext *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    entities = v2->_entities;
    v2->_entities = dictionary;

    v5 = v2;
  }

  return v2;
}

- (VCPSearchContext)initWithEntities:(id)entities
{
  entitiesCopy = entities;
  v5 = [(VCPSearchContext *)self init];
  if (v5)
  {
    if ([entitiesCopy count])
    {
      [(NSMutableDictionary *)v5->_entities addEntriesFromDictionary:entitiesCopy];
    }

    v6 = v5;
  }

  return v5;
}

- (void)addIdentifiers:(id)identifiers forType:(int64_t)type
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:identifiersCopy];
    v8 = [(NSMutableDictionary *)self->_entities objectForKeyedSubscript:v6];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_entities objectForKeyedSubscript:v6];
      [v7 addObjectsFromArray:v9];
    }

    [(NSMutableDictionary *)self->_entities setObject:v7 forKey:v6];
  }
}

- (void)setIdentifiers:(id)identifiers forType:(int64_t)type
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:identifiersCopy];
    [(NSMutableDictionary *)self->_entities setObject:v7 forKey:v6];
  }
}

@end