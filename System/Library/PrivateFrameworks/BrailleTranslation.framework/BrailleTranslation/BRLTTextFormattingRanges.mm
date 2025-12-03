@interface BRLTTextFormattingRanges
- (BOOL)isEqual:(id)equal;
- (BRLTTextFormattingRanges)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addBoldRange:(_NSRange)range;
- (void)addItalicRange:(_NSRange)range;
- (void)addUnderlineRange:(_NSRange)range;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRLTTextFormattingRanges

- (void)addBoldRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  boldRanges = self->_boldRanges;
  if (!boldRanges)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = self->_boldRanges;
    self->_boldRanges = array;

    boldRanges = self->_boldRanges;
  }

  v9 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  [(NSMutableArray *)boldRanges addObject:v9];
}

- (void)addItalicRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  italicRanges = self->_italicRanges;
  if (!italicRanges)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = self->_italicRanges;
    self->_italicRanges = array;

    italicRanges = self->_italicRanges;
  }

  v9 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  [(NSMutableArray *)italicRanges addObject:v9];
}

- (void)addUnderlineRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  underlineRanges = self->_underlineRanges;
  if (!underlineRanges)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = self->_underlineRanges;
    self->_underlineRanges = array;

    underlineRanges = self->_underlineRanges;
  }

  v9 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  [(NSMutableArray *)underlineRanges addObject:v9];
}

- (void)encodeWithCoder:(id)coder
{
  underlineRanges = self->_underlineRanges;
  coderCopy = coder;
  v6 = [(NSMutableArray *)underlineRanges copy];
  [coderCopy encodeObject:v6 forKey:@"underlineRanges"];

  v7 = [(NSMutableArray *)self->_italicRanges copy];
  [coderCopy encodeObject:v7 forKey:@"italicRanges"];

  v8 = [(NSMutableArray *)self->_boldRanges copy];
  [coderCopy encodeObject:v8 forKey:@"boldRanges"];
}

- (BRLTTextFormattingRanges)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = BRLTTextFormattingRanges;
  coderCopy = coder;
  v4 = [(BRLTTextFormattingRanges *)&v22 init];
  v5 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"underlineRanges"];
  underlineRanges = v4->_underlineRanges;
  v4->_underlineRanges = v8;

  v10 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"italicRanges"];
  italicRanges = v4->_italicRanges;
  v4->_italicRanges = v13;

  v15 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"boldRanges"];

  boldRanges = v4->_boldRanges;
  v4->_boldRanges = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  underlineRanges = [(BRLTTextFormattingRanges *)self underlineRanges];
  v6 = [underlineRanges copy];
  [v4 setUnderlineRanges:v6];

  italicRanges = [(BRLTTextFormattingRanges *)self italicRanges];
  v8 = [italicRanges copy];
  [v4 setItalicRanges:v8];

  boldRanges = [(BRLTTextFormattingRanges *)self boldRanges];
  v10 = [boldRanges copy];
  [v4 setBoldRanges:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = BRLTTextFormattingRanges;
  v4 = [(BRLTTextFormattingRanges *)&v10 description];
  underlineRanges = [(BRLTTextFormattingRanges *)self underlineRanges];
  italicRanges = [(BRLTTextFormattingRanges *)self italicRanges];
  boldRanges = [(BRLTTextFormattingRanges *)self boldRanges];
  v8 = [v3 stringWithFormat:@"%@: underline{%@}, italic{%@}, bold{%@}", v4, underlineRanges, italicRanges, boldRanges];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      underlineRanges = [(BRLTTextFormattingRanges *)self underlineRanges];
      underlineRanges2 = [(BRLTTextFormattingRanges *)v5 underlineRanges];
      v8 = underlineRanges2;
      if (underlineRanges == underlineRanges2)
      {
      }

      else
      {
        underlineRanges3 = [(BRLTTextFormattingRanges *)self underlineRanges];
        underlineRanges4 = [(BRLTTextFormattingRanges *)v5 underlineRanges];
        v11 = [underlineRanges3 isEqualToArray:underlineRanges4];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      italicRanges = [(BRLTTextFormattingRanges *)self italicRanges];
      italicRanges2 = [(BRLTTextFormattingRanges *)v5 italicRanges];
      v15 = italicRanges2;
      if (italicRanges == italicRanges2)
      {
      }

      else
      {
        italicRanges3 = [(BRLTTextFormattingRanges *)self italicRanges];
        italicRanges4 = [(BRLTTextFormattingRanges *)v5 italicRanges];
        v18 = [italicRanges3 isEqualToArray:italicRanges4];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      boldRanges = [(BRLTTextFormattingRanges *)self boldRanges];
      boldRanges2 = [(BRLTTextFormattingRanges *)v5 boldRanges];
      if (boldRanges == boldRanges2)
      {
        v12 = 1;
      }

      else
      {
        boldRanges3 = [(BRLTTextFormattingRanges *)self boldRanges];
        boldRanges4 = [(BRLTTextFormattingRanges *)v5 boldRanges];
        v12 = [boldRanges3 isEqualToArray:boldRanges4];
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12 & 1;
}

@end