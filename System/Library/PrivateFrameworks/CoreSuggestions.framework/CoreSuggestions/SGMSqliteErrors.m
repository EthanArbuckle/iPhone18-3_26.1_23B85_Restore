@interface SGMSqliteErrors
- (SGMSqliteErrors)init;
- (void)trackEventWithScalar:(unint64_t)a3 errorCode:(unint64_t)a4;
@end

@implementation SGMSqliteErrors

- (void)trackEventWithScalar:(unint64_t)a3 errorCode:(unint64_t)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  tracker = self->_tracker;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v7 value:a3];

  v8 = *MEMORY[0x1E69E9840];
}

- (SGMSqliteErrors)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMSqliteErrors;
  v2 = [(SGMSqliteErrors *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] propertyWithName:@"ErrorCode" range:0 clampValues:{7000, 1}];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"SqliteErrors" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end