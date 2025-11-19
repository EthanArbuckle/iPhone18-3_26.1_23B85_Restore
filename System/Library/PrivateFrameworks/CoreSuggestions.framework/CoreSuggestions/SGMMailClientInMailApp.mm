@interface SGMMailClientInMailApp
- (SGMMailClientInMailApp)init;
- (void)trackEventWithScalar:(unint64_t)a3 isSynced:(SGMTypeSafeBool_)a4 service:(SGMEventICSSourceType_)a5;
@end

@implementation SGMMailClientInMailApp

- (void)trackEventWithScalar:(unint64_t)a3 isSynced:(SGMTypeSafeBool_)a4 service:(SGMEventICSSourceType_)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (a4.var0)
  {
    if (a4.var0 == 1)
    {
      v9 = @"1";
    }

    else
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v10 handleFailureInFunction:v11 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a4.var0}];

      v9 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v9 = @"0";
  }

  if (a5.var0 >= 5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventICSSourceType_toString(SGMEventICSSourceType)"];
    [v13 handleFailureInFunction:v14 file:@"SGMetricsDefines.h" lineNumber:243 description:{@"unrecognized tag %lu on SGMEventICSSourceType", a5.var0}];

    v12 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v12 = off_1E7EFC368[a5.var0];
  }

  tracker = self->_tracker;
  v18[0] = v9;
  v18[1] = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v16 value:a3];

  v17 = *MEMORY[0x1E69E9840];
}

- (SGMMailClientInMailApp)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SGMMailClientInMailApp;
  v2 = [(SGMMailClientInMailApp *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"IsSynced"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Service"];
    v5 = objc_alloc(MEMORY[0x1E69C5B58]);
    v12[0] = v3;
    v12[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v7 = [v5 initWithFeatureId:@"Found" event:@"MailSyncedViaMaild" registerProperties:v6 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

@end