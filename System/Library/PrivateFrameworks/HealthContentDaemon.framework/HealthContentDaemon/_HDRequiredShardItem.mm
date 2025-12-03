@interface _HDRequiredShardItem
- (_HDRequiredShardItem)init;
- (_HDRequiredShardItem)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)initWithShardIdentfier:(uint64_t)identfier options:;
@end

@implementation _HDRequiredShardItem

- (_HDRequiredShardItem)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  identifier = self->_identifier;
  options = self->_options;
  v6 = HKStringFromOntologyFeatureRequestOptions();
  v7 = [v3 initWithFormat:@"(%@, %@)", identifier, v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (_HDRequiredShardItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HDRequiredShardItem;
  v5 = [(_HDRequiredShardItem *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)initWithShardIdentfier:(uint64_t)identfier options:
{
  v5 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = _HDRequiredShardItem;
    self = objc_msgSendSuper2(&v9, sel_init);
    if (self)
    {
      v6 = [v5 copy];
      v7 = self[1];
      self[1] = v6;

      self[2] = identfier;
    }
  }

  return self;
}

@end