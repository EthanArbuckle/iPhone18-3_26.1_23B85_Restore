@interface SGMEventICSOpportunity
- (SGMEventICSOpportunity)init;
- (void)trackEventWithScalar:(unint64_t)scalar source:(SGMEventICSSourceType_)source recipient:(SGMEventICSSourceType_)recipient accountSetup:(SGMTypeSafeBool_)setup;
@end

@implementation SGMEventICSOpportunity

- (void)trackEventWithScalar:(unint64_t)scalar source:(SGMEventICSSourceType_)source recipient:(SGMEventICSSourceType_)recipient accountSetup:(SGMTypeSafeBool_)setup
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (source.var0 >= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventICSSourceType_toString(SGMEventICSSourceType)"];
    [currentHandler handleFailureInFunction:v13 file:@"SGMetricsDefines.h" lineNumber:243 description:{@"unrecognized tag %lu on SGMEventICSSourceType", source.var0}];

    v11 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v11 = off_1E7EFC368[source.var0];
  }

  if (recipient.var0 < 5)
  {
    v14 = off_1E7EFC368[recipient.var0];
    if (setup.var0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v15 = @"0";
    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventICSSourceType_toString(SGMEventICSSourceType)"];
  [currentHandler2 handleFailureInFunction:v17 file:@"SGMetricsDefines.h" lineNumber:243 description:{@"unrecognized tag %lu on SGMEventICSSourceType", recipient.var0}];

  v14 = @"ERR_UNMATCHED_TAG";
  if (!setup.var0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (setup.var0 == 1)
  {
    v15 = @"1";
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
    [currentHandler3 handleFailureInFunction:v19 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", setup.var0}];

    v15 = @"ERR_UNMATCHED_TAG";
  }

LABEL_11:
  tracker = self->_tracker;
  v23[0] = v11;
  v23[1] = v14;
  v23[2] = v15;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v21 value:scalar];

  v22 = *MEMORY[0x1E69E9840];
}

- (SGMEventICSOpportunity)init
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SGMEventICSOpportunity;
  v2 = [(SGMEventICSOpportunity *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Source"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Recipient"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"AccountSetup"];
    v6 = objc_alloc(MEMORY[0x1E69C5B58]);
    v13[0] = v3;
    v13[1] = v4;
    v13[2] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v6 initWithFeatureId:@"Found" event:@"ICSOpportunity" registerProperties:v7 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

@end