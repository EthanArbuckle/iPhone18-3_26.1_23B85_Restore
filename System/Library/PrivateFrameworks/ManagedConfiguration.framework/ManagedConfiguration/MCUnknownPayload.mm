@interface MCUnknownPayload
+ (id)typeStrings;
- (MCUnknownPayload)initWithContentsOfPayload:(id)payload profile:(id)profile;
- (MCUnknownPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)subtitle1Description;
- (id)verboseDescription;
@end

@implementation MCUnknownPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.unknown";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCUnknownPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v10.receiver = self;
  v10.super_class = MCUnknownPayload;
  v5 = [(MCPayload *)&v10 initWithDictionary:dictionary profile:profile outError:error];
  if (v5)
  {
    v6 = +[MCUnknownPayload typeStrings];
    firstObject = [v6 firstObject];
    type = v5->super._type;
    v5->super._type = firstObject;
  }

  return v5;
}

- (MCUnknownPayload)initWithContentsOfPayload:(id)payload profile:(id)profile
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"PayloadVersion";
  v6 = MEMORY[0x1E696AD98];
  profileCopy = profile;
  payloadCopy = payload;
  v9 = [[v6 alloc] initWithInteger:{objc_msgSend(payloadCopy, "version")}];
  v19[0] = v9;
  v19[1] = @"com.apple.unknown";
  v18[1] = @"PayloadType";
  v18[2] = @"PayloadIdentifier";
  identifier = [payloadCopy identifier];
  v19[2] = identifier;
  v18[3] = @"PayloadUUID";
  uUID = [payloadCopy UUID];
  v19[3] = uUID;
  v18[4] = @"PayloadDisplayName";
  displayName = [payloadCopy displayName];

  v19[4] = displayName;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v14 = [v13 mutableCopy];

  v15 = [(MCUnknownPayload *)self initWithDictionary:v14 profile:profileCopy outError:0];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)verboseDescription
{
  v2 = MEMORY[0x1E696AD60];
  v6.receiver = self;
  v6.super_class = MCUnknownPayload;
  verboseDescription = [(MCPayload *)&v6 verboseDescription];
  v4 = [v2 stringWithString:verboseDescription];

  [v4 appendFormat:@"Unknown payload.\n"];

  return v4;
}

- (id)subtitle1Description
{
  organization = [(MCPayload *)self organization];
  if ([organization length])
  {
    organization2 = [(MCPayload *)self organization];
  }

  else
  {
    organization2 = 0;
  }

  return organization2;
}

@end