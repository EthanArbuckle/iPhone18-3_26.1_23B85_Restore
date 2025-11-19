@interface EMMailToURLComponents
+ (id)componentsWithURL:(id)a3;
- (EMMailToURLComponents)initWithURL:(id)a3;
- (void)_decomposeURL:(id)a3;
@end

@implementation EMMailToURLComponents

+ (id)componentsWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4];

  return v5;
}

- (EMMailToURLComponents)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EMMailToURLComponents;
  v5 = [(EMMailToURLComponents *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EMMailToURLComponents *)v5 _decomposeURL:v4];
  }

  return v6;
}

- (void)_decomposeURL:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    goto LABEL_48;
  }

  v52 = v3;
  v57 = [v3 absoluteString];
  v5 = [v57 rangeOfString:@"mailto:" options:9];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  v6 = v4;
  context = objc_autoreleasePoolPush();
  v58 = [MEMORY[0x1E695DF70] array];
  v55 = [MEMORY[0x1E695DF70] array];
  v56 = [MEMORY[0x1E695DF70] array];
  v53 = [v57 substringFromIndex:v5 + v6];
  v7 = [v53 rangeOfString:@"?"];
  v9 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = 0;
    v10 = v53;
  }

  else
  {
    v11 = [v53 substringFromIndex:v7 + v8];
    v12 = [v53 substringToIndex:v9];

    v47 = [v11 componentsSeparatedByString:@"&"];

    v10 = v12;
  }

  v13 = MEMORY[0x1E699AFC8];
  v54 = v10;
  v14 = [v10 stringByRemovingPercentEncoding];
  v15 = [v13 addressListFromHeaderValue:v14];

  v51 = v15;
  if ([v15 count])
  {
    [v58 addObjectsFromArray:v15];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v47;
  v16 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (!v16)
  {
    v61 = 0;
    v62 = 0;
    v60 = 0;
    goto LABEL_40;
  }

  v61 = 0;
  v62 = 0;
  v60 = 0;
  v17 = *v65;
  v50 = *MEMORY[0x1E699B180];
  v18 = *MEMORY[0x1E699B088];
  v48 = *MEMORY[0x1E699B088];
  v49 = *MEMORY[0x1E699B098];
  do
  {
    v19 = 0;
    do
    {
      if (*v65 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v64 + 1) + 8 * v19);
      v22 = [v20 rangeOfString:@"="];
      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = v21;
        v24 = [v20 substringToIndex:v22];
        v25 = [v24 lowercaseString];

        v26 = [v20 substringFromIndex:v22 + v23];
        if ([v25 length] && objc_msgSend(v26, "length"))
        {
          v27 = [v26 ef_stringByReplacingPercentEscapesUsingEncoding:4];

          if ([v25 isEqualToString:@"body"])
          {
            [v27 ef_stringByEscapingForMessageBody];
            v62 = v28 = v62;
            goto LABEL_23;
          }

          if ([v25 isEqualToString:@"subject"])
          {
            v28 = v61;
            v61 = v27;
            goto LABEL_23;
          }

          v29 = [MEMORY[0x1E695DFF8] em_mailToFromQueryItemKey];
          v30 = [v25 ef_caseInsensitiveIsEqualToString:v29];

          if (v30)
          {
            v28 = v60;
            v60 = v27;
            goto LABEL_23;
          }

          if (([v25 isEqualToString:@"attachment"] & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"attachdircontent") & 1) == 0)
          {
            v31 = [MEMORY[0x1E699AFC8] addressListFromHeaderValue:v27];
            v28 = v31;
            if (v31 && [(NSString *)v31 count])
            {
              if ([v25 isEqualToString:v50])
              {
                [v58 addObjectsFromArray:v28];
              }

              if ([v25 isEqualToString:v49])
              {
                [v55 addObjectsFromArray:v28];
              }

              if ([v25 isEqualToString:v48])
              {
                [v56 addObjectsFromArray:v28];
              }
            }

LABEL_23:
          }
        }

        else
        {
          v27 = v26;
        }
      }

      ++v19;
    }

    while (v16 != v19);
    v32 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    v16 = v32;
  }

  while (v32);
LABEL_40:

  if ([v58 count])
  {
    v33 = [v58 copy];
    toRecipients = self->_toRecipients;
    self->_toRecipients = v33;
  }

  if ([v55 count])
  {
    v35 = [v55 copy];
    ccRecipients = self->_ccRecipients;
    self->_ccRecipients = v35;
  }

  if ([v56 count])
  {
    v37 = [v56 copy];
    bccRecipients = self->_bccRecipients;
    self->_bccRecipients = v37;
  }

  subject = self->_subject;
  self->_subject = v61;
  v40 = v61;

  body = self->_body;
  self->_body = v62;
  v42 = v62;

  from = self->_from;
  self->_from = v60;
  v44 = v60;

  objc_autoreleasePoolPop(context);
LABEL_47:

  v3 = v52;
LABEL_48:

  v45 = *MEMORY[0x1E69E9840];
}

@end