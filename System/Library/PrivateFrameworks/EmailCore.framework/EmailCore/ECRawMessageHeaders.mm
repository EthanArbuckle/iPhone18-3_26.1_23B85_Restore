@interface ECRawMessageHeaders
- (ECRawMessageHeaders)initWithHeaderString:(id)string;
- (id)firstHeaderForKey:(id)key;
- (id)headersForKey:(id)key;
@end

@implementation ECRawMessageHeaders

- (ECRawMessageHeaders)initWithHeaderString:(id)string
{
  stringCopy = string;
  v31.receiver = self;
  v31.super_class = ECRawMessageHeaders;
  v5 = [(ECRawMessageHeaders *)&v31 init];
  if (v5)
  {
    ef_rfc6376WhitespaceCharacterSet = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
    v7 = 0;
    v8 = 0;
LABEL_3:
    for (i = v7; i < [stringCopy length]; ++i)
    {
      if ([stringCopy characterAtIndex:i] == 13 && i + 1 < objc_msgSend(stringCopy, "length") && objc_msgSend(stringCopy, "characterAtIndex:", i + 1) == 10 && (i + 2 >= objc_msgSend(stringCopy, "length") || (objc_msgSend(ef_rfc6376WhitespaceCharacterSet, "characterIsMember:", objc_msgSend(stringCopy, "characterAtIndex:")) & 1) == 0))
      {
        v10 = [stringCopy substringWithRange:{v8, i - v8 + 2}];
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

          name = [(ECRawMessageHeader *)v28 name];
          v19 = [(NSMutableDictionary *)headers objectForKeyedSubscript:name];

          if (v19)
          {
            v20 = v5->_headers;
            name2 = [v29 name];
            name3 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:name2];
            [name3 addObject:v29];
          }

          else
          {
            name2 = [MEMORY[0x277CBEB18] arrayWithObject:v29];
            v23 = v5->_headers;
            name3 = [v29 name];
            [(NSMutableDictionary *)v23 setObject:name2 forKeyedSubscript:name3];
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

- (id)headersForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_headers objectForKeyedSubscript:key];

  return v3;
}

- (id)firstHeaderForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_headers objectForKeyedSubscript:key];
  firstObject = [v3 firstObject];

  return firstObject;
}

@end