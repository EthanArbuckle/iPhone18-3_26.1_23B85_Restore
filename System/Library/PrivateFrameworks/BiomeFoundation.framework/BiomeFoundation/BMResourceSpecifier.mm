@interface BMResourceSpecifier
+ (id)resourceFromContainer:(id)container withType:(unint64_t)type name:(id)name descriptors:(id)descriptors;
- (BMResourceSpecifier)initWithCoder:(id)coder;
- (BMResourceSpecifier)initWithType:(unint64_t)type name:(id)name descriptors:(id)descriptors options:(unsigned __int8)options;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMResourceSpecifier

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_name hash];
  v6 = v5 ^ [(NSArray *)self->_descriptors hash]^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_options];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  type = self->_type;
  if (type >= 6)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%lu):", type];
  }

  else
  {
    type = off_1E796B210[type];
  }

  if ([(NSArray *)self->_descriptors count])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(NSArray *)self->_descriptors componentsJoinedByString:@", "];
    v7 = [v5 stringWithFormat:@" [%@]", v6];
  }

  else
  {
    v7 = &stru_1F20E2850;
  }

  if (self->_options)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = BMResourceOptionsDescription(self->_options);
    v10 = [v8 stringWithFormat:@" options: %@", v9];
  }

  else
  {
    v10 = &stru_1F20E2850;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<BMResource: %@%@%@%@>", type, self->_name, v7, v10];

  return v11;
}

- (BMResourceSpecifier)initWithType:(unint64_t)type name:(id)name descriptors:(id)descriptors options:(unsigned __int8)options
{
  nameCopy = name;
  descriptorsCopy = descriptors;
  if (BMIdentifierIsPathSafe(nameCopy))
  {
    v21.receiver = self;
    v21.super_class = BMResourceSpecifier;
    v12 = [(BMResourceSpecifier *)&v21 init];
    v13 = v12;
    if (v12)
    {
      v12->_type = type;
      v14 = [nameCopy copy];
      name = v13->_name;
      v13->_name = v14;

      v16 = [descriptorsCopy copy];
      descriptors = v13->_descriptors;
      v13->_descriptors = v16;

      v13->_options = options;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v19 = __biome_log_for_category(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BMResourceSpecifier initWithType:nameCopy name:v19 descriptors:? options:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)resourceFromContainer:(id)container withType:(unint64_t)type name:(id)name descriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  nameCopy = name;
  v11 = [objc_alloc(objc_opt_class()) initWithType:type name:nameCopy descriptors:descriptorsCopy options:{objc_msgSend(container, "isInUserVault")}];

  return v11;
}

- (BMResourceSpecifier)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"descriptors"];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = -[BMResourceSpecifier initWithType:name:descriptors:options:](self, "initWithType:name:descriptors:options:", v5, v6, v10, [coderCopy decodeInt32ForKey:@"options"]);
  if (!v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Decoding failure";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v12 errorWithDomain:@"Biome" code:-1 userInfo:v13];
    [coderCopy failWithError:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_descriptors forKey:@"descriptors"];
  [coderCopy encodeInt32:self->_options forKey:@"options"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy[2] && [(NSString *)self->_name isEqual:equalCopy[3]]&& [(NSArray *)self->_descriptors isEqual:equalCopy[5]]&& self->_options == *(equalCopy + 8);

  return v5;
}

- (void)initWithType:(uint64_t)a1 name:(NSObject *)a2 descriptors:options:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "Invalid resource name %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end