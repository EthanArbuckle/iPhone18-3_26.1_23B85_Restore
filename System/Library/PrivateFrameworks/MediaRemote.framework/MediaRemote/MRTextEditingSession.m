@interface MRTextEditingSession
- (MRTextEditingSession)initWithText:(id)a3 attributes:(id)a4;
- (id)_copyWithZone:(objc_class *)a3 usingConcreteClass:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation MRTextEditingSession

- (MRTextEditingSession)initWithText:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRTextEditingSession;
  v8 = [(MRTextEditingSession *)&v14 init];
  if (v8)
  {
    v8->_uniqueIdentifier = arc4random();
    v9 = [v6 copy];
    text = v8->_text;
    v8->_text = v9;

    v8->_editing = 0;
    v11 = [v7 copy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRTextEditingSession *)self _copyWithZone:v4 usingConcreteClass:v5];
}

- (id)_copyWithZone:(objc_class *)a3 usingConcreteClass:
{
  if (!a1)
  {
    return 0;
  }

  v4 = objc_alloc_init(a3);
  *(v4 + 4) = *(a1 + 32);
  v5 = [*(a1 + 8) copy];
  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  *(v4 + 16) = *(a1 + 16);
  objc_storeStrong(v4 + 3, *(a1 + 24));
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRTextEditingSession *)self _copyWithZone:v4 usingConcreteClass:v5];
}

@end