@interface HDWorkoutDefaultSessionRecoveryConfiguration
- (HDWorkoutDefaultSessionRecoveryConfiguration)initWithCoder:(id)a3;
- (HDWorkoutDefaultSessionRecoveryConfiguration)initWithGeneratedTypes:(id)a3 moveMode:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDWorkoutDefaultSessionRecoveryConfiguration

- (HDWorkoutDefaultSessionRecoveryConfiguration)initWithGeneratedTypes:(id)a3 moveMode:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDWorkoutDefaultSessionRecoveryConfiguration;
  v7 = [(HDWorkoutDefaultSessionRecoveryConfiguration *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    generatedTypes = v7->_generatedTypes;
    v7->_generatedTypes = v8;

    v7->_moveMode = a4;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  generatedTypes = self->_generatedTypes;
  v6 = a3;
  v5 = [(NSSet *)generatedTypes allObjects];
  [v6 encodeObject:v5 forKey:@"generated_types"];

  [v6 encodeInteger:self->_moveMode forKey:@"move_mode"];
}

- (HDWorkoutDefaultSessionRecoveryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"generated_types"];
  v6 = [v4 decodeIntegerForKey:@"move_mode"];

  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v8 = [(HDWorkoutDefaultSessionRecoveryConfiguration *)self initWithGeneratedTypes:v7 moveMode:v6];

  return v8;
}

@end