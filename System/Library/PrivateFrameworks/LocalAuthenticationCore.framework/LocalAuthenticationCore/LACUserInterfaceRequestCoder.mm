@interface LACUserInterfaceRequestCoder
- (id)_deserialize:(id)a3;
- (id)_encodingKey;
- (id)decode:(id)a3;
- (id)encode:(id)a3;
@end

@implementation LACUserInterfaceRequestCoder

- (id)encode:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LACUserInterfaceRequestCoder *)self _encodingKey];
  v6 = [(LACUserInterfaceRequestCoder *)self _serialize:v4];

  if (v6)
  {
    v10 = v5;
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)decode:(id)a3
{
  v4 = a3;
  v5 = [(LACUserInterfaceRequestCoder *)self _encodingKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(LACUserInterfaceRequestCoder *)self _deserialize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_deserialize:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];

  return v5;
}

- (id)_encodingKey
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end