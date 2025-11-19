@interface GCDevicePhysicalInputElementDescription
+ (id)descriptionWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (GCDevicePhysicalInputElementDescription)init;
- (GCDevicePhysicalInputElementDescription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDevicePhysicalInputElementDescription

+ (id)descriptionWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setIdentifier:v3];

  return v4;
}

- (GCDevicePhysicalInputElementDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputElementDescription;
  return [(GCDevicePhysicalInputViewDescription *)&v3 init];
}

- (GCDevicePhysicalInputElementDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCDevicePhysicalInputElementDescription *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"aliases"];
  aliases = v5->_aliases;
  v5->_aliases = v11;

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"localizedName"];
  localizedName = v5->_localizedName;
  v5->_localizedName = v16;

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];

  symbol = v5->_symbol;
  v5->_symbol = v18;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_aliases forKey:@"aliases"];
  [v5 encodeObject:self->_localizedName forKey:@"localizedName"];
  [v5 encodeObject:self->_symbol forKey:@"symbol"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  objc_storeStrong(v4 + 2, self->_identifier);
  objc_storeStrong(v4 + 3, self->_aliases);
  objc_storeStrong(v4 + 4, self->_localizedName);
  objc_storeStrong(v4 + 5, self->_symbol);
  return v4;
}

- (BOOL)validate:(id *)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!self->_identifier)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A588];
      v14[0] = @"Element must have an 'identifier'.";
      v6 = MEMORY[0x1E695DF20];
      v7 = v14;
      v8 = &v13;
LABEL_8:
      v9 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];
      *a3 = [v5 errorWithDomain:@"GCDevicePhysicalInputError" code:0 userInfo:v9];
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (![(NSSet *)self->_aliases count])
  {
    if (a3)
    {
      v5 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A588];
      v12 = @"Element must have one or more 'aliases'.";
      v6 = MEMORY[0x1E695DF20];
      v7 = &v12;
      v8 = &v11;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((identifier = self->_identifier, identifier == v4[2]) || [(NSString *)identifier isEqual:?]) && ((aliases = self->_aliases, aliases == v4[3]) || [(NSSet *)aliases isEqual:?]) && ((localizedName = self->_localizedName, localizedName == v4[4]) || [(NSString *)localizedName isEqual:?]))
  {
    symbol = self->_symbol;
    if (symbol == v4[5])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(GCDevicePhysicalInputSymbolDescription *)symbol isEqual:?];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  v5 = [(NSSet *)self->_aliases allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"Element '%@' [%@] '%@'", identifier, v6, self->_localizedName];

  return v7;
}

@end