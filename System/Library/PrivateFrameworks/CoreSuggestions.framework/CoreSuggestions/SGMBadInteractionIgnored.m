@interface SGMBadInteractionIgnored
- (SGMBadInteractionIgnored)init;
- (void)trackEventWithScalar:(unint64_t)a3 reason:(SGMInteractionIgnoredReason_)a4;
@end

@implementation SGMBadInteractionIgnored

- (void)trackEventWithScalar:(unint64_t)a3 reason:(SGMInteractionIgnoredReason_)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a4.var0)
  {
    if (a4.var0 == 1)
    {
      v7 = @"NilInterIdent";
    }

    else
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMInteractionIgnoredReason_toString(SGMInteractionIgnoredReason)"];
      [v8 handleFailureInFunction:v9 file:@"SGMetricsDefines.h" lineNumber:537 description:{@"unrecognized tag %lu on SGMInteractionIgnoredReason", a4.var0}];

      v7 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v7 = @"NilBundleId";
  }

  tracker = self->_tracker;
  v13[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v11 value:a3];

  v12 = *MEMORY[0x1E69E9840];
}

- (SGMBadInteractionIgnored)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMBadInteractionIgnored;
  v2 = [(SGMBadInteractionIgnored *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Reason"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"BadInteractionIgnored" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end