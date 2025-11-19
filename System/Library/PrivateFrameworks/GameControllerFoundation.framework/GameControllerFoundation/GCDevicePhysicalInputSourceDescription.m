@interface GCDevicePhysicalInputSourceDescription
+ (id)sourceWithElementAliases:(id)a3 localizedName:(id)a4 sfSymbolsName:(id)a5 direction:(unint64_t)a6;
+ (id)sourceWithElementAliases:(id)a3 localizedName:(id)a4 symbol:(id)a5 direction:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (GCDevicePhysicalInputSourceDescription)initWithCoder:(id)a3;
- (GCDevicePhysicalInputSourceDescription)initWithElementAliases:(id)a3 localizedName:(id)a4 symbol:(id)a5 direction:(unint64_t)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDevicePhysicalInputSourceDescription

+ (id)sourceWithElementAliases:(id)a3 localizedName:(id)a4 symbol:(id)a5 direction:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithElementAliases:v12 localizedName:v11 symbol:v10 direction:a6];

  return v13;
}

+ (id)sourceWithElementAliases:(id)a3 localizedName:(id)a4 sfSymbolsName:(id)a5 direction:(unint64_t)a6
{
  if (a5)
  {
    v10 = a4;
    v11 = a3;
    v12 = [GCDevicePhysicalInputSymbolDescription symbolWithSFSymbolsName:a5];
    v13 = [a1 sourceWithElementAliases:v11 localizedName:v10 symbol:v12 direction:a6];
  }

  else
  {
    v11 = a4;
    v12 = a3;
    v13 = [a1 sourceWithElementAliases:v12 localizedName:v11 symbol:0 direction:a6];
  }

  return v13;
}

- (GCDevicePhysicalInputSourceDescription)initWithElementAliases:(id)a3 localizedName:(id)a4 symbol:(id)a5 direction:(unint64_t)a6
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  if (![v13 count])
  {
    [GCDevicePhysicalInputSourceDescription initWithElementAliases:a2 localizedName:self symbol:? direction:?];
  }

  v22.receiver = self;
  v22.super_class = GCDevicePhysicalInputSourceDescription;
  v14 = [(GCDevicePhysicalInputSourceDescription *)&v22 init];
  v15 = [v13 copy];

  elementAliases = v14->_elementAliases;
  v14->_elementAliases = v15;

  v17 = [v12 copy];
  elementLocalizedName = v14->_elementLocalizedName;
  v14->_elementLocalizedName = v17;

  v19 = [v11 copy];
  symbol = v14->_symbol;
  v14->_symbol = v19;

  v14->_direction = a6;
  return v14;
}

- (GCDevicePhysicalInputSourceDescription)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"elementAliases"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"elementLocalizedName"];

  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v14 = [v5 decodeIntegerForKey:@"direction"];

  v15 = [(GCDevicePhysicalInputSourceDescription *)self initWithElementAliases:v8 localizedName:v12 symbol:v13 direction:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  elementAliases = self->_elementAliases;
  v5 = a3;
  [v5 encodeObject:elementAliases forKey:@"elementAliases"];
  [v5 encodeObject:self->_elementLocalizedName forKey:@"elementLocalizedName"];
  [v5 encodeObject:self->_symbol forKey:@"symbol"];
  [v5 encodeInteger:self->_direction forKey:@"direction"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSSet *)self->_elementAliases isEqual:v4[1]]&& ((elementLocalizedName = self->_elementLocalizedName, elementLocalizedName == v4[2]) || [(NSString *)elementLocalizedName isEqual:?]) && ((symbol = self->_symbol, symbol == v4[3]) || [(GCDevicePhysicalInputSymbolDescription *)symbol isEqual:?]) && self->_direction == v4[4];

  return v7;
}

- (id)description
{
  v3 = [(NSSet *)self->_elementAliases allObjects];
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = objc_opt_new();
  v6 = v5;
  direction = self->_direction;
  if (direction)
  {
    [v5 addObject:@"up"];
    direction = self->_direction;
    if ((direction & 4) == 0)
    {
LABEL_3:
      if ((direction & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((direction & 4) == 0)
  {
    goto LABEL_3;
  }

  [v6 addObject:@"down"];
  direction = self->_direction;
  if ((direction & 8) == 0)
  {
LABEL_4:
    if ((direction & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v6 addObject:@"left"];
  if ((self->_direction & 2) != 0)
  {
LABEL_5:
    [v6 addObject:@"right"];
  }

LABEL_6:
  v8 = MEMORY[0x1E696AEC0];
  elementLocalizedName = self->_elementLocalizedName;
  symbol = self->_symbol;
  v11 = [v6 componentsJoinedByString:@"|"];
  v12 = [v8 stringWithFormat:@"[%@] '%@' '%@' %@", v4, elementLocalizedName, symbol, v11];

  return v12;
}

- (void)initWithElementAliases:(uint64_t)a1 localizedName:(uint64_t)a2 symbol:direction:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCDevicePhysicalInputSourceDescription.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %s", "elementAliases.count > 0"}];
}

@end