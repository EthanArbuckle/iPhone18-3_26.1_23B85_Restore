@interface CPUIAbridgableLabel
+ (id)sanitizedTextForText:(id)text;
- (CPUIAbridgableLabel)init;
- (id)_variantsList;
- (id)sanitizedAttributedStringForString:(id)string;
- (int64_t)_compareBoundsSizeToLayoutSizeForString:(id)string;
- (unint64_t)_numberOfVariants;
- (void)_updateVariant;
- (void)setAttributedText:(id)text;
- (void)setAttributedTextVariants:(id)variants;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setText:(id)text;
- (void)setTextVariants:(id)variants;
@end

@implementation CPUIAbridgableLabel

- (CPUIAbridgableLabel)init
{
  v8.receiver = self;
  v8.super_class = CPUIAbridgableLabel;
  v2 = [(CPUIAbridgableLabel *)&v8 init];
  v3 = v2;
  if (v2)
  {
    textVariants = v2->_textVariants;
    v5 = MEMORY[0x277CBEBF8];
    v2->_textVariants = MEMORY[0x277CBEBF8];

    attributedTextVariants = v3->_attributedTextVariants;
    v3->_attributedTextVariants = v5;

    v3->_variantsIndex = 0;
  }

  return v3;
}

+ (id)sanitizedTextForText:(id)text
{
  v3 = sanitizedTextForText__onceToken;
  textCopy = text;
  if (v3 != -1)
  {
    +[CPUIAbridgableLabel sanitizedTextForText:];
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v7 = [v6 componentsSeparatedByCharactersInSet:sanitizedTextForText____disallowedCharacterSet];
  v8 = [v7 componentsJoinedByString:&stru_2855CA368];

  return v8;
}

void __44__CPUIAbridgableLabel_sanitizedTextForText___block_invoke()
{
  v4 = objc_opt_new();
  v0 = [MEMORY[0x277CCA900] illegalCharacterSet];
  [v4 formUnionWithCharacterSet:v0];

  v1 = [MEMORY[0x277CCA900] newlineCharacterSet];
  [v4 formUnionWithCharacterSet:v1];

  v2 = [v4 copy];
  v3 = sanitizedTextForText____disallowedCharacterSet;
  sanitizedTextForText____disallowedCharacterSet = v2;
}

- (id)sanitizedAttributedStringForString:(id)string
{
  v4 = MEMORY[0x277CCAB48];
  stringCopy = string;
  v6 = [[v4 alloc] initWithAttributedString:stringCopy];

  v7 = [v6 length];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__CPUIAbridgableLabel_sanitizedAttributedStringForString___block_invoke;
  v15 = &unk_278D9C180;
  v16 = v6;
  selfCopy = self;
  v8 = v6;
  [v8 enumerateAttributesInRange:0 options:v7 usingBlock:{0, &v12}];
  v9 = objc_alloc(MEMORY[0x277CCA898]);
  v10 = [v9 initWithAttributedString:{v8, v12, v13, v14, v15}];

  return v10;
}

void __58__CPUIAbridgableLabel_sanitizedAttributedStringForString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__CPUIAbridgableLabel_sanitizedAttributedStringForString___block_invoke_2;
  v10[3] = &unk_278D9C158;
  v8 = *(a1 + 32);
  v13 = a3;
  v14 = a4;
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  [a2 enumerateKeysAndObjectsUsingBlock:v10];
}

void __58__CPUIAbridgableLabel_sanitizedAttributedStringForString___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if ([v18 isEqualToString:*MEMORY[0x277D74060]] & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    v7 = [v6 image];

    if (v7)
    {
      v8 = [v6 image];
      v9 = CPUIImageByScalingImageToSize(v8, 64.0, 25.0);

      [v6 setImage:v9];
      v10 = [*(a1 + 40) font];
      [v10 capHeight];
      v12 = v11;
      [v9 size];
      v14 = (v12 - v13) * 0.5;
      [v9 size];
      v16 = v15;
      [v9 size];
      [v6 setBounds:{0.0, v14, v16, v17}];
    }

    else
    {
      [*(a1 + 32) removeAttribute:v18 range:{*(a1 + 48), *(a1 + 56)}];
    }
  }

  else
  {
    [*(a1 + 32) removeAttribute:v18 range:{*(a1 + 48), *(a1 + 56)}];
  }
}

- (void)setTextVariants:(id)variants
{
  self->_useAttributedTextVariants = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__CPUIAbridgableLabel_setTextVariants___block_invoke;
  v8[3] = &unk_278D9C1A8;
  v8[4] = self;
  v4 = [variants bs_mapNoNulls:v8];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_67];
  textVariants = self->_textVariants;
  self->_textVariants = v5;

  firstObject = [(NSArray *)self->_textVariants firstObject];
  [(CPUIAbridgableLabel *)self setText:firstObject];

  [(CPUIAbridgableLabel *)self _updateVariant];
}

id __39__CPUIAbridgableLabel_setTextVariants___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() sanitizedTextForText:v2];

  return v3;
}

- (void)setAttributedTextVariants:(id)variants
{
  self->_useAttributedTextVariants = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__CPUIAbridgableLabel_setAttributedTextVariants___block_invoke;
  v8[3] = &unk_278D9C1D0;
  v8[4] = self;
  v4 = [variants bs_mapNoNulls:v8];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_67];
  attributedTextVariants = self->_attributedTextVariants;
  self->_attributedTextVariants = v5;

  firstObject = [(NSArray *)self->_attributedTextVariants firstObject];
  [(CPUIAbridgableLabel *)self setAttributedText:firstObject];

  [(CPUIAbridgableLabel *)self _updateVariant];
}

- (void)setAttributedText:(id)text
{
  v4 = [(CPUIAbridgableLabel *)self sanitizedAttributedStringForString:text];
  v5.receiver = self;
  v5.super_class = CPUIAbridgableLabel;
  [(CPUIAbridgableLabel *)&v5 setAttributedText:v4];
}

- (void)setText:(id)text
{
  textCopy = text;
  v5 = [objc_opt_class() sanitizedTextForText:textCopy];

  v6.receiver = self;
  v6.super_class = CPUIAbridgableLabel;
  [(CPUIAbridgableLabel *)&v6 setText:v5];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CPUIAbridgableLabel;
  [(CPUIAbridgableLabel *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CPUIAbridgableLabel *)self _updateVariant];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = CPUIAbridgableLabel;
  [(CPUIAbridgableLabel *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(CPUIAbridgableLabel *)self _updateVariant];
}

- (id)_variantsList
{
  useAttributedTextVariants = [(CPUIAbridgableLabel *)self useAttributedTextVariants];
  v4 = &OBJC_IVAR___CPUIAbridgableLabel__textVariants;
  if (useAttributedTextVariants)
  {
    v4 = &OBJC_IVAR___CPUIAbridgableLabel__attributedTextVariants;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (unint64_t)_numberOfVariants
{
  _variantsList = [(CPUIAbridgableLabel *)self _variantsList];
  v3 = [_variantsList count];

  return v3;
}

- (void)_updateVariant
{
  [(CPUIAbridgableLabel *)self bounds];
  v26.origin.x = v3;
  v26.origin.y = v4;
  v26.size.width = v5;
  v26.size.height = v6;
  if (CGRectEqualToRect(*MEMORY[0x277CBF3A0], v26))
  {
    return;
  }

  if ([(CPUIAbridgableLabel *)self useAttributedTextVariants])
  {
    [(CPUIAbridgableLabel *)self attributedText];
  }

  else
  {
    [(CPUIAbridgableLabel *)self text];
  }
  v7 = ;
  _variantsList = [(CPUIAbridgableLabel *)self _variantsList];
  v9 = _variantsList;
  if (_variantsList)
  {
    v10 = [_variantsList indexOfObject:v7];
    v11 = v10;
    v12 = v10 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v10;
    _numberOfVariants = [(CPUIAbridgableLabel *)self _numberOfVariants];
    if (_numberOfVariants >= 2)
    {
      v14 = _numberOfVariants;
      if (v12 < _numberOfVariants && [(CPUIAbridgableLabel *)self variantsIndex]< _numberOfVariants)
      {
        v15 = [(CPUIAbridgableLabel *)self _compareBoundsSizeToLayoutSizeForString:v7];
        if (v15 == -1)
        {
          v20 = v12 + 1;
          if (v12 + 1 < v14)
          {
            while (1)
            {
              v21 = [v9 objectAtIndex:v20];
              if ([(CPUIAbridgableLabel *)self _compareBoundsSizeToLayoutSizeForString:v21]== 1)
              {
                break;
              }

              if (v14 == ++v20)
              {
                goto LABEL_29;
              }
            }

            v22 = v7;
            v12 = v20;
            goto LABEL_32;
          }

          v12 = v11;
        }

        else if (v15 == 1 && [(CPUIAbridgableLabel *)self variantsIndex])
        {
          v16 = -1;
          v17 = 1;
          while (1)
          {
            v23 = [v9 objectAtIndex:{-[CPUIAbridgableLabel variantsIndex](self, "variantsIndex") + v16}];
            if ([(CPUIAbridgableLabel *)self _compareBoundsSizeToLayoutSizeForString:?]!= 1)
            {
              break;
            }

            v12 -= v17++;
            --v16;
            v7 = v23;
            v18 = v17 > [(CPUIAbridgableLabel *)self variantsIndex];
            v19 = v23;
            if (v18)
            {
              goto LABEL_33;
            }
          }

          v21 = v7;
          v22 = v23;
LABEL_32:

          v19 = v21;
          goto LABEL_33;
        }

LABEL_29:
        v19 = v7;
LABEL_33:
        v24 = v19;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CPUIAbridgableLabel *)self setAttributedText:v24];
        }

        else
        {
          [(CPUIAbridgableLabel *)self setText:v24];
        }

        [(CPUIAbridgableLabel *)self setVariantsIndex:v12];
        goto LABEL_21;
      }
    }
  }

  v24 = v7;
LABEL_21:
}

- (int64_t)_compareBoundsSizeToLayoutSizeForString:(id)string
{
  stringCopy = string;
  [(CPUIAbridgableLabel *)self bounds];
  v6 = v5;
  v8 = v7;
  font = [(CPUIAbridgableLabel *)self font];
  numberOfLines = [(CPUIAbridgableLabel *)self numberOfLines];
  v11 = objc_alloc_init(MEMORY[0x277D74260]);
  [v11 setWrapsForTruncationMode:numberOfLines != 1];
  if (numberOfLines == 1)
  {
    v12 = 1.79769313e308;
  }

  else
  {
    v12 = v6;
  }

  if (numberOfLines == 1)
  {
    numberOfLines2 = 1;
  }

  else
  {
    numberOfLines2 = [(CPUIAbridgableLabel *)self numberOfLines];
  }

  [v11 setMaximumNumberOfLines:numberOfLines2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  traitCollection = [(CPUIAbridgableLabel *)self traitCollection];
  [traitCollection displayScale];
  if (isKindOfClass)
  {
    v16 = CPUISizeForAttributedText(stringCopy, v11, v12);
  }

  else
  {
    v16 = CPUISizeForText(stringCopy, font, v11, v12);
  }

  v18 = v16;
  v19 = v17;

  if (numberOfLines == 1)
  {
    v20 = v6;
  }

  else
  {
    v20 = v8;
  }

  if (numberOfLines == 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  if (v20 < v21)
  {
    v22 = -1;
  }

  else
  {
    v22 = v20 > v21;
  }

  return v22;
}

@end