@interface MCUnknownPayload
+ (id)typeStrings;
- (MCUnknownPayload)initWithContentsOfPayload:(id)a3 profile:(id)a4;
- (MCUnknownPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
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

- (MCUnknownPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v10.receiver = self;
  v10.super_class = MCUnknownPayload;
  v5 = [(MCPayload *)&v10 initWithDictionary:a3 profile:a4 outError:a5];
  if (v5)
  {
    v6 = +[MCUnknownPayload typeStrings];
    v7 = [v6 firstObject];
    type = v5->super._type;
    v5->super._type = v7;
  }

  return v5;
}

- (MCUnknownPayload)initWithContentsOfPayload:(id)a3 profile:(id)a4
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"PayloadVersion";
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithInteger:{objc_msgSend(v8, "version")}];
  v19[0] = v9;
  v19[1] = @"com.apple.unknown";
  v18[1] = @"PayloadType";
  v18[2] = @"PayloadIdentifier";
  v10 = [v8 identifier];
  v19[2] = v10;
  v18[3] = @"PayloadUUID";
  v11 = [v8 UUID];
  v19[3] = v11;
  v18[4] = @"PayloadDisplayName";
  v12 = [v8 displayName];

  v19[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v14 = [v13 mutableCopy];

  v15 = [(MCUnknownPayload *)self initWithDictionary:v14 profile:v7 outError:0];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)verboseDescription
{
  v2 = MEMORY[0x1E696AD60];
  v6.receiver = self;
  v6.super_class = MCUnknownPayload;
  v3 = [(MCPayload *)&v6 verboseDescription];
  v4 = [v2 stringWithString:v3];

  [v4 appendFormat:@"Unknown payload.\n"];

  return v4;
}

- (id)subtitle1Description
{
  v3 = [(MCPayload *)self organization];
  if ([v3 length])
  {
    v4 = [(MCPayload *)self organization];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end