@interface _MPCPlayerCommand
- (_MPCPlayerCommand)initWithPlayerPath:(id)path;
- (_MPCPlayerCommand)initWithResponse:(id)response;
@end

@implementation _MPCPlayerCommand

- (_MPCPlayerCommand)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _MPCPlayerCommand;
  v5 = [(_MPCPlayerCommand *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    playerPath = v5->_playerPath;
    v5->_playerPath = v6;
  }

  return v5;
}

- (_MPCPlayerCommand)initWithResponse:(id)response
{
  responseCopy = response;
  playerPath = [responseCopy playerPath];
  v7 = [(_MPCPlayerCommand *)self initWithPlayerPath:playerPath];

  if (v7)
  {
    objc_storeStrong(&v7->_response, response);
  }

  return v7;
}

@end