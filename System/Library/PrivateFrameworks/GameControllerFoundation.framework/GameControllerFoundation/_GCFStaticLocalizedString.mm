@interface _GCFStaticLocalizedString
- (_GCFStaticLocalizedString)initWithCoder:(id)coder;
- (id)_realizedString;
- (id)bundle;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCFStaticLocalizedString

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCFStaticLocalizedString;
  [(_GCFStaticLocalizedString *)&v3 dealloc];
}

- (_GCFStaticLocalizedString)initWithCoder:(id)coder
{
  [(_GCFStaticLocalizedString *)self doesNotRecognizeSelector:a2];
  v6.receiver = self;
  v6.super_class = _GCFStaticLocalizedString;
  return [(GCFLocalizedString *)&v6 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = [(_GCFStaticLocalizedString *)self key];
  bundle = [(_GCFStaticLocalizedString *)self bundle];
  table = [(_GCFStaticLocalizedString *)self table];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeObject:v5 forKey:@"key"];
    [coder encodeObject:objc_msgSend(bundle forKey:{"bundleURL"), @"bundle"}];

    [coder encodeObject:table forKey:@"table"];
  }

  else
  {
    [coder encodeObject:v5];
    [coder encodeObject:{objc_msgSend(bundle, "bundleURL")}];

    [coder encodeObject:table];
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
  gameControllerFoundationBundle = [MEMORY[0x1E696AAE8] GameControllerFoundationBundle];
  if (!gameControllerFoundationBundle || (v4 = gameControllerFoundationBundle, ![gameControllerFoundationBundle bundleURL]))
  {
    [(_GCFStaticLocalizedString *)self bundle];
  }

  return v4;
}

@end