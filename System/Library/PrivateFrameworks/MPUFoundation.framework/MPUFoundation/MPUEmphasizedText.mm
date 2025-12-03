@interface MPUEmphasizedText
+ (id)attributedStringWithString:(id)string emphasisDelimiter:(id)delimiter regularTextAttributes:(id)attributes emphasizedTextAttributes:(id)textAttributes;
+ (id)attributedStringWithString:(id)string emphasisSubstring:(id)substring options:(unint64_t)options regularTextAttributes:(id)attributes emphasizedTextAttributes:(id)textAttributes;
+ (id)emphasizedTextUsingString:(id)string emphasisDelimiter:(id)delimiter;
+ (id)emphasizedTextUsingString:(id)string emphasisSubstring:(id)substring options:(unint64_t)options;
+ (id)emphasizedTextWithString:(id)string;
+ (void)_enumerateEmphasisRangesInString:(id)string withEmphasisDelimiter:(id)delimiter usingBlock:(id)block;
+ (void)_enumerateEmphasisRangesInString:(id)string withEmphasisSubstring:(id)substring options:(unint64_t)options usingBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (MPUEmphasizedText)initWithCoder:(id)coder;
- (MPUEmphasizedText)initWithString:(id)string emphasisRanges:(id)ranges;
- (NSString)string;
- (id)description;
- (id)newAttributedStringWithRegularTextAttributes:(id)attributes emphasizedTextAttributes:(id)textAttributes;
- (id)newAttributedStringWithTextAttributes:(id)attributes;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateEmphasisRangesUsingBlock:(id)block;
@end

@implementation MPUEmphasizedText

+ (id)attributedStringWithString:(id)string emphasisDelimiter:(id)delimiter regularTextAttributes:(id)attributes emphasizedTextAttributes:(id)textAttributes
{
  textAttributesCopy = textAttributes;
  if (string)
  {
    attributesCopy = attributes;
    delimiterCopy = delimiter;
    stringCopy = string;
    v14 = [stringCopy stringByReplacingOccurrencesOfString:delimiterCopy withString:&stru_2868E4110];
    v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v14 attributes:0];
    [v15 addAttributes:attributesCopy range:{0, objc_msgSend(v15, "length")}];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __113__MPUEmphasizedText_attributedStringWithString_emphasisDelimiter_regularTextAttributes_emphasizedTextAttributes___block_invoke;
    v18[3] = &unk_27984C700;
    v16 = v15;
    v19 = v16;
    v20 = textAttributesCopy;
    [self _enumerateEmphasisRangesInString:stringCopy withEmphasisDelimiter:delimiterCopy usingBlock:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)attributedStringWithString:(id)string emphasisSubstring:(id)substring options:(unint64_t)options regularTextAttributes:(id)attributes emphasizedTextAttributes:(id)textAttributes
{
  textAttributesCopy = textAttributes;
  if (string)
  {
    v13 = MEMORY[0x277CCAB48];
    attributesCopy = attributes;
    substringCopy = substring;
    stringCopy = string;
    v17 = [[v13 alloc] initWithString:stringCopy attributes:0];
    [v17 addAttributes:attributesCopy range:{0, objc_msgSend(v17, "length")}];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __121__MPUEmphasizedText_attributedStringWithString_emphasisSubstring_options_regularTextAttributes_emphasizedTextAttributes___block_invoke;
    v20[3] = &unk_27984C700;
    v18 = v17;
    v21 = v18;
    v22 = textAttributesCopy;
    [self _enumerateEmphasisRangesInString:stringCopy withEmphasisSubstring:substringCopy options:options usingBlock:v20];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (MPUEmphasizedText)initWithString:(id)string emphasisRanges:(id)ranges
{
  stringCopy = string;
  rangesCopy = ranges;
  v14.receiver = self;
  v14.super_class = MPUEmphasizedText;
  v8 = [(MPUEmphasizedText *)&v14 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    string = v8->_string;
    v8->_string = v9;

    v11 = [rangesCopy count];
    if (v11)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:rangesCopy];
    }

    emphasisRangesSet = v8->_emphasisRangesSet;
    v8->_emphasisRangesSet = v11;
  }

  return v8;
}

+ (id)emphasizedTextWithString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(objc_opt_class()) initWithString:stringCopy emphasisRanges:0];

  return v4;
}

+ (id)emphasizedTextUsingString:(id)string emphasisDelimiter:(id)delimiter
{
  v5 = MEMORY[0x277CBEB18];
  delimiterCopy = delimiter;
  stringCopy = string;
  v8 = [[v5 alloc] initWithCapacity:2];
  v9 = [stringCopy stringByReplacingOccurrencesOfString:delimiterCopy withString:&stru_2868E4110];
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__MPUEmphasizedText_emphasizedTextUsingString_emphasisDelimiter___block_invoke;
  v14[3] = &unk_27984C728;
  v15 = v8;
  v11 = v8;
  [v10 _enumerateEmphasisRangesInString:stringCopy withEmphasisDelimiter:delimiterCopy usingBlock:v14];

  v12 = [objc_alloc(objc_opt_class()) initWithString:v9 emphasisRanges:v11];

  return v12;
}

void __65__MPUEmphasizedText_emphasizedTextUsingString_emphasisDelimiter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
  [v3 addObject:v4];
}

+ (id)emphasizedTextUsingString:(id)string emphasisSubstring:(id)substring options:(unint64_t)options
{
  stringCopy = string;
  substringCopy = substring;
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
  [v9 _enumerateEmphasisRangesInString:stringCopy withEmphasisSubstring:substringCopy options:options usingBlock:v13];
  v10 = objc_alloc(objc_opt_class());
  v11 = [v10 initWithString:stringCopy emphasisRanges:v15[5]];
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
  string = [(MPUEmphasizedText *)self string];
  emphasisRanges = [(MPUEmphasizedText *)self emphasisRanges];
  v7 = [v3 stringWithFormat:@"<%@ %p '%@' emphasisRanges:%@>", v4, self, string, emphasisRanges];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (string = self->_string, equalCopy->_string != string) && ![(NSString *)string isEqualToString:?])
  {
    v7 = 0;
    goto LABEL_9;
  }

  emphasisRangesSet = equalCopy->_emphasisRangesSet;
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

- (MPUEmphasizedText)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPUEmphasizedTextString"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MPUEmphasizedTextEmphasisRanges"];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_13:
    selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = [(MPUEmphasizedText *)self string];
  if (string)
  {
    [coderCopy encodeObject:string forKey:@"MPUEmphasizedTextString"];
  }

  emphasisRanges = [(MPUEmphasizedText *)self emphasisRanges];
  if (emphasisRanges)
  {
    [coderCopy encodeObject:emphasisRanges forKey:@"MPUEmphasizedTextEmphasisRanges"];
  }
}

- (NSString)string
{
  v2 = [(NSString *)self->_string copy];

  return v2;
}

- (void)enumerateEmphasisRangesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    emphasisRangesSet = self->_emphasisRangesSet;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__MPUEmphasizedText_enumerateEmphasisRangesUsingBlock___block_invoke;
    v7[3] = &unk_27984C778;
    v8 = blockCopy;
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

- (id)newAttributedStringWithRegularTextAttributes:(id)attributes emphasizedTextAttributes:(id)textAttributes
{
  attributesCopy = attributes;
  textAttributesCopy = textAttributes;
  string = [(MPUEmphasizedText *)self string];
  if (string)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:string attributes:0];
    [v9 addAttributes:attributesCopy range:{0, objc_msgSend(v9, "length")}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__MPUEmphasizedText_newAttributedStringWithRegularTextAttributes_emphasizedTextAttributes___block_invoke;
    v14[3] = &unk_27984C700;
    v10 = v9;
    v15 = v10;
    v16 = textAttributesCopy;
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

- (id)newAttributedStringWithTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  string = [(MPUEmphasizedText *)self string];
  if (string)
  {
    v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:string attributes:attributesCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_enumerateEmphasisRangesInString:(id)string withEmphasisSubstring:(id)substring options:(unint64_t)options usingBlock:(id)block
{
  stringCopy = string;
  substringCopy = substring;
  blockCopy = block;
  v18 = 0;
  if ([substringCopy length])
  {
    v12 = [stringCopy length];
    v13 = 0;
    do
    {
      if (v12 <= v13)
      {
        break;
      }

      v14 = [stringCopy rangeOfString:substringCopy options:options range:?];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v16 = v14;
      v17 = v15;
      blockCopy[2](blockCopy, v14, v15, &v18);
      v13 = v16 + v17;
    }

    while (v18 != 1);
  }
}

+ (void)_enumerateEmphasisRangesInString:(id)string withEmphasisDelimiter:(id)delimiter usingBlock:(id)block
{
  stringCopy = string;
  delimiterCopy = delimiter;
  blockCopy = block;
  if ([stringCopy length] < 2)
  {
    goto LABEL_18;
  }

  v22 = 0;
  v10 = [stringCopy rangeOfString:delimiterCopy];
  if (v10 >= 1)
  {
    v11 = [stringCopy length];
    v12 = v10 >= v11 ? v11 : v10;
    blockCopy[2](blockCopy, 0, v12, &v22);
    if (v22)
    {
      goto LABEL_18;
    }
  }

  if (v10 >= ([stringCopy length] - 2))
  {
    goto LABEL_18;
  }

  v21 = [stringCopy substringFromIndex:v10];
  v13 = [v21 componentsSeparatedByString:delimiterCopy];
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
  if ((v16 & 1) != 0 || (blockCopy[2](blockCopy, v10, v19, &v22), (v22 & 1) == 0))
  {
    v10 += v20;
    ++v16;
    goto LABEL_14;
  }

LABEL_17:
LABEL_18:
}

@end