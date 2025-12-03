@interface LNViewAnnotations
- (LNViewAnnotations)initWithCoder:(id)coder;
- (LNViewAnnotations)initWithEntities:(id)entities intents:(id)intents;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNViewAnnotations

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entities = [(LNViewAnnotations *)self entities];
  [coderCopy encodeObject:entities forKey:@"entities"];

  intents = [(LNViewAnnotations *)self intents];
  [coderCopy encodeObject:intents forKey:@"intents"];
}

- (LNViewAnnotations)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"entities"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"intents"];

  if (v12 | v8)
  {
    self = [(LNViewAnnotations *)self initWithEntities:v8 intents:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNViewAnnotations)initWithEntities:(id)entities intents:(id)intents
{
  entitiesCopy = entities;
  intentsCopy = intents;
  v13.receiver = self;
  v13.super_class = LNViewAnnotations;
  v9 = [(LNViewAnnotations *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entities, entities);
    objc_storeStrong(&v10->_intents, intents);
    v11 = v10;
  }

  return v10;
}

@end