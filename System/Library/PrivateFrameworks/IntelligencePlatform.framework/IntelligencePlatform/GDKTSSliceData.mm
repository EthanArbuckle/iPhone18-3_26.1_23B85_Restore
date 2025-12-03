@interface GDKTSSliceData
- (GDKTSSliceData)initWithIdentifier:(id)identifier context:(id)context data:(id)data metadata:(id)metadata;
- (GDKTSSliceData)initWithIdentifier:(id)identifier context:(id)context data:(id)data parameters:(id)parameters;
- (NSString)description;
@end

@implementation GDKTSSliceData

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  parameters = [(GDKTSSliceData *)self parameters];
  identifier = [(GDKTSSliceData *)self identifier];
  data = [(GDKTSSliceData *)self data];
  context = [(GDKTSSliceData *)self context];
  v8 = [v3 initWithFormat:@"GDKTSSliceData<parameters: %@, identifier: %@, data: %@, context: %@>", parameters, identifier, data, context];

  return v8;
}

- (GDKTSSliceData)initWithIdentifier:(id)identifier context:(id)context data:(id)data metadata:(id)metadata
{
  identifierCopy = identifier;
  contextCopy = context;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = GDKTSSliceData;
  v12 = [(GDKTSSliceData *)&v20 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [dataCopy copy];
    data = v12->_data;
    v12->_data = v15;

    v17 = [contextCopy copy];
    context = v12->_context;
    v12->_context = v17;
  }

  return v12;
}

- (GDKTSSliceData)initWithIdentifier:(id)identifier context:(id)context data:(id)data parameters:(id)parameters
{
  identifierCopy = identifier;
  contextCopy = context;
  dataCopy = data;
  parametersCopy = parameters;
  v24.receiver = self;
  v24.super_class = GDKTSSliceData;
  v14 = [(GDKTSSliceData *)&v24 init];
  if (v14)
  {
    v15 = [parametersCopy copy];
    parameters = v14->_parameters;
    v14->_parameters = v15;

    v17 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [dataCopy copy];
    data = v14->_data;
    v14->_data = v19;

    v21 = [contextCopy copy];
    context = v14->_context;
    v14->_context = v21;
  }

  return v14;
}

@end