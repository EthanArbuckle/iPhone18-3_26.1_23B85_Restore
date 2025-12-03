@interface HDWorkoutDefaultSessionRecoveryConfiguration
- (HDWorkoutDefaultSessionRecoveryConfiguration)initWithCoder:(id)coder;
- (HDWorkoutDefaultSessionRecoveryConfiguration)initWithGeneratedTypes:(id)types moveMode:(int64_t)mode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDWorkoutDefaultSessionRecoveryConfiguration

- (HDWorkoutDefaultSessionRecoveryConfiguration)initWithGeneratedTypes:(id)types moveMode:(int64_t)mode
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = HDWorkoutDefaultSessionRecoveryConfiguration;
  v7 = [(HDWorkoutDefaultSessionRecoveryConfiguration *)&v11 init];
  if (v7)
  {
    v8 = [typesCopy copy];
    generatedTypes = v7->_generatedTypes;
    v7->_generatedTypes = v8;

    v7->_moveMode = mode;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  generatedTypes = self->_generatedTypes;
  coderCopy = coder;
  allObjects = [(NSSet *)generatedTypes allObjects];
  [coderCopy encodeObject:allObjects forKey:@"generated_types"];

  [coderCopy encodeInteger:self->_moveMode forKey:@"move_mode"];
}

- (HDWorkoutDefaultSessionRecoveryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"generated_types"];
  v6 = [coderCopy decodeIntegerForKey:@"move_mode"];

  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v8 = [(HDWorkoutDefaultSessionRecoveryConfiguration *)self initWithGeneratedTypes:v7 moveMode:v6];

  return v8;
}

@end