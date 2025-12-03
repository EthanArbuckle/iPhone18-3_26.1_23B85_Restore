@interface BMStreamVirtualTable
- (BMStreamVirtualTable)initWithSchema:(id)schema publisherBlock:(id)block;
- (BMStreamVirtualTable)initWithSchema:(id)schema publisherBlockWithOptions:(id)options acceptPublisherOptions:(BOOL)publisherOptions;
- (BMStreamVirtualTable)initWithStream:(id)stream useCase:(id)case;
- (id)description;
@end

@implementation BMStreamVirtualTable

- (BMStreamVirtualTable)initWithStream:(id)stream useCase:(id)case
{
  streamCopy = stream;
  caseCopy = case;
  schema = [streamCopy schema];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__BMStreamVirtualTable_initWithStream_useCase___block_invoke;
  v14[3] = &unk_1E6E53CD8;
  v10 = streamCopy;
  v15 = v10;
  v11 = caseCopy;
  v16 = v11;
  v12 = [(BMStreamVirtualTable *)self initWithSchema:schema publisherBlockWithOptions:v14 acceptPublisherOptions:1];

  if (v12)
  {
    objc_storeStrong(&v12->_stream, stream);
    objc_storeStrong(&v12->_useCase, case);
  }

  return v12;
}

- (BMStreamVirtualTable)initWithSchema:(id)schema publisherBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__BMStreamVirtualTable_initWithSchema_publisherBlock___block_invoke;
  v10[3] = &unk_1E6E53D00;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = [(BMStreamVirtualTable *)self initWithSchema:schema publisherBlockWithOptions:v10 acceptPublisherOptions:0];

  return v8;
}

- (BMStreamVirtualTable)initWithSchema:(id)schema publisherBlockWithOptions:(id)options acceptPublisherOptions:(BOOL)publisherOptions
{
  schemaCopy = schema;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = BMStreamVirtualTable;
  v11 = [(BMStreamVirtualTable *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_schema, schema);
    v13 = [optionsCopy copy];
    publisherBlock = v12->_publisherBlock;
    v12->_publisherBlock = v13;

    v12->_acceptPublisherOptions = publisherOptions;
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  tableName = [(BMSQLSchema *)self->_schema tableName];
  v6 = [v3 initWithFormat:@"<%@ %p> table: %@", v4, self, tableName];

  return v6;
}

@end