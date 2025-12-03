@interface FMDRepairDeviceContext
- (FMDRepairDeviceContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDRepairDeviceContext

- (FMDRepairDeviceContext)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = FMDRepairDeviceContext;
  v5 = [(FMDRepairDeviceContext *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"selectedDevices"];
    selectedDevices = v5->_selectedDevices;
    v5->_selectedDevices = v9;

    v11 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"searchIdentifiers"];
    searchIdentifiers = v5->_searchIdentifiers;
    v5->_searchIdentifiers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralToken"];
    ephemeralToken = v5->_ephemeralToken;
    v5->_ephemeralToken = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"repairDeviceMode"];
    v5->_repairDeviceMode = [v18 integerValue];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selectedDevices = self->_selectedDevices;
  coderCopy = coder;
  [coderCopy encodeObject:selectedDevices forKey:@"selectedDevices"];
  [coderCopy encodeObject:self->_searchIdentifiers forKey:@"searchIdentifiers"];
  [coderCopy encodeObject:self->_ephemeralToken forKey:@"ephemeralToken"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_repairDeviceMode];
  [coderCopy encodeObject:v6 forKey:@"repairDeviceMode"];
}

@end