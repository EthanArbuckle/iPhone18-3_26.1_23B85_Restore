@interface BMResourceSpecifier
+ (id)resourceFromContainer:(id)a3 withType:(unint64_t)a4 name:(id)a5 descriptors:(id)a6;
- (BMResourceSpecifier)initWithCoder:(id)a3;
- (BMResourceSpecifier)initWithType:(unint64_t)a3 name:(id)a4 descriptors:(id)a5 options:(unsigned __int8)a6;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%lu):", type];
  }

  else
  {
    v4 = off_1E796B210[type];
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

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<BMResource: %@%@%@%@>", v4, self->_name, v7, v10];

  return v11;
}

- (BMResourceSpecifier)initWithType:(unint64_t)a3 name:(id)a4 descriptors:(id)a5 options:(unsigned __int8)a6
{
  v10 = a4;
  v11 = a5;
  if (BMIdentifierIsPathSafe(v10))
  {
    v21.receiver = self;
    v21.super_class = BMResourceSpecifier;
    v12 = [(BMResourceSpecifier *)&v21 init];
    v13 = v12;
    if (v12)
    {
      v12->_type = a3;
      v14 = [v10 copy];
      name = v13->_name;
      v13->_name = v14;

      v16 = [v11 copy];
      descriptors = v13->_descriptors;
      v13->_descriptors = v16;

      v13->_options = a6;
    }

    self = v13;
    v18 = self;
  }

  else
  {
    v19 = __biome_log_for_category(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BMResourceSpecifier initWithType:v10 name:v19 descriptors:? options:?];
    }

    v18 = 0;
  }

  return v18;
}

+ (id)resourceFromContainer:(id)a3 withType:(unint64_t)a4 name:(id)a5 descriptors:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [objc_alloc(objc_opt_class()) initWithType:a4 name:v10 descriptors:v9 options:{objc_msgSend(a3, "isInUserVault")}];

  return v11;
}

- (BMResourceSpecifier)initWithCoder:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"descriptors"];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = -[BMResourceSpecifier initWithType:name:descriptors:options:](self, "initWithType:name:descriptors:options:", v5, v6, v10, [v4 decodeInt32ForKey:@"options"]);
  if (!v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Decoding failure";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v12 errorWithDomain:@"Biome" code:-1 userInfo:v13];
    [v4 failWithError:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_descriptors forKey:@"descriptors"];
  [v5 encodeInt32:self->_options forKey:@"options"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == v4[2] && [(NSString *)self->_name isEqual:v4[3]]&& [(NSArray *)self->_descriptors isEqual:v4[5]]&& self->_options == *(v4 + 8);

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