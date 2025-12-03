@interface MSVBidirectionalDictionary
+ (id)bidirectionalDictionary;
- (BOOL)isEqual:(id)equal;
- (MSVBidirectionalDictionary)initWithCoder:(id)coder;
- (MSVBidirectionalDictionary)initWithDictionary:(id)dictionary;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSVBidirectionalDictionary

+ (id)bidirectionalDictionary
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(NSDictionary *)self->_keyToObjectDictionary isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MSVMutableBidirectionalDictionary alloc];
  keyToObjectDictionary = self->_keyToObjectDictionary;

  return [(MSVMutableBidirectionalDictionary *)v4 initWithDictionary:keyToObjectDictionary];
}

- (void)encodeWithCoder:(id)coder
{
  keyToObjectDictionary = self->_keyToObjectDictionary;
  coderCopy = coder;
  v5 = [(NSDictionary *)keyToObjectDictionary copy];
  [coderCopy encodeObject:v5 forKey:@"keyToObjectDictionary"];
}

- (MSVBidirectionalDictionary)initWithCoder:(id)coder
{
  coderCopy = coder;
  allowedClasses = [coderCopy allowedClasses];
  v6 = [allowedClasses setByAddingObject:objc_opt_class()];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"keyToObjectDictionary"];

  v8 = [(MSVBidirectionalDictionary *)self initWithDictionary:v7];
  return v8;
}

- (MSVBidirectionalDictionary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = MSVBidirectionalDictionary;
  v5 = [(MSVBidirectionalDictionary *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    keyToObjectDictionary = v5->_keyToObjectDictionary;
    v5->_keyToObjectDictionary = v6;

    if (v5->_keyToObjectDictionary)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = v5->_keyToObjectDictionary;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __49__MSVBidirectionalDictionary_initWithDictionary___block_invoke;
      v14[3] = &unk_1E7982030;
      v10 = v8;
      v15 = v10;
      [(NSDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v14];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 copy];
    objectToKeyDictionary = v5->_objectToKeyDictionary;
    v5->_objectToKeyDictionary = v11;
  }

  return v5;
}

@end