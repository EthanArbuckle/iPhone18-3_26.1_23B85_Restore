@interface ISImageStyleDescriptor
+ (id)defaultStyleDescriptor;
- (ISImageStyleDescriptor)initWithCoder:(id)coder;
- (NSUUID)digest;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (ISImageStyleDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ISImageStyleDescriptor;
  v5 = [(ISImageStyleDescriptor *)&v9 init];
  if (v5)
  {
    v5->_templateVariant = [coderCopy decodeBoolForKey:@"templateVariant"];
    v5->_selectedVariant = [coderCopy decodeBoolForKey:@"selectedVariant"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selectedVariant = self->_selectedVariant;
  coderCopy = coder;
  [coderCopy encodeBool:selectedVariant forKey:@"selectedVariant"];
  [coderCopy encodeBool:self->_templateVariant forKey:@"templateVariant"];
  [coderCopy encodeObject:self->_tintColor forKey:@"tintColor"];
}

- (id)copyWithZone:(_NSZone *)zone
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
    digest = [(IFColor *)tintColor digest];
    v12[0] = digest;
    v12[1] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v8 = [v5 _IF_UUIDByXORingUUIDs:v7];

    v3 = v8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

@end