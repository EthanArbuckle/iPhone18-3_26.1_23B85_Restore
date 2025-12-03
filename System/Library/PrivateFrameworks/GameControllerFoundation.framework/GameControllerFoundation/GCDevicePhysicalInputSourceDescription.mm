@interface GCDevicePhysicalInputSourceDescription
+ (id)sourceWithElementAliases:(id)aliases localizedName:(id)name sfSymbolsName:(id)symbolsName direction:(unint64_t)direction;
+ (id)sourceWithElementAliases:(id)aliases localizedName:(id)name symbol:(id)symbol direction:(unint64_t)direction;
- (BOOL)isEqual:(id)equal;
- (GCDevicePhysicalInputSourceDescription)initWithCoder:(id)coder;
- (GCDevicePhysicalInputSourceDescription)initWithElementAliases:(id)aliases localizedName:(id)name symbol:(id)symbol direction:(unint64_t)direction;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDevicePhysicalInputSourceDescription

+ (id)sourceWithElementAliases:(id)aliases localizedName:(id)name symbol:(id)symbol direction:(unint64_t)direction
{
  symbolCopy = symbol;
  nameCopy = name;
  aliasesCopy = aliases;
  v13 = [[self alloc] initWithElementAliases:aliasesCopy localizedName:nameCopy symbol:symbolCopy direction:direction];

  return v13;
}

+ (id)sourceWithElementAliases:(id)aliases localizedName:(id)name sfSymbolsName:(id)symbolsName direction:(unint64_t)direction
{
  if (symbolsName)
  {
    nameCopy = name;
    nameCopy2 = aliases;
    aliasesCopy2 = [GCDevicePhysicalInputSymbolDescription symbolWithSFSymbolsName:symbolsName];
    v13 = [self sourceWithElementAliases:nameCopy2 localizedName:nameCopy symbol:aliasesCopy2 direction:direction];
  }

  else
  {
    nameCopy2 = name;
    aliasesCopy2 = aliases;
    v13 = [self sourceWithElementAliases:aliasesCopy2 localizedName:nameCopy2 symbol:0 direction:direction];
  }

  return v13;
}

- (GCDevicePhysicalInputSourceDescription)initWithElementAliases:(id)aliases localizedName:(id)name symbol:(id)symbol direction:(unint64_t)direction
{
  symbolCopy = symbol;
  nameCopy = name;
  aliasesCopy = aliases;
  if (![aliasesCopy count])
  {
    [GCDevicePhysicalInputSourceDescription initWithElementAliases:a2 localizedName:self symbol:? direction:?];
  }

  v22.receiver = self;
  v22.super_class = GCDevicePhysicalInputSourceDescription;
  v14 = [(GCDevicePhysicalInputSourceDescription *)&v22 init];
  v15 = [aliasesCopy copy];

  elementAliases = v14->_elementAliases;
  v14->_elementAliases = v15;

  v17 = [nameCopy copy];
  elementLocalizedName = v14->_elementLocalizedName;
  v14->_elementLocalizedName = v17;

  v19 = [symbolCopy copy];
  symbol = v14->_symbol;
  v14->_symbol = v19;

  v14->_direction = direction;
  return v14;
}

- (GCDevicePhysicalInputSourceDescription)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"elementAliases"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"elementLocalizedName"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v14 = [coderCopy decodeIntegerForKey:@"direction"];

  v15 = [(GCDevicePhysicalInputSourceDescription *)self initWithElementAliases:v8 localizedName:v12 symbol:v13 direction:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  elementAliases = self->_elementAliases;
  coderCopy = coder;
  [coderCopy encodeObject:elementAliases forKey:@"elementAliases"];
  [coderCopy encodeObject:self->_elementLocalizedName forKey:@"elementLocalizedName"];
  [coderCopy encodeObject:self->_symbol forKey:@"symbol"];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSSet *)self->_elementAliases isEqual:equalCopy[1]]&& ((elementLocalizedName = self->_elementLocalizedName, elementLocalizedName == equalCopy[2]) || [(NSString *)elementLocalizedName isEqual:?]) && ((symbol = self->_symbol, symbol == equalCopy[3]) || [(GCDevicePhysicalInputSymbolDescription *)symbol isEqual:?]) && self->_direction == equalCopy[4];

  return v7;
}

- (id)description
{
  allObjects = [(NSSet *)self->_elementAliases allObjects];
  v4 = [allObjects componentsJoinedByString:{@", "}];

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