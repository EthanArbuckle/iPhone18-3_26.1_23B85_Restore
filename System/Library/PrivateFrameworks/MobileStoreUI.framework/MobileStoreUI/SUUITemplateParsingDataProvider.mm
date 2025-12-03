@interface SUUITemplateParsingDataProvider
+ (id)templateParsingRegularExpression;
+ (void)templateParsingRegularExpression;
- (SUUITemplateParsingDataProvider)initWithRegularExpression:(id)expression;
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SUUITemplateParsingDataProvider

+ (id)templateParsingRegularExpression
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"<script.*?id=(.*?).*?>((?:.|\\n)*?)</script>" options:8 error:&v7];
  v5 = v7;
  if (!v4)
  {
    +[(SUUITemplateParsingDataProvider *)a2];
  }

  return v4;
}

- (SUUITemplateParsingDataProvider)initWithRegularExpression:(id)expression
{
  expressionCopy = expression;
  v9.receiver = self;
  v9.super_class = SUUITemplateParsingDataProvider;
  v6 = [(SUUITemplateParsingDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_regularExpression, expression);
  }

  return v7;
}

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  v44[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  statusCode = [response statusCode];
  if ((statusCode - 400) > 0xC7)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
    if (v11)
    {
      v35 = dataCopy;
      regularExpression = [(SUUITemplateParsingDataProvider *)self regularExpression];
      v17 = [regularExpression matchesInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];

      v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v17, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = v17;
      v19 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v13);
            }

            v23 = *(*(&v36 + 1) + 8 * i);
            if ([v23 numberOfRanges] == 3)
            {
              whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v25 = [v23 rangeAtIndex:1];
              v27 = [v11 substringWithRange:{v25, v26}];
              v28 = [v27 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

              v29 = [v23 rangeAtIndex:2];
              v31 = [v11 substringWithRange:{v29, v30}];
              v32 = [v31 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

              [v18 setObject:v32 forKeyedSubscript:v28];
            }

            else
            {
              NSLog(&cfstr_MalformedMatch.isa, v23);
            }
          }

          v20 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v20);
      }

      v15 = [v18 copy];
      dataCopy = v35;
    }

    else
    {
      if (!error)
      {
        v15 = 0;
        goto LABEL_20;
      }

      v33 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA688];
      v42 = &unk_286BBE508;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      [v33 errorWithDomain:@"SUUITemplateLoaderErrorDomain" code:561214578 userInfo:v13];
      *error = v15 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v15 = 0;
      goto LABEL_21;
    }

    v10 = statusCode;
    v11 = [MEMORY[0x277CBAB48] localizedStringForStatusCode:statusCode];
    v12 = MEMORY[0x277CCA9B8];
    v43[0] = @"SUUITemplateLoaderErrorHTTPStatusCodeKey";
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v43[1] = *MEMORY[0x277CCA450];
    v44[0] = v13;
    v44[1] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    *error = [v12 errorWithDomain:@"SUUITemplateLoaderErrorDomain" code:1752462448 userInfo:v14];

    v15 = 0;
  }

LABEL_20:
LABEL_21:

  return v15;
}

+ (void)templateParsingRegularExpression
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SUUITemplateLoader.m" lineNumber:31 description:{@"Malformed regular expression: %@", a3}];
}

@end