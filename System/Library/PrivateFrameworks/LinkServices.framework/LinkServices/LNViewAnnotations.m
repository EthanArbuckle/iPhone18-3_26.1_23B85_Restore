@interface LNViewAnnotations
- (LNViewAnnotations)initWithCoder:(id)a3;
- (LNViewAnnotations)initWithEntities:(id)a3 intents:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNViewAnnotations

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNViewAnnotations *)self entities];
  [v4 encodeObject:v5 forKey:@"entities"];

  v6 = [(LNViewAnnotations *)self intents];
  [v4 encodeObject:v6 forKey:@"intents"];
}

- (LNViewAnnotations)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"entities"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"intents"];

  if (v12 | v8)
  {
    self = [(LNViewAnnotations *)self initWithEntities:v8 intents:v12];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (LNViewAnnotations)initWithEntities:(id)a3 intents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LNViewAnnotations;
  v9 = [(LNViewAnnotations *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entities, a3);
    objc_storeStrong(&v10->_intents, a4);
    v11 = v10;
  }

  return v10;
}

@end