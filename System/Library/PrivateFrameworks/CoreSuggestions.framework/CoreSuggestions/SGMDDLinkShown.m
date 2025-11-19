@interface SGMDDLinkShown
- (SGMDDLinkShown)init;
- (void)trackEventWithScalar:(unint64_t)a3 interface:(SGMNLEventInterface_)a4;
@end

@implementation SGMDDLinkShown

- (void)trackEventWithScalar:(unint64_t)a3 interface:(SGMNLEventInterface_)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 0x14)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMNLEventInterface_toString(SGMNLEventInterface)"];
    [v8 handleFailureInFunction:v9 file:@"SGMetricsDefines.h" lineNumber:479 description:{@"unrecognized tag %lu on SGMNLEventInterface", a4.var0}];

    v7 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v7 = off_1E7EFC130[a4.var0];
  }

  tracker = self->_tracker;
  v13[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v11 value:a3];

  v12 = *MEMORY[0x1E69E9840];
}

- (SGMDDLinkShown)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMDDLinkShown;
  v2 = [(SGMDDLinkShown *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"I"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"DDLinkShown" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end