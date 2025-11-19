@interface MPUEmphasizedText
+ (id)attributedStringWithString:(id)a3 emphasisDelimiter:(id)a4 regularTextAttributes:(id)a5 emphasizedTextAttributes:(id)a6;
+ (id)attributedStringWithString:(id)a3 emphasisSubstring:(id)a4 options:(unint64_t)a5 regularTextAttributes:(id)a6 emphasizedTextAttributes:(id)a7;
+ (id)emphasizedTextUsingString:(id)a3 emphasisDelimiter:(id)a4;
+ (id)emphasizedTextUsingString:(id)a3 emphasisSubstring:(id)a4 options:(unint64_t)a5;
+ (id)emphasizedTextWithString:(id)a3;
+ (void)_enumerateEmphasisRangesInString:(id)a3 withEmphasisDelimiter:(id)a4 usingBlock:(id)a5;
+ (void)_enumerateEmphasisRangesInString:(id)a3 withEmphasisSubstring:(id)a4 options:(unint64_t)a5 usingBlock:(id)a6;
- (BOOL)isEqual:(id)a3;
- (MPUEmphasizedText)initWithCoder:(id)a3;
- (MPUEmphasizedText)initWithString:(id)a3 emphasisRanges:(id)a4;
- (NSString)string;
- (id)description;
- (id)newAttributedStringWithRegularTextAttributes:(id)a3 emphasizedTextAttributes:(id)a4;
- (id)newAttributedStringWithTextAttributes:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateEmphasisRangesUsingBlock:(id)a3;
@end

@implementation MPUEmphasizedText

+ (id)attributedStringWithString:(id)a3 emphasisDelimiter:(id)a4 regularTextAttributes:(id)a5 emphasizedTextAttributes:(id)a6
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = [v13 stringByReplacingOccurrencesOfString:v12 withString:&stru_2868E4110];
    v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v14 attributes:0];
    [v15 addAttributes:v11 range:{0, objc_msgSend(v15, "length")}];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __113__MPUEmphasizedText_attributedStringWithString_emphasisDelimiter_regularTextAttributes_emphasizedTextAttributes___block_invoke;
    v18[3] = &unk_27984C700;
    v16 = v15;
    v19 = v16;
    v20 = v10;
    [a1 _enumerateEmphasisRangesInString:v13 withEmphasisDelimiter:v12 usingBlock:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)attributedStringWithString:(id)a3 emphasisSubstring:(id)a4 options:(unint64_t)a5 regularTextAttributes:(id)a6 emphasizedTextAttributes:(id)a7
{
  v12 = a7;
  if (a3)
  {
    v13 = MEMORY[0x277CCAB48];
    v14 = a6;
    v15 = a4;
    v16 = a3;
    v17 = [[v13 alloc] initWithString:v16 attributes:0];
    [v17 addAttributes:v14 range:{0, objc_msgSend(v17, "length")}];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __121__MPUEmphasizedText_attributedStringWithString_emphasisSubstring_options_regularTextAttributes_emphasizedTextAttributes___block_invoke;
    v20[3] = &unk_27984C700;
    v18 = v17;
    v21 = v18;
    v22 = v12;
    [a1 _enumerateEmphasisRangesInString:v16 withEmphasisSubstring:v15 options:a5 usingBlock:v20];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (MPUEmphasizedText)initWithString:(id)a3 emphasisRanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MPUEmphasizedText;
  v8 = [(MPUEmphasizedText *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    string = v8->_string;
    v8->_string = v9;

    v11 = [v7 count];
    if (v11)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v7];
    }

    emphasisRangesSet = v8->_emphasisRangesSet;
    v8->_emphasisRangesSet = v11;
  }

  return v8;
}

+ (id)emphasizedTextWithString:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithString:v3 emphasisRanges:0];

  return v4;
}

+ (id)emphasizedTextUsingString:(id)a3 emphasisDelimiter:(id)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithCapacity:2];
  v9 = [v7 stringByReplacingOccurrencesOfString:v6 withString:&stru_2868E4110];
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__MPUEmphasizedText_emphasizedTextUsingString_emphasisDelimiter___block_invoke;
  v14[3] = &unk_27984C728;
  v15 = v8;
  v11 = v8;
  [v10 _enumerateEmphasisRangesInString:v7 withEmphasisDelimiter:v6 usingBlock:v14];

  v12 = [objc_alloc(objc_opt_class()) initWithString:v9 emphasisRanges:v11];

  return v12;
}

void __65__MPUEmphasizedText_emphasizedTextUsingString_emphasisDelimiter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
  [v3 addObject:v4];
}

+ (id)emphasizedTextUsingString:(id)a3 emphasisSubstring:(id)a4 options:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v9 = objc_opt_class();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__MPUEmphasizedText_emphasizedTextUsingString_emphasisSubstring_options___block_invoke;
  v13[3] = &unk_27984C750;
  v13[4] = &v14;
  [v9 _enumerateEmphasisRangesInString:v7 withEmphasisSubstring:v8 options:a5 usingBlock:v13];
  v10 = objc_alloc(objc_opt_class());
  v11 = [v10 initWithString:v7 emphasisRanges:v15[5]];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __73__MPUEmphasizedText_emphasizedTextUsingString_emphasisSubstring_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (!v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v5 = *(*(*(a1 + 32) + 8) + 40);
  }

  v10 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
  [v5 addObject:v10];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(MPUEmphasizedText *)self string];
  v6 = [(MPUEmphasizedText *)self emphasisRanges];
  v7 = [v3 stringWithFormat:@"<%@ %p '%@' emphasisRanges:%@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (string = self->_string, v4->_string != string) && ![(NSString *)string isEqualToString:?])
  {
    v7 = 0;
    goto LABEL_9;
  }

  emphasisRangesSet = v4->_emphasisRangesSet;
  if (emphasisRangesSet == self->_emphasisRangesSet)
  {
LABEL_7:
    v7 = 1;
  }

  else
  {
    v7 = [(NSMutableSet *)emphasisRangesSet isEqualToSet:?];
  }

LABEL_9:

  return v7;
}

- (MPUEmphasizedText)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPUEmphasizedTextString"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MPUEmphasizedTextEmphasisRanges"];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_13:
    v15 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    self = [(MPUEmphasizedText *)self initWithString:v5 emphasisRanges:v10];
    v15 = self;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MPUEmphasizedText *)self string];
  if (v4)
  {
    [v6 encodeObject:v4 forKey:@"MPUEmphasizedTextString"];
  }

  v5 = [(MPUEmphasizedText *)self emphasisRanges];
  if (v5)
  {
    [v6 encodeObject:v5 forKey:@"MPUEmphasizedTextEmphasisRanges"];
  }
}

- (NSString)string
{
  v2 = [(NSString *)self->_string copy];

  return v2;
}

- (void)enumerateEmphasisRangesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    emphasisRangesSet = self->_emphasisRangesSet;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__MPUEmphasizedText_enumerateEmphasisRangesUsingBlock___block_invoke;
    v7[3] = &unk_27984C778;
    v8 = v4;
    [(NSMutableSet *)emphasisRangesSet enumerateObjectsUsingBlock:v7];
  }
}

uint64_t __55__MPUEmphasizedText_enumerateEmphasisRangesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = [a2 rangeValue];
  v7 = *(v4 + 16);

  return v7(v4, v6, v5, a3);
}

- (id)newAttributedStringWithRegularTextAttributes:(id)a3 emphasizedTextAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPUEmphasizedText *)self string];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8 attributes:0];
    [v9 addAttributes:v6 range:{0, objc_msgSend(v9, "length")}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__MPUEmphasizedText_newAttributedStringWithRegularTextAttributes_emphasizedTextAttributes___block_invoke;
    v14[3] = &unk_27984C700;
    v10 = v9;
    v15 = v10;
    v16 = v7;
    [(MPUEmphasizedText *)self enumerateEmphasisRangesUsingBlock:v14];
    v11 = v16;
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)newAttributedStringWithTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(MPUEmphasizedText *)self string];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_enumerateEmphasisRangesInString:(id)a3 withEmphasisSubstring:(id)a4 options:(unint64_t)a5 usingBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v18 = 0;
  if ([v10 length])
  {
    v12 = [v9 length];
    v13 = 0;
    do
    {
      if (v12 <= v13)
      {
        break;
      }

      v14 = [v9 rangeOfString:v10 options:a5 range:?];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v16 = v14;
      v17 = v15;
      v11[2](v11, v14, v15, &v18);
      v13 = v16 + v17;
    }

    while (v18 != 1);
  }
}

+ (void)_enumerateEmphasisRangesInString:(id)a3 withEmphasisDelimiter:(id)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length] < 2)
  {
    goto LABEL_18;
  }

  v22 = 0;
  v10 = [v7 rangeOfString:v8];
  if (v10 >= 1)
  {
    v11 = [v7 length];
    v12 = v10 >= v11 ? v11 : v10;
    v9[2](v9, 0, v12, &v22);
    if (v22)
    {
      goto LABEL_18;
    }
  }

  if (v10 >= ([v7 length] - 2))
  {
    goto LABEL_18;
  }

  v21 = [v7 substringFromIndex:v10];
  v13 = [v21 componentsSeparatedByString:v8];
  v14 = [v13 count];
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = v14;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = [v13 objectAtIndex:v17];
    v19 = [v18 length];
    if (v19)
    {
      break;
    }

LABEL_14:

    if (v15 == ++v17)
    {
      goto LABEL_17;
    }
  }

  v20 = v19;
  if ((v16 & 1) != 0 || (v9[2](v9, v10, v19, &v22), (v22 & 1) == 0))
  {
    v10 += v20;
    ++v16;
    goto LABEL_14;
  }

LABEL_17:
LABEL_18:
}

@end