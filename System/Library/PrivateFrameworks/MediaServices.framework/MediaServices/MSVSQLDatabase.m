@interface MSVSQLDatabase
- (MSVSQLDatabase)initWithMemory;
- (MSVSQLDatabase)initWithMemoryNamed:(id)a3;
- (MSVSQLDatabase)initWithURL:(id)a3 error:(id *)a4;
- (NSString)description;
- (id)markdownTableForSQL:(id)a3;
- (id)markdownTableForStatement:(id)a3;
- (id)markdownTableForTableNamed:(id)a3;
- (id)resultsForStatement:(id)a3;
- (id)transactionWithName:(id)a3 error:(id *)a4;
@end

@implementation MSVSQLDatabase

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  connection = self->_connection;
  if (connection)
  {
    connection = connection->_databaseURI;
  }

  return [v3 stringWithFormat:@"<%@: %p uri=%@>", v4, self, connection];
}

- (id)markdownTableForTableNamed:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM %@", a3];
  v5 = [(MSVSQLDatabase *)self statementWithString:v4 error:0];

  v6 = [(MSVSQLDatabase *)self markdownTableForStatement:v5];
  [v5 invalidate];

  return v6;
}

- (id)markdownTableForStatement:(id)a3
{
  v3 = [(MSVSQLDatabase *)self resultsForStatement:a3];
  v4 = [v3 markdownTable];

  return v4;
}

- (id)markdownTableForSQL:(id)a3
{
  v4 = a3;
  v5 = [(MSVSQLDatabase *)self transactionWithName:@"markdown-table" error:0];
  v6 = [v5 statementWithString:v4 error:0];

  v7 = [(MSVSQLDatabase *)self markdownTableForStatement:v6];
  [v6 invalidate];
  [v5 rollback];

  return v7;
}

- (id)resultsForStatement:(id)a3
{
  v3 = a3;
  v4 = [[MSVSQLRowEnumerator alloc] initWithStatement:v3];

  return v4;
}

- (id)transactionWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_MSVSQLConnection *)&self->_connection->super.isa mutableCloneWithError:a4];
  if (v7)
  {
    v8 = [[MSVSQLDatabaseTransaction alloc] initWithConnection:v7 name:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MSVSQLDatabase)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MSVSQLDatabase *)self init];
  if (v7)
  {
    v8 = [_MSVSQLConnection alloc];
    v9 = [v6 path];
    v10 = [(_MSVSQLConnection *)v8 initWithDatabaseURI:v9 options:0 error:a4];
    connection = v7->_connection;
    v7->_connection = v10;

    if (!v7->_connection)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v12 = [v6 copy];
    databaseURL = v7->_databaseURL;
    v7->_databaseURL = v12;
  }

  v14 = v7;
LABEL_6:

  return v14;
}

- (MSVSQLDatabase)initWithMemoryNamed:(id)a3
{
  v4 = a3;
  v5 = [(MSVSQLDatabase *)self init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"file:%@?mode=memory&cache=shared", v4];
    v7 = [[_MSVSQLConnection alloc] initWithDatabaseURI:v6 options:1 error:0];
    connection = v5->_connection;
    v5->_connection = v7;
  }

  return v5;
}

- (MSVSQLDatabase)initWithMemory
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = [(MSVSQLDatabase *)self initWithMemoryNamed:v4];
  return v5;
}

@end