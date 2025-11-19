@interface GDKTSContextAggregateRepresentation
- (GDKTSContextAggregateRepresentation)initWithCoder:(id)a3;
- (GDKTSContextAggregateRepresentation)initWithOriginContexts:(id)a3 ktsContexts:(id)a4 destinationContexts:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKTSContextAggregateRepresentation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDKTSContextAggregateRepresentation allocWithZone:a3];
  originContexts = self->_originContexts;
  ktsContexts = self->_ktsContexts;
  destinationContexts = self->_destinationContexts;

  return [(GDKTSContextAggregateRepresentation *)v4 initWithOriginContexts:originContexts ktsContexts:ktsContexts destinationContexts:destinationContexts];
}

- (GDKTSContextAggregateRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_originContexts);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_ktsContexts);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_destinationContexts);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [(GDKTSContextAggregateRepresentation *)self initWithOriginContexts:v7 ktsContexts:v10 destinationContexts:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  originContexts = self->_originContexts;
  v5 = a3;
  v6 = NSStringFromSelector(sel_originContexts);
  [v5 encodeObject:originContexts forKey:v6];

  ktsContexts = self->_ktsContexts;
  v8 = NSStringFromSelector(sel_ktsContexts);
  [v5 encodeObject:ktsContexts forKey:v8];

  destinationContexts = self->_destinationContexts;
  v10 = NSStringFromSelector(sel_destinationContexts);
  [v5 encodeObject:destinationContexts forKey:v10];
}

- (GDKTSContextAggregateRepresentation)initWithOriginContexts:(id)a3 ktsContexts:(id)a4 destinationContexts:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = GDKTSContextAggregateRepresentation;
  v11 = [(GDKTSContextAggregateRepresentation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    originContexts = v11->_originContexts;
    v11->_originContexts = v12;

    v14 = [v9 copy];
    ktsContexts = v11->_ktsContexts;
    v11->_ktsContexts = v14;

    v16 = [v10 copy];
    destinationContexts = v11->_destinationContexts;
    v11->_destinationContexts = v16;
  }

  return v11;
}

@end