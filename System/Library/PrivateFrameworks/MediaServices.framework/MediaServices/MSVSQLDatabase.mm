@interface MSVSQLDatabase
- (MSVSQLDatabase)initWithMemory;
- (MSVSQLDatabase)initWithMemoryNamed:(id)named;
- (MSVSQLDatabase)initWithURL:(id)l error:(id *)error;
- (NSString)description;
- (id)markdownTableForSQL:(id)l;
- (id)markdownTableForStatement:(id)statement;
- (id)markdownTableForTableNamed:(id)named;
- (id)resultsForStatement:(id)statement;
- (id)transactionWithName:(id)name error:(id *)error;
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

- (id)markdownTableForTableNamed:(id)named
{
  named = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM %@", named];
  v5 = [(MSVSQLDatabase *)self statementWithString:named error:0];

  v6 = [(MSVSQLDatabase *)self markdownTableForStatement:v5];
  [v5 invalidate];

  return v6;
}

- (id)markdownTableForStatement:(id)statement
{
  v3 = [(MSVSQLDatabase *)self resultsForStatement:statement];
  markdownTable = [v3 markdownTable];

  return markdownTable;
}

- (id)markdownTableForSQL:(id)l
{
  lCopy = l;
  v5 = [(MSVSQLDatabase *)self transactionWithName:@"markdown-table" error:0];
  v6 = [v5 statementWithString:lCopy error:0];

  v7 = [(MSVSQLDatabase *)self markdownTableForStatement:v6];
  [v6 invalidate];
  [v5 rollback];

  return v7;
}

- (id)resultsForStatement:(id)statement
{
  statementCopy = statement;
  v4 = [[MSVSQLRowEnumerator alloc] initWithStatement:statementCopy];

  return v4;
}

- (id)transactionWithName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [(_MSVSQLConnection *)&self->_connection->super.isa mutableCloneWithError:error];
  if (v7)
  {
    v8 = [[MSVSQLDatabaseTransaction alloc] initWithConnection:v7 name:nameCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MSVSQLDatabase)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [(MSVSQLDatabase *)self init];
  if (v7)
  {
    v8 = [_MSVSQLConnection alloc];
    path = [lCopy path];
    v10 = [(_MSVSQLConnection *)v8 initWithDatabaseURI:path options:0 error:error];
    connection = v7->_connection;
    v7->_connection = v10;

    if (!v7->_connection)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v12 = [lCopy copy];
    databaseURL = v7->_databaseURL;
    v7->_databaseURL = v12;
  }

  v14 = v7;
LABEL_6:

  return v14;
}

- (MSVSQLDatabase)initWithMemoryNamed:(id)named
{
  namedCopy = named;
  v5 = [(MSVSQLDatabase *)self init];
  if (v5)
  {
    namedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"file:%@?mode=memory&cache=shared", namedCopy];
    v7 = [[_MSVSQLConnection alloc] initWithDatabaseURI:namedCopy options:1 error:0];
    connection = v5->_connection;
    v5->_connection = v7;
  }

  return v5;
}

- (MSVSQLDatabase)initWithMemory
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v5 = [(MSVSQLDatabase *)self initWithMemoryNamed:uUIDString];
  return v5;
}

@end