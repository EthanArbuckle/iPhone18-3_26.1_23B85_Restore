@interface _IKDOMConditionalExpression
+ (id)expressionFromString:(id)a3;
+ (id)parseExpressionsFromString:(id)a3;
- (BOOL)passesForDataItem:(id)a3;
- (_IKDOMConditionalExpression)initWithOperations:(id)a3 dependentPathStrings:(id)a4 isNegated:(BOOL)a5;
@end

@implementation _IKDOMConditionalExpression

+ (id)parseExpressionsFromString:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 componentsSeparatedByString:{@", "}];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 expressionFromString:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)expressionFromString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB58] set];
  v27 = v3;
  v6 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v3];
  v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@":"]);
  v9 = [v6 isAtEnd];
  if ((v9 & 1) == 0)
  {
    v12 = 0;
    v26 = 0;
    v10 = 0;
    while (1)
    {
      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            if ([v6 scanString:@"-not-equal" intoString:0])
            {
              v15 = -1;
              goto LABEL_49;
            }

            if ([v6 scanString:@"-less-than-equal" intoString:0])
            {
              v15 = -3;
              goto LABEL_49;
            }

            if ([v6 scanString:@"-less-than" intoString:0])
            {
              v15 = 1;
              goto LABEL_49;
            }

            if ([v6 scanString:@"-greater-than-equal" intoString:0])
            {
              v15 = -2;
              goto LABEL_49;
            }

            if ([v6 scanString:@"-greater-than" intoString:0])
            {
              v15 = 2;
LABEL_49:
              [(_IKDOMConditionalOperation *)v10 setType:v15];
            }

            [v6 scanUpToCharactersFromSet:v8 intoString:0];
            v12 = 8;
            goto LABEL_51;
          }

          v28 = 0;
          [v6 scanUpToString:@"" intoString:?], &v28);
          v19 = v28;
          v14 = [v19 stringByTrimmingCharactersInSet:v7];

          if (![v14 length])
          {
            v12 = 5;
LABEL_44:

            goto LABEL_51;
          }

          [(_IKDOMConditionalOperation *)v10 setLiteral:v14];

          v12 = 5;
        }

        else
        {
          if (!v12)
          {
            v30 = 0;
            objc_msgSend(v6, "scanUpToString:intoString:", @"("), &v30;
            v13 = v30;
            v14 = [v13 stringByTrimmingCharactersInSet:v7];

            if ([v14 isEqualToString:@"not"] && !objc_msgSend(v4, "count"))
            {
              v26 = 1;
            }

            else if ((![v14 isEqualToString:@"and"] || !objc_msgSend(v4, "count")) && (objc_msgSend(v14, "length") || objc_msgSend(v4, "count")))
            {
LABEL_53:

LABEL_54:
              v11 = 0;
              goto LABEL_55;
            }

            v12 = 4;
            goto LABEL_44;
          }

          v29 = 0;
          [v6 scanUpToString:@"}" intoString:&v29];
          v14 = v29;
          if (![v14 length])
          {
            goto LABEL_53;
          }

          v17 = [[IKDataBindingPropertyPath alloc] initWithString:v14];
          v18 = [(IKDataBindingPropertyPath *)v17 string];
          [v5 addObject:v18];

          [(_IKDOMConditionalOperation *)v10 setPropertyPath:v17];
          v12 = 7;
        }
      }

      else if (v12 <= 5)
      {
        if (v12 == 4)
        {
          v16 = objc_alloc_init(_IKDOMConditionalOperation);

          if (([v6 scanString:@"(" intoString:0) & 1] == 0)
          {
            v11 = 0;
            v10 = v16;
            goto LABEL_55;
          }

          v12 = 6;
          v10 = v16;
        }

        else
        {
          v20 = [v6 scanString:@"" intoString:?], 0);
          [v4 addObject:v10];

          v10 = 0;
          if (!v20)
          {
            goto LABEL_3;
          }

          v12 = 0;
        }
      }

      else if (v12 == 6)
      {
        if (([v6 scanString:@"{" intoString:0] & 1) == 0)
        {
          goto LABEL_54;
        }

        v12 = 1;
      }

      else
      {
        if (v12 != 7)
        {
          v14 = 0;
          if ([v6 scanString:@":" intoString:0])
          {
            v12 = 3;
          }

          else
          {
            v12 = 5;
          }

          goto LABEL_44;
        }

        if (([v6 scanString:@"}" intoString:0] & 1) == 0)
        {
          goto LABEL_54;
        }

        v12 = 2;
      }

LABEL_51:
      v9 = [v6 isAtEnd];
      if (v9)
      {
        v11 = v12 == 0;
        goto LABEL_55;
      }
    }
  }

  v26 = 0;
  v10 = 0;
LABEL_3:
  v11 = 1;
LABEL_55:
  v21 = 0;
  if ([v4 count] && v11 && (v9 & 1) != 0)
  {
    v22 = [_IKDOMConditionalExpression alloc];
    v23 = [v4 copy];
    v24 = [v5 copy];
    v21 = [(_IKDOMConditionalExpression *)v22 initWithOperations:v23 dependentPathStrings:v24 isNegated:v26 & 1];
  }

  return v21;
}

- (_IKDOMConditionalExpression)initWithOperations:(id)a3 dependentPathStrings:(id)a4 isNegated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _IKDOMConditionalExpression;
  v10 = [(_IKDOMConditionalExpression *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    operations = v10->_operations;
    v10->_operations = v11;

    v13 = [v9 copy];
    dependentPathStrings = v10->_dependentPathStrings;
    v10->_dependentPathStrings = v13;

    v10->_isNegated = a5;
  }

  return v10;
}

- (BOOL)passesForDataItem:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_operations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v14 + 1) + 8 * i) passesForDataItem:{v4, v14}])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  isNegated = self->_isNegated;
  v12 = *MEMORY[0x277D85DE8];
  return (v10 ^ isNegated) & 1;
}

@end