@interface BMWriteServerExported
- (BMWriteServerExported)initWithProcess:(id)process accessControlPolicy:(id)policy;
@end

@implementation BMWriteServerExported

- (BMWriteServerExported)initWithProcess:(id)process accessControlPolicy:(id)policy
{
  processCopy = process;
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = BMWriteServerExported;
  v9 = [(BMWriteServerExported *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_process, process);
    objc_storeStrong(&v10->_policy, policy);
    v11 = objc_opt_new();
    writerCache = v10->_writerCache;
    v10->_writerCache = v11;
  }

  return v10;
}

- (void)checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"BMWriteServer.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"streamIdentifier"}];
}

- (void)checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"BMWriteServer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"outError"}];
}

- (void)checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMLibraryBaseProtocol> _BiomeLibraryNode(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMWriteServer.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

@end