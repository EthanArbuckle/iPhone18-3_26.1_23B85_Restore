@interface GDKTSContextAggregateRepresentation
- (GDKTSContextAggregateRepresentation)initWithCoder:(id)coder;
- (GDKTSContextAggregateRepresentation)initWithOriginContexts:(id)contexts ktsContexts:(id)ktsContexts destinationContexts:(id)destinationContexts;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKTSContextAggregateRepresentation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GDKTSContextAggregateRepresentation allocWithZone:zone];
  originContexts = self->_originContexts;
  ktsContexts = self->_ktsContexts;
  destinationContexts = self->_destinationContexts;

  return [(GDKTSContextAggregateRepresentation *)v4 initWithOriginContexts:originContexts ktsContexts:ktsContexts destinationContexts:destinationContexts];
}

- (GDKTSContextAggregateRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_originContexts);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_ktsContexts);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_destinationContexts);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(GDKTSContextAggregateRepresentation *)self initWithOriginContexts:v7 ktsContexts:v10 destinationContexts:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  originContexts = self->_originContexts;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_originContexts);
  [coderCopy encodeObject:originContexts forKey:v6];

  ktsContexts = self->_ktsContexts;
  v8 = NSStringFromSelector(sel_ktsContexts);
  [coderCopy encodeObject:ktsContexts forKey:v8];

  destinationContexts = self->_destinationContexts;
  v10 = NSStringFromSelector(sel_destinationContexts);
  [coderCopy encodeObject:destinationContexts forKey:v10];
}

- (GDKTSContextAggregateRepresentation)initWithOriginContexts:(id)contexts ktsContexts:(id)ktsContexts destinationContexts:(id)destinationContexts
{
  contextsCopy = contexts;
  ktsContextsCopy = ktsContexts;
  destinationContextsCopy = destinationContexts;
  v19.receiver = self;
  v19.super_class = GDKTSContextAggregateRepresentation;
  v11 = [(GDKTSContextAggregateRepresentation *)&v19 init];
  if (v11)
  {
    v12 = [contextsCopy copy];
    originContexts = v11->_originContexts;
    v11->_originContexts = v12;

    v14 = [ktsContextsCopy copy];
    ktsContexts = v11->_ktsContexts;
    v11->_ktsContexts = v14;

    v16 = [destinationContextsCopy copy];
    destinationContexts = v11->_destinationContexts;
    v11->_destinationContexts = v16;
  }

  return v11;
}

@end