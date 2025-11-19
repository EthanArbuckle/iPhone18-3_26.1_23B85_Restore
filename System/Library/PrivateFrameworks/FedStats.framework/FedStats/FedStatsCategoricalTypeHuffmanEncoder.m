@interface FedStatsCategoricalTypeHuffmanEncoder
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
+ (id)mutateParameters:(id)a3 usingFieldValues:(id)a4 assetURLs:(id)a5 requiredFields:(id *)a6 assetNames:(id *)a7 error:(id *)a8;
- (FedStatsCategoricalTypeHuffmanEncoder)initWithHuffmanEncoderDatabase:(id)a3 tableName:(id)a4 lookupColumnName:(id)a5 codeColumnName:(id)a6 unknownTokenBitString:(id)a7 endTokenBitString:(id)a8 specialTokenBitStrings:(id)a9 exploreUnknownToken:(BOOL)a10;
- (id)codeForToken:(id)a3;
- (id)preEncode:(id)a3;
@end

@implementation FedStatsCategoricalTypeHuffmanEncoder

- (FedStatsCategoricalTypeHuffmanEncoder)initWithHuffmanEncoderDatabase:(id)a3 tableName:(id)a4 lookupColumnName:(id)a5 codeColumnName:(id)a6 unknownTokenBitString:(id)a7 endTokenBitString:(id)a8 specialTokenBitStrings:(id)a9 exploreUnknownToken:(BOOL)a10
{
  v17 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v18 = a9;
  v29.receiver = self;
  v29.super_class = FedStatsCategoricalTypeHuffmanEncoder;
  v19 = [(FedStatsCategoricalTypeHuffmanEncoder *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_huffmanDB, a3);
    objc_storeStrong(&v20->_tableName, a4);
    objc_storeStrong(&v20->_lookupColumnName, a5);
    objc_storeStrong(&v20->_codeColumnName, a6);
    objc_storeStrong(&v20->_unknownTokenBitString, a7);
    objc_storeStrong(&v20->_endTokenBitString, a8);
    objc_storeStrong(&v20->_specialTokenBitStrings, a9);
    if (a10)
    {
      v21 = [FedStatsCategoricalTypeCharacterTokenizer instanceWithParameters:MEMORY[0x277CBEC10] error:0];
    }

    else
    {
      v21 = 0;
    }

    explorationTokenizer = v20->_explorationTokenizer;
    v20->_explorationTokenizer = v21;
  }

  return v20;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v89[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKey:@"fileName"];
  if (!v7)
  {
    if (a4)
    {
      v30 = LABEL_34:;
      *a4 = [FedStatsError errorWithCode:101 description:v30];
    }

LABEL_35:
    v31 = 0;
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
LABEL_8:
  v9 = v8;
  v10 = [v6 objectForKey:@"tableName"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v6 objectForKey:@"valueColumnName"];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v6 objectForKey:@"indexColumnName"];
          if (v12)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v87 = 0;
              v13 = [FedStatsSQLiteDatabase databaseWithURL:v9 mode:114 error:&v87];
              v14 = v87;
              v77 = v14;
              if (!v13)
              {
                if (a4)
                {
                  [FedStatsError errorWithCode:101 underlyingError:v14 description:@"Cannot load Huffman database"];
                  *a4 = v31 = 0;
                }

                else
                {
                  v31 = 0;
                }

                goto LABEL_64;
              }

              v75 = v12;
              [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(1) AS %@ FROM SQLITE_MASTER WHERE type == 'table' AND name == '%@'", @"tableCount", v10];
              v86 = 0;
              v70 = v76 = v13;
              v15 = [v13 runQuery:? error:?];
              v65 = 0;
              if (!v15 || ([v15 next], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                if (a4)
                {
                  *a4 = [FedStatsError errorWithCode:101 underlyingError:v65 description:@"Cannot query list of tables in Huffman database"];
                }

                goto LABEL_61;
              }

              v62 = v16;
              v17 = [v16 objectForKey:@"tableCount"];
              v18 = v17;
              if (v17 && [v17 unsignedIntegerValue] == 1)
              {

                [MEMORY[0x277CCACA8] stringWithFormat:@"columnCount", v10, v11];
                v70 = v85 = 0;
                v19 = [v76 runQuery:? error:?];
                v65 = 0;
                if (!v19 || ([v19 next], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
                {
                  if (a4)
                  {
                    *a4 = [FedStatsError errorWithCode:101 underlyingError:v65 description:@"Cannot query list of columns in Huffman database table"];
                  }

                  goto LABEL_61;
                }

                v60 = v20;
                v21 = [v20 objectForKey:@"columnCount"];
                v22 = v21;
                if (v21 && [v21 unsignedIntegerValue] == 1)
                {

                  [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(1) AS %@ FROM PRAGMA_TABLE_XINFO('%@') WHERE name == '%@'", @"columnCount", v10, v75];
                  v66 = v84 = 0;
                  v23 = [v76 runQuery:? error:?];
                  v71 = 0;
                  if (v23 && ([v23 next], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v25 = v24;
                    v63 = [v24 objectForKey:@"columnCount"];
                    if (v63 && [v63 unsignedIntegerValue] == 1)
                    {

                      [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@ == %@ ORDER BY RANDOM() LIMIT 1", v75, v10, v11, @"<ET>"];
                      v67 = v83 = 0;
                      v26 = [v76 runQuery:? error:?];
                      v72 = 0;
                      if (v26 && ([v26 next], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
                      {
                        v28 = v27;
                        v56 = [v27 objectForKey:v75];

                        v29 = 1;
                      }

                      else if (a4)
                      {
                        [FedStatsError errorWithCode:101 underlyingError:v72 description:@"Cannot query end token in Huffman database table"];
                        v56 = 0;
                        *a4 = v29 = 0;
                      }

                      else
                      {
                        v56 = 0;
                        v29 = 0;
                      }

                      if (v29)
                      {
                        [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@ == %@ ORDER BY RANDOM() LIMIT 1", v75, v10, v11, @"<UT>"];
                        v68 = v82 = 0;
                        v42 = [v76 runQuery:? error:?];
                        v73 = 0;
                        if (v42 && ([v42 next], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          v44 = v43;
                          v55 = [v43 objectForKey:v75];

                          v45 = 1;
                        }

                        else if (a4)
                        {
                          [FedStatsError errorWithCode:101 underlyingError:v73 description:@"Cannot query unknown token in Huffman database table"];
                          v55 = 0;
                          *a4 = v45 = 0;
                        }

                        else
                        {
                          v55 = 0;
                          v45 = 0;
                        }

                        if (v45)
                        {
                          v59 = [MEMORY[0x277CBEB38] dictionary];
                          v89[0] = @"<BT>";
                          v89[1] = @"<number>";
                          v89[2] = @"<person>";
                          v89[3] = @"<location>";
                          [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
                          v78 = 0u;
                          v79 = 0u;
                          v80 = 0u;
                          obj = v81 = 0u;
                          v46 = v75;
                          v61 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
                          if (v61)
                          {
                            v58 = *v79;
                            do
                            {
                              for (i = 0; i != v61; ++i)
                              {
                                if (*v79 != v58)
                                {
                                  objc_enumerationMutation(obj);
                                }

                                v69 = *(*(&v78 + 1) + 8 * i);
                                v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@ == %@ ORDER BY RANDOM() LIMIT 1", v46, v10, v11, v69];
                                v64 = [v76 runQuery:? error:?];
                                v48 = [v64 next];
                                v49 = v48;
                                if (v48)
                                {
                                  v50 = [v48 objectForKeyedSubscript:v46];
                                  [v59 setObject:v50 forKeyedSubscript:v69];

                                  v46 = v75;
                                }

                                else
                                {
                                  [v59 setObject:&stru_285E0CF98 forKeyedSubscript:v69];
                                }
                              }

                              v61 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
                            }

                            while (v61);
                          }

                          v51 = [v6 objectForKey:@"exploreUnknownToken"];
                          if (!v51 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                          {
                            v52 = [MEMORY[0x277CCABB0] numberWithBool:0];

                            v51 = v52;
                          }

                          v53 = [a1 alloc];
                          LOBYTE(v54) = [v51 BOOLValue];
                          v31 = [v53 initWithHuffmanEncoderDatabase:v76 tableName:v10 lookupColumnName:v11 codeColumnName:v75 unknownTokenBitString:v55 endTokenBitString:v56 specialTokenBitStrings:v59 exploreUnknownToken:v54];
                        }

                        else
                        {
                          v31 = 0;
                        }
                      }

                      else
                      {
                        v31 = 0;
                      }

                      goto LABEL_63;
                    }

                    if (a4)
                      v41 = {;
                      *a4 = [FedStatsError errorWithCode:101 description:v41];
                    }
                  }

                  else if (a4)
                  {
                    *a4 = [FedStatsError errorWithCode:101 underlyingError:v71 description:@"Cannot query list of columns in Huffman database table"];
                  }

                  v37 = v66;
LABEL_62:

                  v31 = 0;
LABEL_63:
                  v12 = v75;
                  v13 = v76;
LABEL_64:

                  goto LABEL_65;
                }

                if (a4)
                  v40 = {;
                  *a4 = [FedStatsError errorWithCode:101 description:v40];
                }
              }

              else
              {
                if (a4)
                  v36 = {;
                  *a4 = [FedStatsError errorWithCode:101 description:v36];
                }
              }

LABEL_61:
              v37 = v70;
              goto LABEL_62;
            }

            if (a4)
            {
              v34 = v12;
              goto LABEL_50;
            }
          }

          else if (a4)
          {
            v34 = 0;
            v35 = LABEL_50:;
            v12 = v34;
            *a4 = [FedStatsError errorWithCode:101 description:v35];
          }

          v31 = 0;
LABEL_65:

          goto LABEL_66;
        }

        if (a4)
        {
          goto LABEL_44;
        }
      }

      else if (a4)
      {
        v33 = LABEL_44:;
        *a4 = [FedStatsError errorWithCode:101 description:v33];
      }

      v31 = 0;
LABEL_66:

      goto LABEL_67;
    }

    if (a4)
    {
      goto LABEL_38;
    }
  }

  else if (a4)
  {
    v32 = LABEL_38:;
    *a4 = [FedStatsError errorWithCode:101 description:v32];
  }

  v31 = 0;
LABEL_67:

LABEL_68:
  v38 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)codeForToken:(id)a3
{
  v4 = a3;
  v5 = [(FedStatsCategoricalTypeHuffmanEncoder *)self specialTokenBitStrings];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(FedStatsCategoricalTypeHuffmanEncoder *)self specialTokenBitStrings];
    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(FedStatsCategoricalTypeHuffmanEncoder *)self codeColumnName];
    v11 = [(FedStatsCategoricalTypeHuffmanEncoder *)self tableName];
    v12 = [(FedStatsCategoricalTypeHuffmanEncoder *)self lookupColumnName];
    v7 = [v9 stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@ == %@ ORDER BY RANDOM() LIMIT 1", v10, v11, v12, @"%@"];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v4];
    v14 = [(FedStatsCategoricalTypeHuffmanEncoder *)self huffmanDB];
    v15 = [v14 runQuery:v13 error:0];

    if (v15 && ([v15 next], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      v18 = [(FedStatsCategoricalTypeHuffmanEncoder *)self codeColumnName];
      v8 = [v17 objectForKey:v18];
    }

    else
    {
      v8 = [(FedStatsCategoricalTypeHuffmanEncoder *)self unknownTokenBitString];
    }
  }

  return v8;
}

- (id)preEncode:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count") + 1}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v33 = v5;
    v7 = v5;
    v37 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v37)
    {
      v8 = *v43;
      v9 = 0x277CCA000uLL;
      v35 = v7;
      v36 = v6;
      v34 = *v43;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v42 + 1) + 8 * i);
          v12 = [(FedStatsCategoricalTypeHuffmanEncoder *)self codeForToken:v11];
          v13 = [(FedStatsCategoricalTypeHuffmanEncoder *)self unknownTokenBitString];
          v14 = [v13 isEqual:v12];

          if (v14)
          {
            v15 = [*(v9 + 3240) stringWithFormat:@"%@", v11];
            v16 = [(FedStatsCategoricalTypeHuffmanEncoder *)self explorationTokenizer];
            if (v16 && (v17 = v16, v18 = [v15 length], v17, v18 != 1))
            {
              v19 = [(FedStatsCategoricalTypeHuffmanEncoder *)self explorationTokenizer];
              v20 = [v19 tokenize:v15];

              v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v22 = v20;
              v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v39;
                do
                {
                  for (j = 0; j != v24; ++j)
                  {
                    if (*v39 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = [(FedStatsCategoricalTypeHuffmanEncoder *)self codeForToken:*(*(&v38 + 1) + 8 * j)];
                    [v21 addObject:v27];
                  }

                  v24 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
                }

                while (v24);
              }

              v28 = [v21 componentsJoinedByString:&stru_285E0CF98];
              v6 = v36;
              [v36 addObject:v28];

              v8 = v34;
              v7 = v35;
              v9 = 0x277CCA000;
            }

            else
            {
              [v6 addObject:v12];
            }
          }

          else
          {
            [v6 addObject:v12];
          }
        }

        v37 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v37);
    }

    v29 = [(FedStatsCategoricalTypeHuffmanEncoder *)self endTokenBitString];
    [v6 addObject:v29];

    v30 = [v6 componentsJoinedByString:&stru_285E0CF98];

    v5 = v33;
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)mutateParameters:(id)a3 usingFieldValues:(id)a4 assetURLs:(id)a5 requiredFields:(id *)a6 assetNames:(id *)a7 error:(id *)a8
{
  v32[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [v13 objectForKey:@"fileName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a8 = v13;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = 0;
    v17 = [FedStatsCategoricalTypeAssetSpecifier assetSpecifierWithKey:v16 requiredForCollectionKey:0 error:&v31];
    v18 = v31;
    v19 = v18;
    if (v17)
    {
      if (v14)
      {
        v30 = v18;
        v20 = [v17 assetSpecifierValueForDataPoint:v14 error:&v30];
        v29 = v30;

        if (v20)
        {
          if (v15)
          {
            v21 = [v15 objectForKey:v20];
            if (v21)
            {
              a8 = [v13 mutableCopy];
              [a8 setObject:v21 forKey:@"fileName"];
            }

            else if (a8)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing asset URL for '%@'", v20];
              *a8 = [FedStatsError errorWithCode:300 description:v26];

              a8 = 0;
            }
          }

          else
          {
            if (a7)
            {
              v32[0] = v20;
              *a7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
            }

            a8 = v13;
          }
        }

        else if (a8)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v16];
          v24 = v29;
          *a8 = [FedStatsError errorWithCode:300 underlyingError:v29 description:v25];

          a8 = 0;
LABEL_27:

          goto LABEL_28;
        }

        v24 = v29;
        goto LABEL_27;
      }

      if (a6)
      {
        *a6 = [v17 parameters];
      }

      a8 = v13;
    }

    else if (a8)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v16];
      *a8 = [FedStatsError errorWithCode:300 underlyingError:v19 description:v23];

      a8 = 0;
    }

    v24 = v19;
LABEL_28:

    goto LABEL_29;
  }

  if (a8)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for '%@' must be either a string or URL", @"fileName"];
    *a8 = [FedStatsError errorWithCode:302 description:v22];

    a8 = 0;
  }

LABEL_29:

  v27 = *MEMORY[0x277D85DE8];

  return a8;
}

@end