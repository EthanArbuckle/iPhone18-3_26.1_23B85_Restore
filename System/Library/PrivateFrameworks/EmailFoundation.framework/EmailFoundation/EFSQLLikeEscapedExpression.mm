@interface EFSQLLikeEscapedExpression
- (EFSQLLikeEscapedExpression)initWithValue:(id)a3 pattern:(unint64_t)a4 escapeCharacter:(unsigned __int16)a5;
- (NSString)ef_SQLExpression;
- (id)_stringForPattern:(void *)a3 literal:;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation EFSQLLikeEscapedExpression

- (EFSQLLikeEscapedExpression)initWithValue:(id)a3 pattern:(unint64_t)a4 escapeCharacter:(unsigned __int16)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = EFSQLLikeEscapedExpression;
  v10 = [(EFSQLLikeEscapedExpression *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a3);
    v11->_escapeCharacter = a5;
    v11->_pattern = a4;
  }

  return v11;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLLikeEscapedExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v5 = a3;
  v4 = [(EFSQLLikeEscapedExpression *)self _stringForPattern:self->_value literal:?];
  [v4 ef_renderSQLExpressionInto:v5];
  [v5 appendFormat:@" ESCAPE '%C'", self->_escapeCharacter];
}

- (id)_stringForPattern:(void *)a3 literal:
{
  v6 = a3;
  v7 = v6;
  if (a1)
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
        v9 = [v6 ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater:{objc_msgSend(a1, "escapeCharacter")}];
        v10 = [v8 stringWithFormat:@"%%%@%%", v9];
      }

      else
      {
        v11 = MEMORY[0x1E696AEC0];
        v9 = [v6 ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater:{objc_msgSend(a1, "escapeCharacter")}];
        v10 = [v11 stringWithFormat:@"%@%%", v9];
      }

      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v12 = MEMORY[0x1E696AEC0];
      v9 = [v6 ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater:{objc_msgSend(a1, "escapeCharacter")}];
      v10 = [v12 stringWithFormat:@"%%%@", v9];
LABEL_11:
      v3 = v10;

      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v3 = v6;
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