@interface GDKnosisExecStep
- (GDKnosisExecStep)initWithCoder:(id)coder;
- (GDKnosisExecStep)initWithKgQueryNode:(id)node indexQuery:(id)query messages:(id)messages;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKnosisExecStep

- (GDKnosisExecStep)initWithCoder:(id)coder
{
  v24[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_kgQueryNode);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  error = [coderCopy error];

  if (!error)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_indexQuery);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
LABEL_10:

      goto LABEL_11;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_messages);
    v16 = [coderCopy decodeArrayOfObjectsOfClass:v14 forKey:v15];

    if (!v16)
    {
      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
        goto LABEL_9;
      }

      v20 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"GDKnosisExecStep messages is nil";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v22 = [v20 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v21];
      [coderCopy failWithError:v22];
    }

    self = [(GDKnosisExecStep *)self initWithKgQueryNode:v7 indexQuery:v12 messages:v16];
    selfCopy = self;
LABEL_9:

    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  kgQueryNode = self->_kgQueryNode;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_kgQueryNode);
  [coderCopy encodeObject:kgQueryNode forKey:v6];

  indexQuery = self->_indexQuery;
  v8 = NSStringFromSelector(sel_indexQuery);
  [coderCopy encodeObject:indexQuery forKey:v8];

  messages = self->_messages;
  v10 = NSStringFromSelector(sel_messages);
  [coderCopy encodeObject:messages forKey:v10];
}

- (GDKnosisExecStep)initWithKgQueryNode:(id)node indexQuery:(id)query messages:(id)messages
{
  nodeCopy = node;
  queryCopy = query;
  messagesCopy = messages;
  v19.receiver = self;
  v19.super_class = GDKnosisExecStep;
  v11 = [(GDKnosisExecStep *)&v19 init];
  if (v11)
  {
    v12 = [nodeCopy copy];
    kgQueryNode = v11->_kgQueryNode;
    v11->_kgQueryNode = v12;

    v14 = [queryCopy copy];
    indexQuery = v11->_indexQuery;
    v11->_indexQuery = v14;

    v16 = [messagesCopy copy];
    messages = v11->_messages;
    v11->_messages = v16;
  }

  return v11;
}

@end