@interface GCDevicePhysicalInputSymbolDescription
+ (id)symbolWithSFSymbolsName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (GCDevicePhysicalInputSymbolDescription)initWithCoder:(id)a3;
- (GCDevicePhysicalInputSymbolDescription)initWithSFSymbolsName:(id)a3;
@end

@implementation GCDevicePhysicalInputSymbolDescription

+ (id)symbolWithSFSymbolsName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSFSymbolsName:v4];

  return v5;
}

- (GCDevicePhysicalInputSymbolDescription)initWithSFSymbolsName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(GCDevicePhysicalInputSymbolDescription *)a2 initWithSFSymbolsName:?];
  }

  v10.receiver = self;
  v10.super_class = GCDevicePhysicalInputSymbolDescription;
  v6 = [(GCDevicePhysicalInputSymbolDescription *)&v10 init];
  v7 = [v5 copy];
  sfSymbolsName = v6->_sfSymbolsName;
  v6->_sfSymbolsName = v7;

  return v6;
}

- (GCDevicePhysicalInputSymbolDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolsName"];

  v6 = [(GCDevicePhysicalInputSymbolDescription *)self initWithSFSymbolsName:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_sfSymbolsName isEqual:v4[1]];
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