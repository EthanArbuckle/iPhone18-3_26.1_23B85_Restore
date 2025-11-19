@interface GDKTSSliceData
- (GDKTSSliceData)initWithIdentifier:(id)a3 context:(id)a4 data:(id)a5 metadata:(id)a6;
- (GDKTSSliceData)initWithIdentifier:(id)a3 context:(id)a4 data:(id)a5 parameters:(id)a6;
- (NSString)description;
@end

@implementation GDKTSSliceData

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDKTSSliceData *)self parameters];
  v5 = [(GDKTSSliceData *)self identifier];
  v6 = [(GDKTSSliceData *)self data];
  v7 = [(GDKTSSliceData *)self context];
  v8 = [v3 initWithFormat:@"GDKTSSliceData<parameters: %@, identifier: %@, data: %@, context: %@>", v4, v5, v6, v7];

  return v8;
}

- (GDKTSSliceData)initWithIdentifier:(id)a3 context:(id)a4 data:(id)a5 metadata:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = GDKTSSliceData;
  v12 = [(GDKTSSliceData *)&v20 init];
  if (v12)
  {
    v13 = [v9 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [v11 copy];
    data = v12->_data;
    v12->_data = v15;

    v17 = [v10 copy];
    context = v12->_context;
    v12->_context = v17;
  }

  return v12;
}

- (GDKTSSliceData)initWithIdentifier:(id)a3 context:(id)a4 data:(id)a5 parameters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = GDKTSSliceData;
  v14 = [(GDKTSSliceData *)&v24 init];
  if (v14)
  {
    v15 = [v13 copy];
    parameters = v14->_parameters;
    v14->_parameters = v15;

    v17 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [v12 copy];
    data = v14->_data;
    v14->_data = v19;

    v21 = [v11 copy];
    context = v14->_context;
    v14->_context = v21;
  }

  return v14;
}

@end