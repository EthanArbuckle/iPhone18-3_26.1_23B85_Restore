@interface VCPTextTokenizer
- (VCPTextTokenizer)init;
- (id)bytePairEncoding:(id)a3;
- (id)encode:(id)a3;
- (id)textPreProcessing:(id)a3;
- (id)whitespaceClean:(id)a3;
@end

@implementation VCPTextTokenizer

- (VCPTextTokenizer)init
{
  v6.receiver = self;
  v6.super_class = VCPTextTokenizer;
  v2 = [(VCPTextTokenizer *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSMutableDictionary *)v2->_cache setObject:@"<|startoftext|>" forKeyedSubscript:@"<|startoftext|>"];
    [(NSMutableDictionary *)v2->_cache setObject:@"<|endoftext|>" forKeyedSubscript:@"<|endoftext|>"];
  }

  return v2;
}

- (id)whitespaceClean:(id)a3
{
  v3 = a3;
  v12 = 0;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\s+" options:0 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedDescription];
    NSLog(&cfstr_ErrorCreatingR.isa, v7);

    v8 = v3;
  }

  else
  {
    v9 = [v4 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), @" "}];
    v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [v9 stringByTrimmingCharactersInSet:v10];
  }

  return v8;
}

- (id)textPreProcessing:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(VCPTextTokenizer *)self whitespaceClean:a3];
  v4 = [v3 lowercaseString];

  v23 = 0;
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"<\\|startoftext\\|>|<\\|endoftext\\|>|'s|'t|'re|'ve|'m|'ll|'d|[[:alpha:]]+|[[:digit:]]|[^\\s[:alpha:][:digit:]]+" options:1 error:&v23];
  v6 = v23;
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [v6 localizedDescription];
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating regex: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v19 + 1) + 8 * i) range];
          v17 = [v4 substringWithRange:{v15, v16}];
          [v10 addObject:v17];
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  }

  return v8;
}

- (id)bytePairEncoding:(id)a3
{
  v68[1] = *MEMORY[0x1E69E9840];
  v52 = a3;
  v4 = [(NSMutableDictionary *)self->_cache objectForKey:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v52];
    v68[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
    goto LABEL_45;
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v52, "length")}];
  v8 = 0;
  v57 = v7;
  while (v8 < [v52 length] - 1)
  {
    v63 = [v52 characterAtIndex:v8];
    v9 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v63 length:1];
    [v7 addObject:v9];

    ++v8;
    v7 = v57;
  }

  v63 = [v52 characterAtIndex:{objc_msgSend(v52, "length") - 1}];
  v49 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v63 length:1];
  v50 = [v49 stringByAppendingString:@"</w>"];
  [v7 addObject:?];
  v54 = [MEMORY[0x1E695DFA8] set];
  v53 = [v7 objectAtIndexedSubscript:0];
  for (i = 1; i < [v7 count]; ++i)
  {
    v11 = [v7 objectAtIndexedSubscript:i];
    v67[0] = v53;
    v67[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    [v54 addObject:v12];

    v53 = v11;
    v7 = v57;
  }

  if (!v54)
  {
    v47 = [v52 stringByAppendingString:@"</w>"];
    v66 = v47;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    v54 = 0;
    goto LABEL_44;
  }

  do
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v54;
    v13 = 0;
    v14 = 0;
    v15 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v15)
    {
      v16 = *v60;
      v17 = INFINITY;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v60 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v59 + 1) + 8 * j);
          bpeRanks = self->_bpeRanks;
          v21 = [v19 componentsJoinedByString:@" "];
          v22 = [(NSDictionary *)bpeRanks objectForKey:v21];

          if (v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = &unk_1F49BB098;
          }

          [v23 doubleValue];
          if (v24 < v17)
          {
            [v23 doubleValue];
            v17 = v25;
            v26 = [v19 componentsJoinedByString:@" "];

            v27 = v19;
            v13 = v27;
            v14 = v26;
          }
        }

        v15 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v15);
    }

    v28 = [(NSDictionary *)self->_bpeRanks objectForKey:v14];
    v29 = v28 == 0;

    if (v29)
    {

      v41 = v57;
      v54 = obj;
      break;
    }

    v56 = [v13 objectAtIndexedSubscript:0];
    v30 = v57;
    v51 = [v13 objectAtIndexedSubscript:1];
    v55 = [MEMORY[0x1E695DF70] array];
    v31 = 0;
    while (v31 < [v30 count])
    {
      v32 = [v57 indexOfObject:v56 inRange:{v31, objc_msgSend(v30, "count") - v31}];
      v33 = v32;
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = [v57 subarrayWithRange:{v31, objc_msgSend(v57, "count") - v31}];
        [v55 addObjectsFromArray:v40];

        v30 = v57;
        break;
      }

      v34 = [v57 subarrayWithRange:{v31, v32 - v31}];
      [v55 addObjectsFromArray:v34];

      v35 = [v57 objectAtIndexedSubscript:v33];
      if ([v35 isEqualToString:v56] && v33 < objc_msgSend(v57, "count") - 1)
      {
        v36 = [v57 objectAtIndexedSubscript:v33 + 1];
        v37 = [v36 isEqualToString:v51];

        if (!v37)
        {
          goto LABEL_31;
        }

        v38 = [v56 stringByAppendingString:v51];
        [v55 addObject:v38];

        v31 = v33 + 2;
        v30 = v57;
      }

      else
      {

LABEL_31:
        v39 = [v57 objectAtIndexedSubscript:v33];
        [v55 addObject:v39];

        v31 = v33 + 1;
        v30 = v57;
      }
    }

    v41 = v55;

    v42 = [v41 count];
    if (v42 == 1)
    {
      v54 = obj;
    }

    else
    {
      v54 = [MEMORY[0x1E695DFA8] set];

      v43 = [v41 objectAtIndexedSubscript:0];
      for (k = 1; k < [v41 count]; ++k)
      {
        v45 = [v41 objectAtIndexedSubscript:k];
        v64[0] = v43;
        v64[1] = v45;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
        [v54 addObject:v46];

        v43 = v45;
      }
    }

    v57 = v41;
  }

  while (v42 != 1);
  v47 = [v41 componentsJoinedByString:@" "];
  [(NSMutableDictionary *)self->_cache setObject:v47 forKeyedSubscript:v52];
  v6 = v41;
  v57 = v6;
LABEL_44:

  v5 = v57;
LABEL_45:

  return v6;
}

- (id)encode:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v59 = a3;
  v4 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v60 = [v4 resourceURL];

  if (!self->_encoder)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:@"encoder.json" relativeToURL:v60];
    v6 = [v5 path];

    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6];
    v82 = 0;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v82];
    v9 = v82;
    encoder = self->_encoder;
    self->_encoder = v8;

    if (v9 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 localizedDescription];
      *buf = 138412290;
      v87 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error reading JSON file: %@", buf, 0xCu);
    }
  }

  if (!self->_decoder)
  {
    v12 = [MEMORY[0x1E695DFF8] URLWithString:@"decoder.json" relativeToURL:v60];
    v13 = [v12 path];

    v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v13];
    v81 = 0;
    v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:&v81];
    v16 = v81;
    decoder = self->_decoder;
    self->_decoder = v15;

    if (v16 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [v16 localizedDescription];
      *buf = 138412290;
      v87 = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error reading JSON file: %@", buf, 0xCu);
    }
  }

  if (!self->_bytesToUnicode)
  {
    v19 = [MEMORY[0x1E695DFF8] URLWithString:@"bytes_to_unicode.json" relativeToURL:v60];
    v20 = [v19 path];

    v21 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v20];
    v80 = 0;
    v22 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v21 options:0 error:&v80];
    v23 = v80;
    bytesToUnicode = self->_bytesToUnicode;
    self->_bytesToUnicode = v22;

    if (v23 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = [v23 localizedDescription];
      *buf = 138412290;
      v87 = v25;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error reading JSON file: %@", buf, 0xCu);
    }
  }

  if (!self->_bpeRanks)
  {
    v26 = [MEMORY[0x1E695DFF8] URLWithString:@"bpe_ranks.json" relativeToURL:v60];
    v27 = [v26 path];

    v28 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v27];
    v79 = 0;
    v29 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v28 options:0 error:&v79];
    v30 = v79;
    bpeRanks = self->_bpeRanks;
    self->_bpeRanks = v29;

    if (v30 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = [v30 localizedDescription];
      *buf = 138412290;
      v87 = v32;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error reading JSON file: %@", buf, 0xCu);
    }
  }

  v58 = [(VCPTextTokenizer *)self textPreProcessing:v59];
  v64 = [MEMORY[0x1E695DF70] array];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v58;
  v65 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v65)
  {
    v63 = *v76;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v76 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v75 + 1) + 8 * i);
        v34 = [MEMORY[0x1E695DF70] array];
        for (j = 0; j < [v33 length]; ++j)
        {
          v36 = [v33 characterAtIndex:j];
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v36];
          v38 = [v37 dataUsingEncoding:4];
          v39 = v38;
          v40 = [v38 bytes];
          for (k = 0; k < [v38 length]; ++k)
          {
            v42 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v40 + k)];
            [v34 addObject:v42];
          }
        }

        v43 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F496CB30];
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v44 = v34;
        v45 = [v44 countByEnumeratingWithState:&v71 objects:v84 count:16];
        if (v45)
        {
          v46 = *v72;
          do
          {
            for (m = 0; m != v45; ++m)
            {
              if (*v72 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = self->_bytesToUnicode;
              v49 = [*(*(&v71 + 1) + 8 * m) stringValue];
              v50 = [(NSDictionary *)v48 objectForKeyedSubscript:v49];
              [v43 appendString:v50];
            }

            v45 = [v44 countByEnumeratingWithState:&v71 objects:v84 count:16];
          }

          while (v45);
        }

        v62 = [(VCPTextTokenizer *)self bytePairEncoding:v43];
        v51 = [MEMORY[0x1E695DF70] array];
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v52 = v62;
        v53 = [v52 countByEnumeratingWithState:&v67 objects:v83 count:16];
        if (v53)
        {
          v54 = *v68;
          do
          {
            for (n = 0; n != v53; ++n)
            {
              if (*v68 != v54)
              {
                objc_enumerationMutation(v52);
              }

              v56 = [(NSDictionary *)self->_encoder objectForKeyedSubscript:*(*(&v67 + 1) + 8 * n)];
              if (v56)
              {
                [v51 addObject:v56];
              }
            }

            v53 = [v52 countByEnumeratingWithState:&v67 objects:v83 count:16];
          }

          while (v53);
        }

        [v64 addObjectsFromArray:v51];
      }

      v65 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v65);
  }

  [v64 insertObject:&unk_1F49BB9C8 atIndex:0];
  [v64 addObject:&unk_1F49BB9E0];

  return v64;
}

@end