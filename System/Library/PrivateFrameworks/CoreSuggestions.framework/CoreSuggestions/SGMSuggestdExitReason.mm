@interface SGMSuggestdExitReason
- (SGMSuggestdExitReason)init;
- (void)trackEventWithScalar:(unint64_t)scalar exitCode:(unint64_t)code;
@end

@implementation SGMSuggestdExitReason

- (void)trackEventWithScalar:(unint64_t)scalar exitCode:(unint64_t)code
{
  v9[1] = *MEMORY[0x1E69E9840];
  tracker = self->_tracker;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:code];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v7 value:scalar];

  v8 = *MEMORY[0x1E69E9840];
}

- (SGMSuggestdExitReason)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMSuggestdExitReason;
  v2 = [(SGMSuggestdExitReason *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExitCode" range:0 clampValues:{100, 1}];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"SuggestdExitReason" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end