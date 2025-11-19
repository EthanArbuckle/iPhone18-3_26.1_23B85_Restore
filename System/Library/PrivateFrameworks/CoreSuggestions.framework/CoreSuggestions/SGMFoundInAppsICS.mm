@interface SGMFoundInAppsICS
- (SGMFoundInAppsICS)init;
- (void)trackEventWithScalar:(unint64_t)a3 timezone:(SGMFoundInAppsICSTZValue_)a4 datetime:(SGMFoundInAppsDatetimeType_)a5;
@end

@implementation SGMFoundInAppsICS

- (void)trackEventWithScalar:(unint64_t)a3 timezone:(SGMFoundInAppsICSTZValue_)a4 datetime:(SGMFoundInAppsDatetimeType_)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (a4.var0 < 3)
  {
    v9 = off_1E7EFC390[a4.var0];
    if (a5.var0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = @"start";
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMFoundInAppsICSTZValue_toString(SGMFoundInAppsICSTZValue)"];
  [v11 handleFailureInFunction:v12 file:@"SGMetricsDefines.h" lineNumber:690 description:{@"unrecognized tag %lu on SGMFoundInAppsICSTZValue", a4.var0}];

  v9 = @"ERR_UNMATCHED_TAG";
  if (!a5.var0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a5.var0 == 1)
  {
    v10 = @"end";
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMFoundInAppsDatetimeType_toString(SGMFoundInAppsDatetimeType)"];
    [v13 handleFailureInFunction:v14 file:@"SGMetricsDefines.h" lineNumber:703 description:{@"unrecognized tag %lu on SGMFoundInAppsDatetimeType", a5.var0}];

    v10 = @"ERR_UNMATCHED_TAG";
  }

LABEL_8:
  tracker = self->_tracker;
  v18[0] = v9;
  v18[1] = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v16 value:a3];

  v17 = *MEMORY[0x1E69E9840];
}

- (SGMFoundInAppsICS)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SGMFoundInAppsICS;
  v2 = [(SGMFoundInAppsICS *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"timezone"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"datetime"];
    v5 = objc_alloc(MEMORY[0x1E69C5B58]);
    v12[0] = v3;
    v12[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v7 = [v5 initWithFeatureId:@"Found" event:@"FoundInAppsICS" registerProperties:v6 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

@end