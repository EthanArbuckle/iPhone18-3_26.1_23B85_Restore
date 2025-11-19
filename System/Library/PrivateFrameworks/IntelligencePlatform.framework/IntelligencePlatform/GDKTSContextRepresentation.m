@interface GDKTSContextRepresentation
- (GDKTSContextRepresentation)initWithCoder:(id)a3;
- (GDKTSContextRepresentation)initWithOriginContext:(id)a3 ktsContext:(id)a4 destinationContext:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKTSContextRepresentation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDKTSContextRepresentation allocWithZone:a3];
  originContext = self->_originContext;
  ktsContext = self->_ktsContext;
  destinationContext = self->_destinationContext;

  return [(GDKTSContextRepresentation *)v4 initWithOriginContext:originContext ktsContext:ktsContext destinationContext:destinationContext];
}

- (GDKTSContextRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_originContext);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_ktsContext);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_destinationContext);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [(GDKTSContextRepresentation *)self initWithOriginContext:v7 ktsContext:v10 destinationContext:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  originContext = self->_originContext;
  v5 = a3;
  v6 = NSStringFromSelector(sel_originContext);
  [v5 encodeObject:originContext forKey:v6];

  ktsContext = self->_ktsContext;
  v8 = NSStringFromSelector(sel_ktsContext);
  [v5 encodeObject:ktsContext forKey:v8];

  destinationContext = self->_destinationContext;
  v10 = NSStringFromSelector(sel_destinationContext);
  [v5 encodeObject:destinationContext forKey:v10];
}

- (GDKTSContextRepresentation)initWithOriginContext:(id)a3 ktsContext:(id)a4 destinationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = GDKTSContextRepresentation;
  v11 = [(GDKTSContextRepresentation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    originContext = v11->_originContext;
    v11->_originContext = v12;

    v14 = [v9 copy];
    ktsContext = v11->_ktsContext;
    v11->_ktsContext = v14;

    v16 = [v10 copy];
    destinationContext = v11->_destinationContext;
    v11->_destinationContext = v16;
  }

  return v11;
}

@end