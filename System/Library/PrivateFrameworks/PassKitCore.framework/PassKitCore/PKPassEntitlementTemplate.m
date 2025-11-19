@interface PKPassEntitlementTemplate
- (BOOL)clearGroupWhenSelected;
- (NSString)localizedDescription;
- (NSString)localizedGroup;
- (NSString)localizedTitle;
- (PKPassEntitlementTemplate)initWithDictionary:(id)a3 bundle:(id)a4;
- (id)_stringReplacingPlaceholdersInString:(id)a3 withInserts:(id)a4;
- (int64_t)groupRenderingPriority;
- (unint64_t)displayStyle;
- (void)setFieldInserts:(id)a3;
@end

@implementation PKPassEntitlementTemplate

- (PKPassEntitlementTemplate)initWithDictionary:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPassEntitlementTemplate;
  v9 = [(PKPassEntitlementTemplate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rawDictionary, a3);
    objc_storeStrong(&v10->_bundle, a4);
  }

  return v10;
}

- (void)setFieldInserts:(id)a3
{
  v4 = [a3 copy];
  fieldInserts = self->_fieldInserts;
  self->_fieldInserts = v4;
}

- (NSString)localizedTitle
{
  v3 = [(NSDictionary *)self->_rawDictionary objectForKeyedSubscript:@"title"];
  v4 = [(NSDictionary *)self->_fieldInserts objectForKeyedSubscript:@"title"];
  v5 = [(PKPassEntitlementTemplate *)self _stringReplacingPlaceholdersInString:v3 withInserts:v4];

  return v5;
}

- (NSString)localizedDescription
{
  v3 = [(NSDictionary *)self->_rawDictionary objectForKeyedSubscript:@"description"];
  v4 = [(NSDictionary *)self->_fieldInserts objectForKeyedSubscript:@"description"];
  v5 = [(PKPassEntitlementTemplate *)self _stringReplacingPlaceholdersInString:v3 withInserts:v4];

  return v5;
}

- (NSString)localizedGroup
{
  v3 = [(NSDictionary *)self->_rawDictionary objectForKeyedSubscript:@"groupTitle"];
  v4 = [(NSDictionary *)self->_fieldInserts objectForKeyedSubscript:@"groupTitle"];
  v5 = [(PKPassEntitlementTemplate *)self _stringReplacingPlaceholdersInString:v3 withInserts:v4];

  return v5;
}

- (int64_t)groupRenderingPriority
{
  v2 = [(NSDictionary *)self->_rawDictionary PKNumberForKey:@"groupRenderingPriority"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)clearGroupWhenSelected
{
  v2 = [(NSDictionary *)self->_rawDictionary objectForKeyedSubscript:@"clearGroupWhenSelected"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)displayStyle
{
  v2 = [(NSDictionary *)self->_rawDictionary objectForKeyedSubscript:@"displayStyle"];
  v3 = PKPassEntitlementDisplayStyleFromString(v2);

  return v3;
}

- (id)_stringReplacingPlaceholdersInString:(id)a3 withInserts:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v40 = v7;
    v8 = PKLocalizedStringInMobileAssetsStringsBundle(v6, self->_bundle, 0);

    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v47 = 0;
    v10 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"%\\w+%" options:0 error:&v47];
    v11 = v47;
    v12 = [v10 matchesInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
    v13 = [v12 count];
    v14 = v8;
    if (v13)
    {
      v37 = v12;
      v38 = v11;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v12;
      v15 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      v39 = v10;
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v44;
        do
        {
          v19 = 0;
          v41 = v16;
          do
          {
            if (*v44 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = [*(*(&v43 + 1) + 8 * v19) range];
            if (v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v22 = v20;
              v23 = v21;
              v24 = [v8 substringWithRange:{v17, v20}];
              v25 = v9;
              [v9 appendString:v24];

              v26 = v8;
              v27 = [v8 substringWithRange:{v22 + 1, v23 - 2}];
              v28 = [v40 objectForKeyedSubscript:v27];
              if (v28 && (v29 = v28, v30 = MEMORY[0x1E696AEC0], [v40 objectForKeyedSubscript:v27], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "stringWithFormat:", @"%@", v31), v32 = objc_claimAutoreleasedReturnValue(), v31, v29, v32))
              {
                [v25 appendString:v32];
              }

              else
              {
                v33 = PKLogFacilityTypeGetObject(0x1CuLL);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v49 = v27;
                  _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "Error: Did not find %@ in entitlement template fields", buf, 0xCu);
                }

                [v25 appendString:@"•••"];
              }

              v16 = v41;
              v17 = v22 + v23;

              v8 = v26;
              v9 = v25;
            }

            ++v19;
          }

          while (v16 != v19);
          v16 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      v35 = [v8 substringWithRange:{v17, objc_msgSend(v8, "length") - v17}];
      [v9 appendString:v35];

      v14 = v9;
      v11 = v38;
      v10 = v39;
      v12 = v37;
    }

    v34 = v14;

    v7 = v40;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

@end