@interface CHSGlassOptions
+ (id)withSubduedGlass;
+ (id)withWhitePointBoost;
- (BOOL)isEqual:(id)equal;
- (CHSGlassOptions)init;
- (CHSGlassOptions)initWithBSXPCCoder:(id)coder;
- (NSString)description;
- (id)_initWithGlassOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHSGlassOptions

- (CHSGlassOptions)init
{
  v6.receiver = self;
  v6.super_class = CHSGlassOptions;
  v2 = [(CHSGlassOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_wantsSubduedGlass = 0;
    backdropGroupName = v2->_backdropGroupName;
    v2->_backdropGroupName = 0;

    v3->_wantsHighlightsDisplayAngle = 1;
  }

  return v3;
}

- (id)_initWithGlassOptions:(id)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = CHSGlassOptions;
  v5 = [(CHSGlassOptions *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_wantsSubduedGlass = *(optionsCopy + 8);
    v5->_wantsWhitePointBoost = *(optionsCopy + 9);
    objc_storeStrong(&v5->_backdropGroupName, *(optionsCopy + 2));
    v6->_wantsHighlightsDisplayAngle = *(optionsCopy + 24);
  }

  return v6;
}

+ (id)withSubduedGlass
{
  v2 = objc_alloc_init(CHSMutableGlassOptions);
  [(CHSMutableGlassOptions *)v2 setWantsSubduedGlass:1];
  v3 = [(CHSMutableGlassOptions *)v2 copy];

  return v3;
}

+ (id)withWhitePointBoost
{
  v2 = objc_alloc_init(CHSMutableGlassOptions);
  [(CHSMutableGlassOptions *)v2 setWantsWhitePointBoost:1];
  v3 = [(CHSMutableGlassOptions *)v2 copy];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = equalCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  wantsSubduedGlass = self->_wantsSubduedGlass;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __27__CHSGlassOptions_isEqual___block_invoke;
  v32[3] = &unk_1E7452FB0;
  v11 = v9;
  v33 = v11;
  v12 = [v5 appendBool:wantsSubduedGlass counterpart:v32];
  wantsWhitePointBoost = self->_wantsWhitePointBoost;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __27__CHSGlassOptions_isEqual___block_invoke_2;
  v30[3] = &unk_1E7452FB0;
  v14 = v11;
  v31 = v14;
  v15 = [v5 appendBool:wantsWhitePointBoost counterpart:v30];
  backdropGroupName = self->_backdropGroupName;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __27__CHSGlassOptions_isEqual___block_invoke_3;
  v28[3] = &unk_1E7452FD8;
  v17 = v14;
  v29 = v17;
  v18 = [v5 appendString:backdropGroupName counterpart:v28];
  wantsHighlightsDisplayAngle = self->_wantsHighlightsDisplayAngle;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __27__CHSGlassOptions_isEqual___block_invoke_4;
  v26 = &unk_1E7452FB0;
  v20 = v17;
  v27 = v20;
  v21 = [v5 appendBool:wantsHighlightsDisplayAngle counterpart:&v23];
  LOBYTE(v17) = [v5 isEqual];

  return v17;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:self->_wantsSubduedGlass];
  v5 = [builder appendBool:self->_wantsWhitePointBoost];
  v6 = [builder appendObject:self->_backdropGroupName];
  v7 = [builder appendBool:self->_wantsHighlightsDisplayAngle];
  v8 = [builder hash];

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __30__CHSGlassOptions_description__block_invoke;
  v10 = &unk_1E7453000;
  v4 = v3;
  v11 = v4;
  selfCopy = self;
  [v4 appendProem:0 block:&v7];
  build = [v4 build];

  return build;
}

id __30__CHSGlassOptions_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"wantsSubduedGlass" ifEqualTo:1];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"wantsWhitePointBoost" ifEqualTo:1];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"backdropGroupName" skipIfEmpty:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) withName:@"wantsHighlightsDisplayAngle" ifEqualTo:1];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSGlassOptions alloc];

  return [(CHSGlassOptions *)v4 _initWithGlassOptions:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableGlassOptions allocWithZone:zone];

  return [(CHSGlassOptions *)v4 _initWithGlassOptions:self];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_wantsSubduedGlass forKey:@"wantsSubduedGlass"];
  [coderCopy encodeBool:self->_wantsWhitePointBoost forKey:@"wantsWhitePointBoost"];
  [coderCopy encodeObject:self->_backdropGroupName forKey:@"backdropGroupName"];
  [coderCopy encodeBool:self->_wantsHighlightsDisplayAngle forKey:@"wantsHighlightsDisplayAngle"];
}

- (CHSGlassOptions)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CHSGlassOptions *)self init];
  if (v5)
  {
    v5->_wantsSubduedGlass = [coderCopy decodeBoolForKey:@"wantsSubduedGlass"];
    v5->_wantsWhitePointBoost = [coderCopy decodeBoolForKey:@"wantsWhitePointBoost"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backdropGroupName"];
    backdropGroupName = v5->_backdropGroupName;
    v5->_backdropGroupName = v6;

    v5->_wantsHighlightsDisplayAngle = [coderCopy decodeBoolForKey:@"wantsHighlightsDisplayAngle"];
  }

  return v5;
}

@end