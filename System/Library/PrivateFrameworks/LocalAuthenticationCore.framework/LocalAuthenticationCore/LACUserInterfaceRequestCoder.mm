@interface LACUserInterfaceRequestCoder
- (id)_deserialize:(id)_deserialize;
- (id)_encodingKey;
- (id)decode:(id)decode;
- (id)encode:(id)encode;
@end

@implementation LACUserInterfaceRequestCoder

- (id)encode:(id)encode
{
  v11[1] = *MEMORY[0x1E69E9840];
  encodeCopy = encode;
  _encodingKey = [(LACUserInterfaceRequestCoder *)self _encodingKey];
  v6 = [(LACUserInterfaceRequestCoder *)self _serialize:encodeCopy];

  if (v6)
  {
    v10 = _encodingKey;
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

- (id)decode:(id)decode
{
  decodeCopy = decode;
  _encodingKey = [(LACUserInterfaceRequestCoder *)self _encodingKey];
  v6 = [decodeCopy objectForKeyedSubscript:_encodingKey];

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

- (id)_deserialize:(id)_deserialize
{
  v3 = MEMORY[0x1E696ACD0];
  _deserializeCopy = _deserialize;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:_deserializeCopy error:0];

  return v5;
}

- (id)_encodingKey
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end