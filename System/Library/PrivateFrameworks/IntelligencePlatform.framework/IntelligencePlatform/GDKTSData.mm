@interface GDKTSData
- (GDKTSData)initWithIdentifier:(id)identifier context:(id)context data:(id)data metadata:(id)metadata;
- (NSString)description;
@end

@implementation GDKTSData

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  tripEntityId = [(GDKTSData *)self tripEntityId];
  identifier = [(GDKTSData *)self identifier];
  data = [(GDKTSData *)self data];
  context = [(GDKTSData *)self context];
  v8 = [v3 initWithFormat:@"GDKTSData<tripEntityId: %@, identifier: %@, data: %@, context: %@>", tripEntityId, identifier, data, context];

  return v8;
}

- (GDKTSData)initWithIdentifier:(id)identifier context:(id)context data:(id)data metadata:(id)metadata
{
  identifierCopy = identifier;
  contextCopy = context;
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = GDKTSData;
  v12 = [(GDKTSData *)&v22 init];
  if (v12)
  {
    v13 = [[GDEntityIdentifier alloc] initWithString:identifierCopy];
    tripEntityId = v12->_tripEntityId;
    v12->_tripEntityId = v13;

    v15 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v15;

    v17 = [dataCopy copy];
    data = v12->_data;
    v12->_data = v17;

    v19 = [contextCopy copy];
    context = v12->_context;
    v12->_context = v19;
  }

  return v12;
}

@end