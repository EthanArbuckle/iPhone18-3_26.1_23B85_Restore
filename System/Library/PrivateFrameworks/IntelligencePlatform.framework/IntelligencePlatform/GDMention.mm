@interface GDMention
- (GDMention)initWithCoder:(id)a3;
- (GDMention)initWithSpan:(id)a3 entityClass:(id)a4 score:(id)a5;
- (GDMention)initWithSpan:(id)a3 entityClasses:(id)a4 score:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDMention

- (GDMention)initWithSpan:(id)a3 entityClasses:(id)a4 score:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = GDMention;
  v11 = [(GDMention *)&v22 init];
  if (v11)
  {
    v12 = [v8 copy];
    span = v11->_span;
    v11->_span = v12;

    if ([v9 count])
    {
      v14 = [v9 objectAtIndexedSubscript:0];
      v15 = [v14 copy];
      entityClass = v11->_entityClass;
      v11->_entityClass = v15;
    }

    else
    {
      v14 = v11->_entityClass;
      v11->_entityClass = 0;
    }

    v17 = [v9 copy];
    entityClasses = v11->_entityClasses;
    v11->_entityClasses = v17;

    v19 = [v10 copy];
    score = v11->_score;
    v11->_score = v19;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GDMention *)self span];
  v5 = [(GDMention *)self entityClasses];
  v6 = [(GDMention *)self score];
  v7 = [v6 stringValue];
  v8 = [v3 stringWithFormat:@"<GDMention: span: %@, entityClasses: %@, score: %@>", v4, v5, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  span = self->_span;
  entityClass = self->_entityClass;
  score = self->_score;

  return MEMORY[0x1EEE66B58](v4, sel_initWithSpan_entityClass_score_);
}

- (GDMention)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_span);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel_entityClasses);
    v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];

    if (v12 || ([v4 error], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromSelector(sel_score);
      v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

      if (v15 || ([v4 error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        self = [(GDMention *)self initWithSpan:v7 entityClasses:v12 score:v15];
        v16 = self;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = [v4 error];

    if (!v17)
    {
      v18 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26[0] = @"GDMention span is nil";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v20 = [v18 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v19];
      [v4 failWithError:v20];
    }

    v16 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  span = self->_span;
  v5 = a3;
  v6 = NSStringFromSelector(sel_span);
  [v5 encodeObject:span forKey:v6];

  entityClasses = self->_entityClasses;
  v8 = NSStringFromSelector(sel_entityClasses);
  [v5 encodeObject:entityClasses forKey:v8];

  score = self->_score;
  v10 = NSStringFromSelector(sel_score);
  [v5 encodeObject:score forKey:v10];
}

- (GDMention)initWithSpan:(id)a3 entityClass:(id)a4 score:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = GDMention;
  v11 = [(GDMention *)&v23 init];
  if (v11)
  {
    v12 = [v8 copy];
    span = v11->_span;
    v11->_span = v12;

    v14 = [v9 copy];
    entityClass = v11->_entityClass;
    v11->_entityClass = v14;

    v16 = [v9 copy];
    v24[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    entityClasses = v11->_entityClasses;
    v11->_entityClasses = v17;

    v19 = [v10 copy];
    score = v11->_score;
    v11->_score = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

@end