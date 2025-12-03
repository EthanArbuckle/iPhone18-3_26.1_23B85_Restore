@interface DDCallKitVideoAction
+ (BOOL)providerIsValid:(id)valid forHandleType:(int64_t)type;
+ (id)patchedSchemeForScheme:(id)scheme;
- (id)_serviceIdentifier;
@end

@implementation DDCallKitVideoAction

+ (BOOL)providerIsValid:(id)valid forHandleType:(int64_t)type
{
  validCopy = valid;
  if ([validCopy supportsAudioAndVideo])
  {
    v6 = [validCopy supportsHandleType:type];

    return v6;
  }

  else
  {

    return 0;
  }
}

+ (id)patchedSchemeForScheme:(id)scheme
{
  schemeCopy = scheme;
  v5 = schemeCopy;
  if (!schemeCopy)
  {
    goto LABEL_8;
  }

  if ([schemeCopy isEqualToString:@"facetime-audio"])
  {
    v6 = @"facetime";
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"facetime-audio-prompt"])
  {
    v6 = @"facetime-prompt";
    goto LABEL_9;
  }

  matchingSchemes = [self matchingSchemes];
  v8 = [matchingSchemes containsObject:v5];

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
  _serviceIdentifier = [(DDCallKitAudioAction *)&v5 _serviceIdentifier];
  v3 = [_serviceIdentifier stringByAppendingString:@"-video"];

  return v3;
}

@end