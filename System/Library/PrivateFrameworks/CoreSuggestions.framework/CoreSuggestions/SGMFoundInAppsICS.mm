@interface SGMFoundInAppsICS
- (SGMFoundInAppsICS)init;
- (void)trackEventWithScalar:(unint64_t)scalar timezone:(SGMFoundInAppsICSTZValue_)timezone datetime:(SGMFoundInAppsDatetimeType_)datetime;
@end

@implementation SGMFoundInAppsICS

- (void)trackEventWithScalar:(unint64_t)scalar timezone:(SGMFoundInAppsICSTZValue_)timezone datetime:(SGMFoundInAppsDatetimeType_)datetime
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (timezone.var0 < 3)
  {
    v9 = off_1E7EFC390[timezone.var0];
    if (datetime.var0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = @"start";
    goto LABEL_8;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMFoundInAppsICSTZValue_toString(SGMFoundInAppsICSTZValue)"];
  [currentHandler handleFailureInFunction:v12 file:@"SGMetricsDefines.h" lineNumber:690 description:{@"unrecognized tag %lu on SGMFoundInAppsICSTZValue", timezone.var0}];

  v9 = @"ERR_UNMATCHED_TAG";
  if (!datetime.var0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (datetime.var0 == 1)
  {
    v10 = @"end";
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMFoundInAppsDatetimeType_toString(SGMFoundInAppsDatetimeType)"];
    [currentHandler2 handleFailureInFunction:v14 file:@"SGMetricsDefines.h" lineNumber:703 description:{@"unrecognized tag %lu on SGMFoundInAppsDatetimeType", datetime.var0}];

    v10 = @"ERR_UNMATCHED_TAG";
  }

LABEL_8:
  tracker = self->_tracker;
  v18[0] = v9;
  v18[1] = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v16 value:scalar];

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