@interface GDKTSData
- (GDKTSData)initWithIdentifier:(id)a3 context:(id)a4 data:(id)a5 metadata:(id)a6;
- (NSString)description;
@end

@implementation GDKTSData

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDKTSData *)self tripEntityId];
  v5 = [(GDKTSData *)self identifier];
  v6 = [(GDKTSData *)self data];
  v7 = [(GDKTSData *)self context];
  v8 = [v3 initWithFormat:@"GDKTSData<tripEntityId: %@, identifier: %@, data: %@, context: %@>", v4, v5, v6, v7];

  return v8;
}

- (GDKTSData)initWithIdentifier:(id)a3 context:(id)a4 data:(id)a5 metadata:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = GDKTSData;
  v12 = [(GDKTSData *)&v22 init];
  if (v12)
  {
    v13 = [[GDEntityIdentifier alloc] initWithString:v9];
    tripEntityId = v12->_tripEntityId;
    v12->_tripEntityId = v13;

    v15 = [v9 copy];
    identifier = v12->_identifier;
    v12->_identifier = v15;

    v17 = [v11 copy];
    data = v12->_data;
    v12->_data = v17;

    v19 = [v10 copy];
    context = v12->_context;
    v12->_context = v19;
  }

  return v12;
}

@end