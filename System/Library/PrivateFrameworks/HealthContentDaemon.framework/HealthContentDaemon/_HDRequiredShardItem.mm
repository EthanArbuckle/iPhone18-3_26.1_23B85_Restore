@interface _HDRequiredShardItem
- (_HDRequiredShardItem)init;
- (_HDRequiredShardItem)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)initWithShardIdentfier:(uint64_t)a3 options:;
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_options forKey:@"options"];
}

- (_HDRequiredShardItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HDRequiredShardItem;
  v5 = [(_HDRequiredShardItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_options = [v4 decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)initWithShardIdentfier:(uint64_t)a3 options:
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _HDRequiredShardItem;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[1];
      a1[1] = v6;

      a1[2] = a3;
    }
  }

  return a1;
}

@end