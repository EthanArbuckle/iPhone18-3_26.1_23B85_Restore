@interface BMStreamVirtualTable
- (BMStreamVirtualTable)initWithSchema:(id)a3 publisherBlock:(id)a4;
- (BMStreamVirtualTable)initWithSchema:(id)a3 publisherBlockWithOptions:(id)a4 acceptPublisherOptions:(BOOL)a5;
- (BMStreamVirtualTable)initWithStream:(id)a3 useCase:(id)a4;
- (id)description;
@end

@implementation BMStreamVirtualTable

- (BMStreamVirtualTable)initWithStream:(id)a3 useCase:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 schema];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__BMStreamVirtualTable_initWithStream_useCase___block_invoke;
  v14[3] = &unk_1E6E53CD8;
  v10 = v7;
  v15 = v10;
  v11 = v8;
  v16 = v11;
  v12 = [(BMStreamVirtualTable *)self initWithSchema:v9 publisherBlockWithOptions:v14 acceptPublisherOptions:1];

  if (v12)
  {
    objc_storeStrong(&v12->_stream, a3);
    objc_storeStrong(&v12->_useCase, a4);
  }

  return v12;
}

- (BMStreamVirtualTable)initWithSchema:(id)a3 publisherBlock:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__BMStreamVirtualTable_initWithSchema_publisherBlock___block_invoke;
  v10[3] = &unk_1E6E53D00;
  v11 = v6;
  v7 = v6;
  v8 = [(BMStreamVirtualTable *)self initWithSchema:a3 publisherBlockWithOptions:v10 acceptPublisherOptions:0];

  return v8;
}

- (BMStreamVirtualTable)initWithSchema:(id)a3 publisherBlockWithOptions:(id)a4 acceptPublisherOptions:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = BMStreamVirtualTable;
  v11 = [(BMStreamVirtualTable *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_schema, a3);
    v13 = [v10 copy];
    publisherBlock = v12->_publisherBlock;
    v12->_publisherBlock = v13;

    v12->_acceptPublisherOptions = a5;
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(BMSQLSchema *)self->_schema tableName];
  v6 = [v3 initWithFormat:@"<%@ %p> table: %@", v4, self, v5];

  return v6;
}

@end