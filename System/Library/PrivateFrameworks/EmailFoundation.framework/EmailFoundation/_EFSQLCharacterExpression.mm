@interface _EFSQLCharacterExpression
- (NSString)ef_SQLExpression;
- (_EFSQLCharacterExpression)initWithCharacter:(unsigned __int16)character;
@end

@implementation _EFSQLCharacterExpression

- (_EFSQLCharacterExpression)initWithCharacter:(unsigned __int16)character
{
  v5.receiver = self;
  v5.super_class = _EFSQLCharacterExpression;
  result = [(_EFSQLCharacterExpression *)&v5 init];
  if (result)
  {
    result->_character = character;
  }

  return result;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(_EFSQLCharacterExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

@end