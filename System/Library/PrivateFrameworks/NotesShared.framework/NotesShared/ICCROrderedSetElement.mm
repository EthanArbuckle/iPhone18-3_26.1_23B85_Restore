@interface ICCROrderedSetElement
+ (id)temporaryElementWithValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (ICCROrderedSetElement)initWithProtobufSetElement:(const void *)element decoder:(id)decoder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeIntoProtobufSetElement:(void *)element coder:(id)coder;
- (void)mergeWith:(id)with;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation ICCROrderedSetElement

+ (id)temporaryElementWithValue:(id)value
{
  valueCopy = value;
  v4 = objc_alloc_init(ICCROrderedSetElement);
  [(ICCROrderedSetElement *)v4 setValue:valueCopy];

  return v4;
}

- (ICCROrderedSetElement)initWithProtobufSetElement:(const void *)element decoder:(id)decoder
{
  decoderCopy = decoder;
  v7 = [(ICCROrderedSetElement *)self init];
  v8 = v7;
  if (v7)
  {
    v9 = *(element + 8);
    if ((v9 & 2) != 0)
    {
      v10 = *(element + 6);
      if (!v10)
      {
        v10 = *(CRDT::Dictionary_Element::default_instance(v7) + 48);
      }

      v11 = [decoderCopy decodeObjectForProtobufObjectID:v10];
      value = v8->_value;
      v8->_value = v11;

      v9 = *(element + 8);
    }

    if ((v9 & 8) != 0)
    {
      v13 = [ICCRRegisterLatest alloc];
      v14 = v13;
      v15 = *(element + 8);
      if (!v15)
      {
        v15 = *(CRDT::Dictionary_Element::default_instance(v13) + 64);
      }

      v16 = [(ICCRRegisterLatest *)v14 initWithProtobufRegisterLatest:v15 decoder:decoderCopy];
      index = v8->_index;
      v8->_index = v16;
    }
  }

  return v8;
}

- (void)encodeIntoProtobufSetElement:(void *)element coder:(id)coder
{
  coderCopy = coder;
  value = [(ICCROrderedSetElement *)self value];

  if (value)
  {
    value2 = [(ICCROrderedSetElement *)self value];
    *(element + 8) |= 2u;
    v8 = *(element + 6);
    if (!v8)
    {
      operator new();
    }

    [coderCopy encodeObject:value2 forObjectID:v8];
  }

  index = [(ICCROrderedSetElement *)self index];
  *(element + 8) |= 8u;
  v10 = *(element + 8);
  if (!v10)
  {
    operator new();
  }

  [index encodeIntoProtobufRegisterLatest:v10 coder:coderCopy];
}

- (unint64_t)hash
{
  value = [(ICCROrderedSetElement *)self value];
  v3 = [value hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [(ICCROrderedSetElement *)self value];
    value2 = [equalCopy value];
    v7 = [value isEqual:value2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICCROrderedSetElement allocWithZone:?]];
  value = [(ICCROrderedSetElement *)self value];
  [(ICCROrderedSetElement *)v4 setValue:value];

  index = [(ICCROrderedSetElement *)self index];
  [(ICCROrderedSetElement *)v4 setIndex:index];

  return v4;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  index = [(ICCROrderedSetElement *)self index];
  index2 = [withCopy index];
  [index mergeWith:index2];

  value = [(ICCROrderedSetElement *)self value];
  value2 = [withCopy value];
  [value mergeWith:value2];
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  index = [(ICCROrderedSetElement *)self index];
  graphCopy[2](graphCopy, index);

  value = [(ICCROrderedSetElement *)self value];
  graphCopy[2](graphCopy, value);
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  value = [(ICCROrderedSetElement *)self value];
  v5 = [documentCopy localObject:value];
  value = self->_value;
  self->_value = v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  index = [(ICCROrderedSetElement *)self index];
  value = [(ICCROrderedSetElement *)self value];
  v8 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, index, value];

  return v8;
}

@end