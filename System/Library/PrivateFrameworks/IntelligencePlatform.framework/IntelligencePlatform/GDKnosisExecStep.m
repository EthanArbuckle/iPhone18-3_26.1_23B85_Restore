@interface GDKnosisExecStep
- (GDKnosisExecStep)initWithCoder:(id)a3;
- (GDKnosisExecStep)initWithKgQueryNode:(id)a3 indexQuery:(id)a4 messages:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKnosisExecStep

- (GDKnosisExecStep)initWithCoder:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_kgQueryNode);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [v4 error];

  if (!v8)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_indexQuery);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];

    v13 = [v4 error];

    if (v13)
    {
      v9 = 0;
LABEL_10:

      goto LABEL_11;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_messages);
    v16 = [v4 decodeArrayOfObjectsOfClass:v14 forKey:v15];

    if (!v16)
    {
      v17 = [v4 error];

      if (v17)
      {
        v9 = 0;
        goto LABEL_9;
      }

      v20 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"GDKnosisExecStep messages is nil";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v22 = [v20 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v21];
      [v4 failWithError:v22];
    }

    self = [(GDKnosisExecStep *)self initWithKgQueryNode:v7 indexQuery:v12 messages:v16];
    v9 = self;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  kgQueryNode = self->_kgQueryNode;
  v5 = a3;
  v6 = NSStringFromSelector(sel_kgQueryNode);
  [v5 encodeObject:kgQueryNode forKey:v6];

  indexQuery = self->_indexQuery;
  v8 = NSStringFromSelector(sel_indexQuery);
  [v5 encodeObject:indexQuery forKey:v8];

  messages = self->_messages;
  v10 = NSStringFromSelector(sel_messages);
  [v5 encodeObject:messages forKey:v10];
}

- (GDKnosisExecStep)initWithKgQueryNode:(id)a3 indexQuery:(id)a4 messages:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = GDKnosisExecStep;
  v11 = [(GDKnosisExecStep *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    kgQueryNode = v11->_kgQueryNode;
    v11->_kgQueryNode = v12;

    v14 = [v9 copy];
    indexQuery = v11->_indexQuery;
    v11->_indexQuery = v14;

    v16 = [v10 copy];
    messages = v11->_messages;
    v11->_messages = v16;
  }

  return v11;
}

@end