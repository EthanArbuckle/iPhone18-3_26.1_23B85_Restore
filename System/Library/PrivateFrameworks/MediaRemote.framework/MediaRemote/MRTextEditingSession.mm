@interface MRTextEditingSession
- (MRTextEditingSession)initWithText:(id)text attributes:(id)attributes;
- (id)_copyWithZone:(objc_class *)zone usingConcreteClass:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation MRTextEditingSession

- (MRTextEditingSession)initWithText:(id)text attributes:(id)attributes
{
  textCopy = text;
  attributesCopy = attributes;
  v14.receiver = self;
  v14.super_class = MRTextEditingSession;
  v8 = [(MRTextEditingSession *)&v14 init];
  if (v8)
  {
    v8->_uniqueIdentifier = arc4random();
    v9 = [textCopy copy];
    text = v8->_text;
    v8->_text = v9;

    v8->_editing = 0;
    v11 = [attributesCopy copy];
    attributes = v8->_attributes;
    v8->_attributes = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  text = self->_text;
  v7 = [v3 stringWithFormat:@"<%@ %p text=%@, attribs=%@>", v5, self, text, self->_attributes];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRTextEditingSession *)self _copyWithZone:v4 usingConcreteClass:v5];
}

- (id)_copyWithZone:(objc_class *)zone usingConcreteClass:
{
  if (!self)
  {
    return 0;
  }

  v4 = objc_alloc_init(zone);
  *(v4 + 4) = *(self + 32);
  v5 = [*(self + 8) copy];
  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  *(v4 + 16) = *(self + 16);
  objc_storeStrong(v4 + 3, *(self + 24));
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRTextEditingSession *)self _copyWithZone:v4 usingConcreteClass:v5];
}

@end