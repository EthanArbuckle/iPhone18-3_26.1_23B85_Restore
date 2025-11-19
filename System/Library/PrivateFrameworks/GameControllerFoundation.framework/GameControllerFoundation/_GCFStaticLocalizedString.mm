@interface _GCFStaticLocalizedString
- (_GCFStaticLocalizedString)initWithCoder:(id)a3;
- (id)_realizedString;
- (id)bundle;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCFStaticLocalizedString

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCFStaticLocalizedString;
  [(_GCFStaticLocalizedString *)&v3 dealloc];
}

- (_GCFStaticLocalizedString)initWithCoder:(id)a3
{
  [(_GCFStaticLocalizedString *)self doesNotRecognizeSelector:a2];
  v6.receiver = self;
  v6.super_class = _GCFStaticLocalizedString;
  return [(GCFLocalizedString *)&v6 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(_GCFStaticLocalizedString *)self key];
  v6 = [(_GCFStaticLocalizedString *)self bundle];
  v7 = [(_GCFStaticLocalizedString *)self table];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:v5 forKey:@"key"];
    [a3 encodeObject:objc_msgSend(v6 forKey:{"bundleURL"), @"bundle"}];

    [a3 encodeObject:v7 forKey:@"table"];
  }

  else
  {
    [a3 encodeObject:v5];
    [a3 encodeObject:{objc_msgSend(v6, "bundleURL")}];

    [a3 encodeObject:v7];
  }
}

- (id)_realizedString
{
  realizedString = self->__realizedString;
  if (!realizedString)
  {
    objc_sync_enter(self);
    realizedString = self->__realizedString;
    if (!realizedString)
    {
      realizedString = [-[_GCFStaticLocalizedString bundle](self "bundle")];
      self->__realizedString = [(NSString *)realizedString copy];
    }

    objc_sync_exit(self);
  }

  return realizedString;
}

- (id)bundle
{
  v3 = [MEMORY[0x1E696AAE8] GameControllerFoundationBundle];
  if (!v3 || (v4 = v3, ![v3 bundleURL]))
  {
    [(_GCFStaticLocalizedString *)self bundle];
  }

  return v4;
}

@end