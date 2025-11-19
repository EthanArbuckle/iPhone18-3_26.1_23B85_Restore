@interface ECRawMessageHeaders
- (ECRawMessageHeaders)initWithHeaderString:(id)a3;
- (id)firstHeaderForKey:(id)a3;
- (id)headersForKey:(id)a3;
@end

@implementation ECRawMessageHeaders

- (ECRawMessageHeaders)initWithHeaderString:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ECRawMessageHeaders;
  v5 = [(ECRawMessageHeaders *)&v31 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
    v7 = 0;
    v8 = 0;
LABEL_3:
    for (i = v7; i < [v4 length]; ++i)
    {
      if ([v4 characterAtIndex:i] == 13 && i + 1 < objc_msgSend(v4, "length") && objc_msgSend(v4, "characterAtIndex:", i + 1) == 10 && (i + 2 >= objc_msgSend(v4, "length") || (objc_msgSend(v6, "characterIsMember:", objc_msgSend(v4, "characterAtIndex:")) & 1) == 0))
      {
        v10 = [v4 substringWithRange:{v8, i - v8 + 2}];
        v11 = 0;
        v7 = i + 1;
        v30 = i + 2;
        while (1)
        {
          if (v11 >= [v10 length])
          {
            v12 = 0;
            v13 = 0;
            goto LABEL_26;
          }

          if ([v10 characterAtIndex:v11] == 58)
          {
            break;
          }

          ++v11;
        }

        v13 = [v10 substringToIndex:v11];
        v14 = [v10 substringFromIndex:v11 + 1];
        v12 = v14;
        if (v13 && v14)
        {
          v28 = [[ECRawMessageHeader alloc] initWithHeaderFieldName:v13 body:v14];
          headers = v5->_headers;
          if (!headers)
          {
            v16 = objc_opt_new();
            v17 = v5->_headers;
            v5->_headers = v16;

            headers = v5->_headers;
          }

          v18 = [(ECRawMessageHeader *)v28 name];
          v19 = [(NSMutableDictionary *)headers objectForKeyedSubscript:v18];

          if (v19)
          {
            v20 = v5->_headers;
            v21 = [v29 name];
            v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:v21];
            [v22 addObject:v29];
          }

          else
          {
            v21 = [MEMORY[0x277CBEB18] arrayWithObject:v29];
            v23 = v5->_headers;
            v22 = [v29 name];
            [(NSMutableDictionary *)v23 setObject:v21 forKeyedSubscript:v22];
          }

          orderedHeaders = v5->_orderedHeaders;
          if (!orderedHeaders)
          {
            v25 = objc_opt_new();
            v26 = v5->_orderedHeaders;
            v5->_orderedHeaders = v25;

            orderedHeaders = v5->_orderedHeaders;
          }

          [(NSMutableArray *)orderedHeaders addObject:v29];
        }

LABEL_26:

        v8 = v30;
        goto LABEL_3;
      }
    }
  }

  return v5;
}

- (id)headersForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_headers objectForKeyedSubscript:a3];

  return v3;
}

- (id)firstHeaderForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_headers objectForKeyedSubscript:a3];
  v4 = [v3 firstObject];

  return v4;
}

@end