@interface MKHTTPContentPayload
- (MKHTTPContentPayload)initWithHeaderValue:(id)a3;
@end

@implementation MKHTTPContentPayload

- (MKHTTPContentPayload)initWithHeaderValue:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MKHTTPContentPayload;
  v5 = [(MKHTTPContentPayload *)&v15 init];
  if (v5)
  {
    if (!v4)
    {
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
    v14 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v14];
    v8 = v14;
    if (v8)
    {
      v9 = +[MKLog log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MKHTTPContentPayload *)v5 initWithHeaderValue:v8, v9];
      }

LABEL_11:

      goto LABEL_12;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = +[MKLog log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MKHTTPContentPayload *)v5 initWithHeaderValue:v9];
      }

      goto LABEL_11;
    }

    v10 = [v7 objectForKeyedSubscript:@"is_required"];
    -[MKHTTPContentPayload setIsRequired:](v5, "setIsRequired:", [v10 BOOLValue]);

    v11 = [v7 objectForKeyedSubscript:@"is_excluded_from_backup"];
    -[MKHTTPContentPayload setIsExcludedFromBackup:](v5, "setIsExcludedFromBackup:", [v11 BOOLValue]);
  }

  v12 = v5;
LABEL_13:

  return v12;
}

@end