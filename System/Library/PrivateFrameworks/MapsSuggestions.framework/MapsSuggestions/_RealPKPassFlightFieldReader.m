@interface _RealPKPassFlightFieldReader
- (id)arrivalAirportCode;
- (id)arrivalTime;
- (id)combinedFlightCode;
- (id)departureAirportCode;
- (id)departureGate;
- (id)departureTerminal;
- (id)departureTime;
- (void)loadPass:(id)a3;
@end

@implementation _RealPKPassFlightFieldReader

- (void)loadPass:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 allSemantics];
  semantics = self->_semantics;
  self->_semantics = v5;

  v49 = v4;
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = self;
  v7 = [v49 primaryFields];
  v8 = v48;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v10)
  {
    v11 = *v71;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v71 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v70 + 1) + 8 * i);
        v14 = [v13 key];
        v15 = [v13 value];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          [(NSDictionary *)v8 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v10);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [v49 frontFieldBuckets];
  v18 = [obj countByEnumeratingWithState:&v58 objects:&v70 count:16];
  if (v18)
  {
    v52 = *v59;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v59 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v58 + 1) + 8 * j);
        v21 = v8;
        v22 = v20;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v66 objects:v74 count:16];
        if (v24)
        {
          v25 = *v67;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v67 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v66 + 1) + 8 * k);
              v28 = [v27 key];
              v29 = [v27 value];
              v30 = v29;
              if (v28)
              {
                v31 = v29 == 0;
              }

              else
              {
                v31 = 1;
              }

              if (!v31)
              {
                [(NSDictionary *)v21 setObject:v29 forKeyedSubscript:v28];
              }
            }

            v24 = [v23 countByEnumeratingWithState:&v66 objects:v74 count:16];
          }

          while (v24);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v58 objects:&v70 count:16];
    }

    while (v18);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = [v49 backFieldBuckets];
  v32 = [obja countByEnumeratingWithState:&v54 objects:&v66 count:16];
  if (v32)
  {
    v53 = *v55;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v55 != v53)
        {
          objc_enumerationMutation(obja);
        }

        v34 = *(*(&v54 + 1) + 8 * m);
        v35 = v8;
        v36 = v34;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v37 = v36;
        v38 = [v37 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v38)
        {
          v39 = *v63;
          do
          {
            for (n = 0; n != v38; ++n)
            {
              if (*v63 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v41 = *(*(&v62 + 1) + 8 * n);
              v42 = [v41 key];
              v43 = [v41 value];
              v44 = v43;
              if (v42)
              {
                v45 = v43 == 0;
              }

              else
              {
                v45 = 1;
              }

              if (!v45)
              {
                [(NSDictionary *)v35 setObject:v43 forKeyedSubscript:v42];
              }
            }

            v38 = [v37 countByEnumeratingWithState:&v62 objects:v74 count:16];
          }

          while (v38);
        }
      }

      v32 = [obja countByEnumeratingWithState:&v54 objects:&v66 count:16];
    }

    while (v32);
  }

  fields = v47->_fields;
  v47->_fields = v8;
}

- (id)combinedFlightCode
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BBE28];
  v4 = self->_semantics;
  if (([v3 isEqualToString:*MEMORY[0x1E69BBDA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE88]] & 1) != 0
    || ([v3 isEqualToString:v3] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD38]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD88]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD98]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE18]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE38]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE98]] & 1) != 0)
  {
    v5 = [(NSDictionary *)v4 objectForKey:v3];
    v6 = [v5 stringValue];
  }

  else
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
      v34 = 1024;
      v35 = 148;
      v36 = 2082;
      v37 = "NSString *_stringFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
      v38 = 2082;
      v39 = "! PKPassSemanticIsStringKey(key)";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic string!", buf, 0x26u);
    }

    v6 = 0;
  }

  if ([v6 length])
  {
    v7 = v6;
    goto LABEL_93;
  }

  v8 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"flight"];
  v9 = v8;
  if (v8)
  {
    v30 = 0;
    v31 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v8;
  }

  else
  {
    v15 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"flightNumber"];
    if (v15)
    {
      v30 = 0;
      v31 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v29 = v15;
    }

    else
    {
      v15 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"FLIGHT"];
      if (v15)
      {
        v28 = v15;
        v29 = 0;
        v31 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v30 = 1;
      }

      else
      {
        v15 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"flightNo"];
        if (v15)
        {
          v28 = 0;
          v29 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v30 = 1;
          v31 = 1;
          v27 = v15;
        }

        else
        {
          v15 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"flightNb"];
          if (!v15)
          {
            v19 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"flightNum"];
            if (v19)
            {
              v28 = 0;
              v29 = 0;
              v26 = 0;
              v27 = 0;
              v11 = 0;
              v12 = 0;
              v13 = 0;
              v30 = 1;
              v31 = 0x100000001;
              v14 = v19;
              v10 = 1;
              v25 = v19;
            }

            else
            {
              v20 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"flight-number"];
              if (v20)
              {
                v28 = 0;
                v29 = 0;
                v26 = 0;
                v27 = 0;
                v24 = v20;
                v25 = 0;
                v12 = 0;
                v13 = 0;
                v30 = 1;
                v31 = 0x100000001;
                v14 = v20;
                v10 = 1;
                v11 = 1;
              }

              else
              {
                v21 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"flightNumber2"];
                if (v21)
                {
                  v28 = 0;
                  v29 = 0;
                  v26 = 0;
                  v27 = 0;
                  v24 = 0;
                  v25 = 0;
                  v13 = 0;
                  v30 = 1;
                  v31 = 0x100000001;
                  v14 = v21;
                  v10 = 1;
                  v11 = 1;
                  v12 = 1;
                  v23 = v21;
                }

                else
                {
                  v14 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"flightNewName"];
                  v28 = 0;
                  v29 = 0;
                  v26 = 0;
                  v27 = 0;
                  v24 = 0;
                  v25 = 0;
                  v23 = 0;
                  v30 = 1;
                  v31 = 0x100000001;
                  v10 = 1;
                  v11 = 1;
                  v12 = 1;
                  v13 = 1;
                }
              }
            }

            goto LABEL_76;
          }

          v28 = 0;
          v29 = 0;
          v26 = v15;
          v27 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v30 = 1;
          v31 = 0x100000001;
        }
      }
    }

    v14 = v15;
  }

LABEL_76:
  v16 = v14;
  v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [v16 stringByTrimmingCharactersInSet:v17];

  if (v13)
  {
  }

  if (v12)
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  if (HIDWORD(v31))
  {
  }

  if (v31)
  {
  }

  if (v30)
  {
  }

  if (!v9)
  {
  }

LABEL_93:

  return v7;
}

- (id)departureAirportCode
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BBD88];
  v4 = self->_semantics;
  if (([v3 isEqualToString:*MEMORY[0x1E69BBDA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE88]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD38]] & 1) != 0
    || ([v3 isEqualToString:v3] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD98]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE18]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE38]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE98]] & 1) != 0)
  {
    v5 = [(NSDictionary *)v4 objectForKey:v3];
    v6 = [v5 stringValue];
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
      v23 = 1024;
      v24 = 148;
      v25 = 2082;
      v26 = "NSString *_stringFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
      v27 = 2082;
      v28 = "! PKPassSemanticIsStringKey(key)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic string!", &v21, 0x26u);
    }

    v6 = 0;
  }

  if (!v6)
  {
    v7 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"origin"];
    v8 = v7;
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v9 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"source"];
      v10 = v9;
      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v11 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"depart"];
        v12 = v11;
        if (v11)
        {
          v6 = v11;
        }

        else
        {
          v13 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"departure"];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"departureAirport"];
          }

          v6 = v15;
        }
      }
    }
  }

  v16 = v6;
  v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v18 = [v16 stringByTrimmingCharactersInSet:v17];

  return v18;
}

- (id)arrivalAirportCode
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BBD88];
  v4 = self->_semantics;
  if (([v3 isEqualToString:*MEMORY[0x1E69BBDA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE88]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD38]] & 1) != 0
    || ([v3 isEqualToString:v3] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD98]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE18]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE38]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE98]] & 1) != 0)
  {
    v5 = [(NSDictionary *)v4 objectForKey:v3];
    v6 = [v5 stringValue];
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
      v23 = 1024;
      v24 = 148;
      v25 = 2082;
      v26 = "NSString *_stringFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
      v27 = 2082;
      v28 = "! PKPassSemanticIsStringKey(key)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic string!", &v21, 0x26u);
    }

    v6 = 0;
  }

  if (!v6)
  {
    v7 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"origin"];
    v8 = v7;
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v9 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"source"];
      v10 = v9;
      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v11 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"arrive"];
        v12 = v11;
        if (v11)
        {
          v6 = v11;
        }

        else
        {
          v13 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"arrival"];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"arrivalAirport"];
          }

          v6 = v15;
        }
      }
    }
  }

  v16 = v6;
  v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v18 = [v16 stringByTrimmingCharactersInSet:v17];

  return v18;
}

- (id)departureTerminal
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BBDC0];
  v4 = self->_semantics;
  if (([v3 isEqualToString:*MEMORY[0x1E69BBDA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE88]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD38]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD88]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD98]] & 1) != 0
    || ([v3 isEqualToString:v3] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE18]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE38]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE98]] & 1) != 0)
  {
    v5 = [(NSDictionary *)v4 objectForKey:v3];
    v6 = [v5 stringValue];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
      v14 = 1024;
      v15 = 148;
      v16 = 2082;
      v17 = "NSString *_stringFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
      v18 = 2082;
      v19 = "! PKPassSemanticIsStringKey(key)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic string!", &v12, 0x26u);
    }

    v6 = 0;
  }

  if (!v6)
  {
    v6 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"terminal"];
  }

  v7 = v6;
  v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  return v9;
}

- (id)departureGate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BBDA0];
  v4 = self->_semantics;
  if (([v3 isEqualToString:*MEMORY[0x1E69BBDA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEA8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE68]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE70]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE80]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE88]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD38]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD88]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD98]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC0]] & 1) != 0
    || ([v3 isEqualToString:v3] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDC8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDD8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDB8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBDF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD78]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE18]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE0]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBED8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEE8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBEF8]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBF00]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE60]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE38]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD58]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD48]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE90]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE10]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD28]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD30]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD40]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE08]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBD20]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE50]] & 1) != 0
    || ([v3 isEqualToString:*MEMORY[0x1E69BBE98]] & 1) != 0)
  {
    v5 = [(NSDictionary *)v4 objectForKey:v3];
    v6 = [v5 stringValue];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
      v14 = 1024;
      v15 = 148;
      v16 = 2082;
      v17 = "NSString *_stringFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
      v18 = 2082;
      v19 = "! PKPassSemanticIsStringKey(key)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic string!", &v12, 0x26u);
    }

    v6 = 0;
  }

  if (!v6)
  {
    v6 = [(NSDictionary *)self->_fields objectForKeyedSubscript:@"gate"];
  }

  v7 = v6;
  v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  return v9;
}

- (id)departureTime
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BBC48];
  v4 = self->_semantics;
  v5 = *MEMORY[0x1E69BBC70];
  if ([v3 isEqualToString:*MEMORY[0x1E69BBC70]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", v3) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC60]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC38]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC68]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC40]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC58]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC88]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC98]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBCA8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC78]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC90]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBCA0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC80]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC50]))
  {
    v6 = [(NSDictionary *)v4 objectForKey:v3];
    v7 = [v6 dateValue];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
      v14 = 1024;
      v15 = 154;
      v16 = 2082;
      v17 = "NSDate *_dateFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
      v18 = 2082;
      v19 = "! PKPassSemanticIsDateKey(key)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic date!", &v12, 0x26u);
    }

    v7 = 0;
  }

  if (!v7)
  {
    v8 = self->_semantics;
    if ([v5 isEqualToString:v5] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", v3) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC60]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC38]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC68]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC40]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC58]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC88]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC98]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBCA8]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC78]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC90]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBCA0]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC80]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69BBC50]))
    {
      v9 = [(NSDictionary *)v8 objectForKey:v5];
      v7 = [v9 dateValue];
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136446978;
        v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
        v14 = 1024;
        v15 = 154;
        v16 = 2082;
        v17 = "NSDate *_dateFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
        v18 = 2082;
        v19 = "! PKPassSemanticIsDateKey(key)";
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic date!", &v12, 0x26u);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)arrivalTime
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BBC38];
  v4 = self->_semantics;
  v5 = *MEMORY[0x1E69BBC70];
  if ([v3 isEqualToString:*MEMORY[0x1E69BBC70]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC48]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC60]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", v3) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC68]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC40]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC58]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC88]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC98]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBCA8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC78]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC90]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBCA0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC80]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69BBC50]))
  {
    v6 = [(NSDictionary *)v4 objectForKey:v3];
    v7 = [v6 dateValue];
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
      v16 = 1024;
      v17 = 154;
      v18 = 2082;
      v19 = "NSDate *_dateFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
      v20 = 2082;
      v21 = "! PKPassSemanticIsDateKey(key)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic date!", &v14, 0x26u);
    }

    v7 = 0;
  }

  if (!v7)
  {
    semantics = self->_semantics;
    v9 = *MEMORY[0x1E69BBC60];
    v10 = semantics;
    if ([v9 isEqualToString:v5] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC48]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", v9) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", v3) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC68]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC40]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC58]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC88]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC98]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBCA8]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC78]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC90]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBCA0]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC80]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69BBC50]))
    {
      v11 = [(NSDictionary *)v10 objectForKey:v9];
      v7 = [v11 dateValue];
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136446978;
        v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealWalletConnector.mm";
        v16 = 1024;
        v17 = 154;
        v18 = 2082;
        v19 = "NSDate *_dateFromSemantics(_PKPassSemanticDict *__strong, NSString *__strong)";
        v20 = 2082;
        v21 = "! PKPassSemanticIsDateKey(key)";
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a semantic date!", &v14, 0x26u);
      }

      v7 = 0;
    }
  }

  return v7;
}

@end