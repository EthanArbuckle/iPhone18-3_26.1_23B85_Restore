@interface GCIORegistryEntry
- (BOOL)setProperty:(id)property forKey:(id)key;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)name;
- (id)propertyForKey:(id)key;
- (id)propertyForKey:(id)key inPlane:(const char *)plane options:(unsigned int)options;
- (id)redactedDescription;
@end

@implementation GCIORegistryEntry

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  className = [(GCIOObject *)self className];
  v5 = [v3 stringWithFormat:@"<Kernel/%@ registryEntryID='%#010llx'>", className, -[GCIORegistryEntry registryEntryID](self, "registryEntryID")];

  return v5;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  className = [(GCIOObject *)self className];
  v5 = [v3 stringWithFormat:@"<Kernel/%@ registryEntryID='%#010llx'>", className, -[GCIORegistryEntry registryEntryID](self, "registryEntryID")];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  className = [(GCIOObject *)self className];
  v7 = [v3 stringWithFormat:@"<%@ %p Kernel/%@ registryEntryID='%#010llx'>", v5, self, className, -[GCIORegistryEntry registryEntryID](self, "registryEntryID")];

  return v7;
}

- (id)propertyForKey:(id)key inPlane:(const char *)plane options:(unsigned int)options
{
  keyCopy = key;
  port = [(GCIOObject *)self port];
  v10 = IORegistryEntrySearchCFProperty(port, plane, keyCopy, *MEMORY[0x1E695E480], options);

  return v10;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  port = [(GCIOObject *)self port];
  CFProperty = IORegistryEntryCreateCFProperty(port, keyCopy, *MEMORY[0x1E695E480], 0);

  return CFProperty;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  port = [(GCIOObject *)self port];
  v9 = IORegistryEntrySetCFProperty(port, keyCopy, propertyCopy);

  if (v9)
  {
    [(GCIORegistryEntry *)self setProperty:keyCopy forKey:v9];
  }

  return v9 == 0;
}

- (NSString)name
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  port = [(GCIOObject *)self port];
  if (MEMORY[0x1D38AAC10](port, v6))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:4];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setProperty:(int)a3 forKey:.cold.1(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = _gc_log_iokit();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412802;
    v9 = a1;
    v10 = 2114;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_error_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_ERROR, "%@ Error setting property '%{public}@': %{mach.errno}d", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end