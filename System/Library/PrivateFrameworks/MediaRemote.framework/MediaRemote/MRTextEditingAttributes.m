@interface MRTextEditingAttributes
- (MRTextEditingAttributes)initWithTitle:(id)a3 prompt:(id)a4;
- (_MRTextInputTraits)inputTraits;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_copyWithZone:(objc_class *)a3 usingConcreteClass:;
@end

@implementation MRTextEditingAttributes

- (MRTextEditingAttributes)initWithTitle:(id)a3 prompt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRTextEditingAttributes;
  v8 = [(MRTextEditingAttributes *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    prompt = v8->_prompt;
    v8->_prompt = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  title = self->_title;
  if (self->_inputTraits.secureTextEntry)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"<%@ %p %@ secure=%@>", v5, self, self->_title, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRTextEditingAttributes *)&self->super.isa _copyWithZone:v4 usingConcreteClass:v5];
}

- (_MRTextInputTraits)inputTraits
{
  v3 = *&self->PINEntrySeparatorIndexes[7];
  v4 = *&self[1].autocapitalizationType;
  *&retstr->PINEntrySeparatorIndexes[6] = *&self->PINEntrySeparatorIndexes[9];
  *&retstr->PINEntrySeparatorIndexes[8] = v4;
  retstr->PINEntrySeparatorIndexesCount = *&self[1].returnKeyType;
  v5 = *&self->enablesReturnKeyAutomatically;
  v6 = *&self->PINEntrySeparatorIndexes[3];
  *&retstr->validTextRange.length = *&self->PINEntrySeparatorIndexes[1];
  *retstr->PINEntrySeparatorIndexes = v6;
  *&retstr->PINEntrySeparatorIndexes[2] = *&self->PINEntrySeparatorIndexes[5];
  *&retstr->PINEntrySeparatorIndexes[4] = v3;
  *&retstr->autocapitalizationType = self->validTextRange;
  *&retstr->returnKeyType = v5;
  return self;
}

- (void)_copyWithZone:(objc_class *)a3 usingConcreteClass:
{
  if (!a1)
  {
    return 0;
  }

  v4 = objc_alloc_init(a3);
  v5 = [a1[1] copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [a1[2] copy];
  v8 = v4[2];
  v4[2] = v7;

  memcpy(v4 + 3, a1 + 3, 0x88uLL);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRTextEditingAttributes *)&self->super.isa _copyWithZone:v4 usingConcreteClass:v5];
}

@end