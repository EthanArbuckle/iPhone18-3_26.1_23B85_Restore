@interface ISImageStyleDescriptor
+ (id)defaultStyleDescriptor;
- (ISImageStyleDescriptor)initWithCoder:(id)a3;
- (NSUUID)digest;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISImageStyleDescriptor

+ (id)defaultStyleDescriptor
{
  if (defaultStyleDescriptor_onceToken != -1)
  {
    +[ISImageStyleDescriptor defaultStyleDescriptor];
  }

  v3 = defaultStyleDescriptor_defaultStyleDescriptor;

  return v3;
}

uint64_t __48__ISImageStyleDescriptor_defaultStyleDescriptor__block_invoke()
{
  defaultStyleDescriptor_defaultStyleDescriptor = objc_alloc_init(ISImageStyleDescriptor);

  return MEMORY[0x1EEE66BB8]();
}

- (ISImageStyleDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ISImageStyleDescriptor;
  v5 = [(ISImageStyleDescriptor *)&v9 init];
  if (v5)
  {
    v5->_templateVariant = [v4 decodeBoolForKey:@"templateVariant"];
    v5->_selectedVariant = [v4 decodeBoolForKey:@"selectedVariant"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  selectedVariant = self->_selectedVariant;
  v5 = a3;
  [v5 encodeBool:selectedVariant forKey:@"selectedVariant"];
  [v5 encodeBool:self->_templateVariant forKey:@"templateVariant"];
  [v5 encodeObject:self->_tintColor forKey:@"tintColor"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSelectedVariant:self->_selectedVariant];
  [v4 setTemplateVariant:self->_templateVariant];
  return v4;
}

- (NSUUID)digest
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11 = *&self->_templateVariant;
  v3 = [MEMORY[0x1E696AFB0] _IF_UUIDWithBytes:&v11 size:2];
  tintColor = self->_tintColor;
  if (tintColor)
  {
    v5 = MEMORY[0x1E696AFB0];
    v6 = [(IFColor *)tintColor digest];
    v12[0] = v6;
    v12[1] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v8 = [v5 _IF_UUIDByXORingUUIDs:v7];

    v3 = v8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

@end