@interface LACXPCConnectionBSAdapter
- (LACXPCConnectionBSAdapter)initWithEndpoint:(id)a3;
@end

@implementation LACXPCConnectionBSAdapter

- (LACXPCConnectionBSAdapter)initWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = [v4 endpoint];

  if (v5)
  {
    v6 = MEMORY[0x1E698F488];
    v7 = [v4 endpoint];
    v8 = [v6 NSXPCConnectionWithEndpoint:v7 configurator:&__block_literal_global_14];

    v10.receiver = self;
    v10.super_class = LACXPCConnectionBSAdapter;
    self = [(LACXPCConnectionDefaultAdapter *)&v10 initWithConnection:v8];

    v5 = self;
  }

  return v5;
}

void __46__LACXPCConnectionBSAdapter_initWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7568];
  v3 = a2;
  v4 = [v2 attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setPerMessageAssertionAttributes:v5];

  v6 = *MEMORY[0x1E69E9840];
}

@end