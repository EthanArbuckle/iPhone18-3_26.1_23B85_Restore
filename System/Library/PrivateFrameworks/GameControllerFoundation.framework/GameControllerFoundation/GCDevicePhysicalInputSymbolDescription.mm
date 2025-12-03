@interface GCDevicePhysicalInputSymbolDescription
+ (id)symbolWithSFSymbolsName:(id)name;
- (BOOL)isEqual:(id)equal;
- (GCDevicePhysicalInputSymbolDescription)initWithCoder:(id)coder;
- (GCDevicePhysicalInputSymbolDescription)initWithSFSymbolsName:(id)name;
@end

@implementation GCDevicePhysicalInputSymbolDescription

+ (id)symbolWithSFSymbolsName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithSFSymbolsName:nameCopy];

  return v5;
}

- (GCDevicePhysicalInputSymbolDescription)initWithSFSymbolsName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    [(GCDevicePhysicalInputSymbolDescription *)a2 initWithSFSymbolsName:?];
  }

  v10.receiver = self;
  v10.super_class = GCDevicePhysicalInputSymbolDescription;
  v6 = [(GCDevicePhysicalInputSymbolDescription *)&v10 init];
  v7 = [nameCopy copy];
  sfSymbolsName = v6->_sfSymbolsName;
  v6->_sfSymbolsName = v7;

  return v6;
}

- (GCDevicePhysicalInputSymbolDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolsName"];

  v6 = [(GCDevicePhysicalInputSymbolDescription *)self initWithSFSymbolsName:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_sfSymbolsName isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithSFSymbolsName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCDevicePhysicalInputSymbolDescription.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %s", "symbolName != nil"}];
}

@end