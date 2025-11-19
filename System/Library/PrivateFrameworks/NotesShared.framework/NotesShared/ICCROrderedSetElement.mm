@interface ICCROrderedSetElement
+ (id)temporaryElementWithValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICCROrderedSetElement)initWithProtobufSetElement:(const void *)a3 decoder:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeIntoProtobufSetElement:(void *)a3 coder:(id)a4;
- (void)mergeWith:(id)a3;
- (void)setDocument:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation ICCROrderedSetElement

+ (id)temporaryElementWithValue:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICCROrderedSetElement);
  [(ICCROrderedSetElement *)v4 setValue:v3];

  return v4;
}

- (ICCROrderedSetElement)initWithProtobufSetElement:(const void *)a3 decoder:(id)a4
{
  v6 = a4;
  v7 = [(ICCROrderedSetElement *)self init];
  v8 = v7;
  if (v7)
  {
    v9 = *(a3 + 8);
    if ((v9 & 2) != 0)
    {
      v10 = *(a3 + 6);
      if (!v10)
      {
        v10 = *(CRDT::Dictionary_Element::default_instance(v7) + 48);
      }

      v11 = [v6 decodeObjectForProtobufObjectID:v10];
      value = v8->_value;
      v8->_value = v11;

      v9 = *(a3 + 8);
    }

    if ((v9 & 8) != 0)
    {
      v13 = [ICCRRegisterLatest alloc];
      v14 = v13;
      v15 = *(a3 + 8);
      if (!v15)
      {
        v15 = *(CRDT::Dictionary_Element::default_instance(v13) + 64);
      }

      v16 = [(ICCRRegisterLatest *)v14 initWithProtobufRegisterLatest:v15 decoder:v6];
      index = v8->_index;
      v8->_index = v16;
    }
  }

  return v8;
}

- (void)encodeIntoProtobufSetElement:(void *)a3 coder:(id)a4
{
  v11 = a4;
  v6 = [(ICCROrderedSetElement *)self value];

  if (v6)
  {
    v7 = [(ICCROrderedSetElement *)self value];
    *(a3 + 8) |= 2u;
    v8 = *(a3 + 6);
    if (!v8)
    {
      operator new();
    }

    [v11 encodeObject:v7 forObjectID:v8];
  }

  v9 = [(ICCROrderedSetElement *)self index];
  *(a3 + 8) |= 8u;
  v10 = *(a3 + 8);
  if (!v10)
  {
    operator new();
  }

  [v9 encodeIntoProtobufRegisterLatest:v10 coder:v11];
}

- (unint64_t)hash
{
  v2 = [(ICCROrderedSetElement *)self value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCROrderedSetElement *)self value];
    v6 = [v4 value];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICCROrderedSetElement allocWithZone:?]];
  v5 = [(ICCROrderedSetElement *)self value];
  [(ICCROrderedSetElement *)v4 setValue:v5];

  v6 = [(ICCROrderedSetElement *)self index];
  [(ICCROrderedSetElement *)v4 setIndex:v6];

  return v4;
}

- (void)mergeWith:(id)a3
{
  v8 = a3;
  v4 = [(ICCROrderedSetElement *)self index];
  v5 = [v8 index];
  [v4 mergeWith:v5];

  v6 = [(ICCROrderedSetElement *)self value];
  v7 = [v8 value];
  [v6 mergeWith:v7];
}

- (void)walkGraph:(id)a3
{
  v6 = a3;
  v4 = [(ICCROrderedSetElement *)self index];
  v6[2](v6, v4);

  v5 = [(ICCROrderedSetElement *)self value];
  v6[2](v6, v5);
}

- (void)setDocument:(id)a3
{
  v7 = a3;
  v4 = [(ICCROrderedSetElement *)self value];
  v5 = [v7 localObject:v4];
  value = self->_value;
  self->_value = v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICCROrderedSetElement *)self index];
  v7 = [(ICCROrderedSetElement *)self value];
  v8 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, v6, v7];

  return v8;
}

@end