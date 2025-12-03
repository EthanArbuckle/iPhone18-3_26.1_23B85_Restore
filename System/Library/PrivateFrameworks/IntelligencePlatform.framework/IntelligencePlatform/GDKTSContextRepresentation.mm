@interface GDKTSContextRepresentation
- (GDKTSContextRepresentation)initWithCoder:(id)coder;
- (GDKTSContextRepresentation)initWithOriginContext:(id)context ktsContext:(id)ktsContext destinationContext:(id)destinationContext;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKTSContextRepresentation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GDKTSContextRepresentation allocWithZone:zone];
  originContext = self->_originContext;
  ktsContext = self->_ktsContext;
  destinationContext = self->_destinationContext;

  return [(GDKTSContextRepresentation *)v4 initWithOriginContext:originContext ktsContext:ktsContext destinationContext:destinationContext];
}

- (GDKTSContextRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_originContext);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_ktsContext);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_destinationContext);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(GDKTSContextRepresentation *)self initWithOriginContext:v7 ktsContext:v10 destinationContext:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  originContext = self->_originContext;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_originContext);
  [coderCopy encodeObject:originContext forKey:v6];

  ktsContext = self->_ktsContext;
  v8 = NSStringFromSelector(sel_ktsContext);
  [coderCopy encodeObject:ktsContext forKey:v8];

  destinationContext = self->_destinationContext;
  v10 = NSStringFromSelector(sel_destinationContext);
  [coderCopy encodeObject:destinationContext forKey:v10];
}

- (GDKTSContextRepresentation)initWithOriginContext:(id)context ktsContext:(id)ktsContext destinationContext:(id)destinationContext
{
  contextCopy = context;
  ktsContextCopy = ktsContext;
  destinationContextCopy = destinationContext;
  v19.receiver = self;
  v19.super_class = GDKTSContextRepresentation;
  v11 = [(GDKTSContextRepresentation *)&v19 init];
  if (v11)
  {
    v12 = [contextCopy copy];
    originContext = v11->_originContext;
    v11->_originContext = v12;

    v14 = [ktsContextCopy copy];
    ktsContext = v11->_ktsContext;
    v11->_ktsContext = v14;

    v16 = [destinationContextCopy copy];
    destinationContext = v11->_destinationContext;
    v11->_destinationContext = v16;
  }

  return v11;
}

@end