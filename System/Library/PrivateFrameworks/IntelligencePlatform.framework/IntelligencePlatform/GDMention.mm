@interface GDMention
- (GDMention)initWithCoder:(id)coder;
- (GDMention)initWithSpan:(id)span entityClass:(id)class score:(id)score;
- (GDMention)initWithSpan:(id)span entityClasses:(id)classes score:(id)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDMention

- (GDMention)initWithSpan:(id)span entityClasses:(id)classes score:(id)score
{
  spanCopy = span;
  classesCopy = classes;
  scoreCopy = score;
  v22.receiver = self;
  v22.super_class = GDMention;
  v11 = [(GDMention *)&v22 init];
  if (v11)
  {
    v12 = [spanCopy copy];
    span = v11->_span;
    v11->_span = v12;

    if ([classesCopy count])
    {
      v14 = [classesCopy objectAtIndexedSubscript:0];
      v15 = [v14 copy];
      entityClass = v11->_entityClass;
      v11->_entityClass = v15;
    }

    else
    {
      v14 = v11->_entityClass;
      v11->_entityClass = 0;
    }

    v17 = [classesCopy copy];
    entityClasses = v11->_entityClasses;
    v11->_entityClasses = v17;

    v19 = [scoreCopy copy];
    score = v11->_score;
    v11->_score = v19;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  span = [(GDMention *)self span];
  entityClasses = [(GDMention *)self entityClasses];
  score = [(GDMention *)self score];
  stringValue = [score stringValue];
  v8 = [v3 stringWithFormat:@"<GDMention: span: %@, entityClasses: %@, score: %@>", span, entityClasses, stringValue];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  span = self->_span;
  entityClass = self->_entityClass;
  score = self->_score;

  return MEMORY[0x1EEE66B58](v4, sel_initWithSpan_entityClass_score_);
}

- (GDMention)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_span);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel_entityClasses);
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

    if (v12 || ([coderCopy error], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromSelector(sel_score);
      v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

      if (v15 || ([coderCopy error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        self = [(GDMention *)self initWithSpan:v7 entityClasses:v12 score:v15];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26[0] = @"GDMention span is nil";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v20 = [v18 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v19];
      [coderCopy failWithError:v20];
    }

    selfCopy = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  span = self->_span;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_span);
  [coderCopy encodeObject:span forKey:v6];

  entityClasses = self->_entityClasses;
  v8 = NSStringFromSelector(sel_entityClasses);
  [coderCopy encodeObject:entityClasses forKey:v8];

  score = self->_score;
  v10 = NSStringFromSelector(sel_score);
  [coderCopy encodeObject:score forKey:v10];
}

- (GDMention)initWithSpan:(id)span entityClass:(id)class score:(id)score
{
  v24[1] = *MEMORY[0x1E69E9840];
  spanCopy = span;
  classCopy = class;
  scoreCopy = score;
  v23.receiver = self;
  v23.super_class = GDMention;
  v11 = [(GDMention *)&v23 init];
  if (v11)
  {
    v12 = [spanCopy copy];
    span = v11->_span;
    v11->_span = v12;

    v14 = [classCopy copy];
    entityClass = v11->_entityClass;
    v11->_entityClass = v14;

    v16 = [classCopy copy];
    v24[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    entityClasses = v11->_entityClasses;
    v11->_entityClasses = v17;

    v19 = [scoreCopy copy];
    score = v11->_score;
    v11->_score = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

@end