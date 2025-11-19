@interface WMListLevelTextMapper
- (WMListLevelTextMapper)initWithText:(id)a3 levelDescriptions:(id)a4 language:(int)a5;
- (id)listLevelTextForOutline:(id)a3;
- (id)token:(unsigned int)a3;
@end

@implementation WMListLevelTextMapper

- (WMListLevelTextMapper)initWithText:(id)a3 levelDescriptions:(id)a4 language:(int)a5
{
  v8 = a3;
  v9 = a4;
  v38.receiver = self;
  v38.super_class = WMListLevelTextMapper;
  v10 = [(WMListLevelTextMapper *)&v38 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v35 = a5;
    tokens = v10->_tokens;
    v10->_tokens = v11;

    v37 = v9;
    v13 = [v8 length];
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = [v8 rangeOfString:@"%" options:2 range:{v14, v13 - v14}];
      if (!v17)
      {
        break;
      }

      v18 = v16;
      v14 = v13;
      if (v16 != v13 - 1)
      {
        v14 = v16 + 1;
        v19 = [v8 characterAtIndex:v16 + 1];
        if (v18 > v15)
        {
          v20 = [v8 substringWithRange:{v15, v18 - v15}];
          v21 = v10->_tokens;
          v22 = [WMListLevelTextToken tokenWithString:v20 level:0 formatter:0];
          [(NSMutableArray *)v21 addObject:v22];
        }

        v23 = (v19 - 58);
        if (v23 >= 0xFFF7)
        {
          v24 = v18;
        }

        else
        {
          v24 = v18 + 1;
        }

        if (v23 < 0xFFF7)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        v36 = [v8 substringWithRange:{v24, v25}];
        v26 = (v19 - 48);
        if ([v37 count] >= v26)
        {
          v34 = v10->_tokens;
          v27 = [v37 objectAtIndexedSubscript:v19 - 49];
          v28 = +[CMNumberFormatter formatterForNumberFormat:language:](CMNumberFormatter, "formatterForNumberFormat:language:", [v27 numberFormat], v35);
          v29 = [WMListLevelTextToken tokenWithString:v36 level:v26 formatter:v28];
          [(NSMutableArray *)v34 addObject:v29];
        }

        else
        {
          NSLog(@"Ignoring list level: too many tokens in the format given the number of level descriptions");
        }

        v15 = v18 + 2;

        v9 = v37;
      }
    }

    if (v13 > v15)
    {
      v30 = [v8 substringWithRange:{v15, v13 - v15}];
      v31 = v10->_tokens;
      v32 = [WMListLevelTextToken tokenWithString:v30 level:0 formatter:0];
      [(NSMutableArray *)v31 addObject:v32];
    }
  }

  return v10;
}

- (id)listLevelTextForOutline:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = [(NSMutableArray *)self->_tokens count];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [(NSMutableArray *)self->_tokens objectAtIndex:i];
      v10 = [v9 string];
      v11 = v10;
      if (v9)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 && [v10 length])
      {
        v13 = v11;
        if ([v9 level] >= 1 && objc_msgSend(v13, "characterAtIndex:", 0) == 37 && objc_msgSend(v13, "length") >= 2)
        {
          if ([v13 length] != 2)
          {
            v15 = [MEMORY[0x277CCA890] currentHandler];
            [v15 handleFailureInMethod:a2 object:self file:@"WMListLevelTextMapper.mm" lineNumber:137 description:@"Invalid placeholder length"];
          }

          v14 = [v9 stringForIndex:{objc_msgSend(v5, "counterAtLevel:", (objc_msgSend(v9, "level") - 1))}];

          v13 = v14;
        }

        [v6 appendString:v13];
      }
    }
  }

  return v6;
}

- (id)token:(unsigned int)a3
{
  if ([(NSMutableArray *)self->_tokens count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_tokens objectAtIndex:a3];
  }

  return v5;
}

@end