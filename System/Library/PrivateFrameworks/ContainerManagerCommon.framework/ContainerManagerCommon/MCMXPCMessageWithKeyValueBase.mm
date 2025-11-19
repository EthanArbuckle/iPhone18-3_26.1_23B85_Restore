@interface MCMXPCMessageWithKeyValueBase
- (MCMXPCMessageWithKeyValueBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (id)value;
@end

@implementation MCMXPCMessageWithKeyValueBase

- (id)value
{
  result = self->_value;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithKeyValueBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v18.receiver = self;
  v18.super_class = MCMXPCMessageWithKeyValueBase;
  v9 = [(MCMXPCMessageWithKeyBase *)&v18 initWithXPCObject:v8 context:a4 error:a5];
  v10 = v9;
  if (!v9 || ((v17 = 1, [(MCMXPCMessageBase *)v9 nsObjectFromXPCObject:v8 key:"Value" error:&v17], v11 = objc_claimAutoreleasedReturnValue(), value = v10->_value, v10->_value = v11, value, !v10->_value) ? (v13 = v17 == 1) : (v13 = 1), v13))
  {
    v14 = v10;
  }

  else
  {
    if (a5)
    {
      *a5 = v17;
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end