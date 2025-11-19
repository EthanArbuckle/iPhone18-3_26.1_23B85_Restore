@interface DDCallKitVideoAction
+ (BOOL)providerIsValid:(id)a3 forHandleType:(int64_t)a4;
+ (id)patchedSchemeForScheme:(id)a3;
- (id)_serviceIdentifier;
@end

@implementation DDCallKitVideoAction

+ (BOOL)providerIsValid:(id)a3 forHandleType:(int64_t)a4
{
  v5 = a3;
  if ([v5 supportsAudioAndVideo])
  {
    v6 = [v5 supportsHandleType:a4];

    return v6;
  }

  else
  {

    return 0;
  }
}

+ (id)patchedSchemeForScheme:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"facetime-audio"])
  {
    v6 = @"facetime";
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"facetime-audio-prompt"])
  {
    v6 = @"facetime-prompt";
    goto LABEL_9;
  }

  v7 = [a1 matchingSchemes];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v6 = v5;
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)_serviceIdentifier
{
  v5.receiver = self;
  v5.super_class = DDCallKitVideoAction;
  v2 = [(DDCallKitAudioAction *)&v5 _serviceIdentifier];
  v3 = [v2 stringByAppendingString:@"-video"];

  return v3;
}

@end