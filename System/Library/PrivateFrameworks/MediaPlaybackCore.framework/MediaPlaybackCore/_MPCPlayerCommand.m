@interface _MPCPlayerCommand
- (_MPCPlayerCommand)initWithPlayerPath:(id)a3;
- (_MPCPlayerCommand)initWithResponse:(id)a3;
@end

@implementation _MPCPlayerCommand

- (_MPCPlayerCommand)initWithPlayerPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MPCPlayerCommand;
  v5 = [(_MPCPlayerCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    playerPath = v5->_playerPath;
    v5->_playerPath = v6;
  }

  return v5;
}

- (_MPCPlayerCommand)initWithResponse:(id)a3
{
  v5 = a3;
  v6 = [v5 playerPath];
  v7 = [(_MPCPlayerCommand *)self initWithPlayerPath:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_response, a3);
  }

  return v7;
}

@end