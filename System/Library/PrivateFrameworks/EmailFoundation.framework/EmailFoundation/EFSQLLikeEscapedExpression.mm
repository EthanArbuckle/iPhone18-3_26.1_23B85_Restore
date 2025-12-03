@interface EFSQLLikeEscapedExpression
- (EFSQLLikeEscapedExpression)initWithValue:(id)value pattern:(unint64_t)pattern escapeCharacter:(unsigned __int16)character;
- (NSString)ef_SQLExpression;
- (id)_stringForPattern:(void *)pattern literal:;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation EFSQLLikeEscapedExpression

- (EFSQLLikeEscapedExpression)initWithValue:(id)value pattern:(unint64_t)pattern escapeCharacter:(unsigned __int16)character
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = EFSQLLikeEscapedExpression;
  v10 = [(EFSQLLikeEscapedExpression *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
    v11->_escapeCharacter = character;
    v11->_pattern = pattern;
  }

  return v11;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLLikeEscapedExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  v4 = [(EFSQLLikeEscapedExpression *)self _stringForPattern:self->_value literal:?];
  [v4 ef_renderSQLExpressionInto:intoCopy];
  [intoCopy appendFormat:@" ESCAPE '%C'", self->_escapeCharacter];
}

- (id)_stringForPattern:(void *)pattern literal:
{
  patternCopy = pattern;
  v7 = patternCopy;
  if (self)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_12;
        }

        v8 = MEMORY[0x1E696AEC0];
        v9 = [patternCopy ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater:{objc_msgSend(self, "escapeCharacter")}];
        v10 = [v8 stringWithFormat:@"%%%@%%", v9];
      }

      else
      {
        v11 = MEMORY[0x1E696AEC0];
        v9 = [patternCopy ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater:{objc_msgSend(self, "escapeCharacter")}];
        v10 = [v11 stringWithFormat:@"%@%%", v9];
      }

      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v12 = MEMORY[0x1E696AEC0];
      v9 = [patternCopy ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater:{objc_msgSend(self, "escapeCharacter")}];
      v10 = [v12 stringWithFormat:@"%%%@", v9];
LABEL_11:
      v3 = v10;

      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v3 = patternCopy;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:

  return v3;
}

@end