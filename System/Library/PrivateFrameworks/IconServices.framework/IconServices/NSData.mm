@interface NSData
@end

@implementation NSData

void __63__NSData_ISCompositorResourceValidationToken___is_invalidToken__block_invoke()
{
  v0 = [MEMORY[0x1E696AFB0] _IF_nullUUID];
  [v0 getUUIDBytes:&v5];

  v6 = -1;
  v1 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:@"invalid_token"];
  [v1 getUUIDBytes:&v7];

  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:40];
  v3 = _is_invalidToken_invalidToken;
  _is_invalidToken_invalidToken = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __61__NSData_ISCompositorResourceValidationToken___is_staleToken__block_invoke()
{
  v0 = [MEMORY[0x1E696AFB0] _IF_nullUUID];
  [v0 getUUIDBytes:&v5];

  v6 = -1;
  v1 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:@"stale_token"];
  [v1 getUUIDBytes:&v7];

  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:40];
  v3 = _is_staleToken_staleToken;
  _is_staleToken_staleToken = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __61__NSData_ISCompositorResourceValidationToken___is_validToken__block_invoke()
{
  v0 = [MEMORY[0x1E696AFB0] _IF_nullUUID];
  [v0 getUUIDBytes:&v5];

  v6 = -1;
  v1 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:@"valid_token"];
  [v1 getUUIDBytes:&v7];

  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:40];
  v3 = _is_validToken_validToken;
  _is_validToken_validToken = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end