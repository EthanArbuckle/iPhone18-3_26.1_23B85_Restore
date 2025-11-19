@interface BRLTTextFormattingRanges
- (BOOL)isEqual:(id)a3;
- (BRLTTextFormattingRanges)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addBoldRange:(_NSRange)a3;
- (void)addItalicRange:(_NSRange)a3;
- (void)addUnderlineRange:(_NSRange)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRLTTextFormattingRanges

- (void)addBoldRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  boldRanges = self->_boldRanges;
  if (!boldRanges)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = self->_boldRanges;
    self->_boldRanges = v7;

    boldRanges = self->_boldRanges;
  }

  v9 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  [(NSMutableArray *)boldRanges addObject:v9];
}

- (void)addItalicRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  italicRanges = self->_italicRanges;
  if (!italicRanges)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = self->_italicRanges;
    self->_italicRanges = v7;

    italicRanges = self->_italicRanges;
  }

  v9 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  [(NSMutableArray *)italicRanges addObject:v9];
}

- (void)addUnderlineRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  underlineRanges = self->_underlineRanges;
  if (!underlineRanges)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = self->_underlineRanges;
    self->_underlineRanges = v7;

    underlineRanges = self->_underlineRanges;
  }

  v9 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  [(NSMutableArray *)underlineRanges addObject:v9];
}

- (void)encodeWithCoder:(id)a3
{
  underlineRanges = self->_underlineRanges;
  v5 = a3;
  v6 = [(NSMutableArray *)underlineRanges copy];
  [v5 encodeObject:v6 forKey:@"underlineRanges"];

  v7 = [(NSMutableArray *)self->_italicRanges copy];
  [v5 encodeObject:v7 forKey:@"italicRanges"];

  v8 = [(NSMutableArray *)self->_boldRanges copy];
  [v5 encodeObject:v8 forKey:@"boldRanges"];
}

- (BRLTTextFormattingRanges)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = BRLTTextFormattingRanges;
  v3 = a3;
  v4 = [(BRLTTextFormattingRanges *)&v22 init];
  v5 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"underlineRanges"];
  underlineRanges = v4->_underlineRanges;
  v4->_underlineRanges = v8;

  v10 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"italicRanges"];
  italicRanges = v4->_italicRanges;
  v4->_italicRanges = v13;

  v15 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"boldRanges"];

  boldRanges = v4->_boldRanges;
  v4->_boldRanges = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(BRLTTextFormattingRanges *)self underlineRanges];
  v6 = [v5 copy];
  [v4 setUnderlineRanges:v6];

  v7 = [(BRLTTextFormattingRanges *)self italicRanges];
  v8 = [v7 copy];
  [v4 setItalicRanges:v8];

  v9 = [(BRLTTextFormattingRanges *)self boldRanges];
  v10 = [v9 copy];
  [v4 setBoldRanges:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = BRLTTextFormattingRanges;
  v4 = [(BRLTTextFormattingRanges *)&v10 description];
  v5 = [(BRLTTextFormattingRanges *)self underlineRanges];
  v6 = [(BRLTTextFormattingRanges *)self italicRanges];
  v7 = [(BRLTTextFormattingRanges *)self boldRanges];
  v8 = [v3 stringWithFormat:@"%@: underline{%@}, italic{%@}, bold{%@}", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BRLTTextFormattingRanges *)self underlineRanges];
      v7 = [(BRLTTextFormattingRanges *)v5 underlineRanges];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(BRLTTextFormattingRanges *)self underlineRanges];
        v10 = [(BRLTTextFormattingRanges *)v5 underlineRanges];
        v11 = [v9 isEqualToArray:v10];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      v13 = [(BRLTTextFormattingRanges *)self italicRanges];
      v14 = [(BRLTTextFormattingRanges *)v5 italicRanges];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(BRLTTextFormattingRanges *)self italicRanges];
        v17 = [(BRLTTextFormattingRanges *)v5 italicRanges];
        v18 = [v16 isEqualToArray:v17];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      v19 = [(BRLTTextFormattingRanges *)self boldRanges];
      v20 = [(BRLTTextFormattingRanges *)v5 boldRanges];
      if (v19 == v20)
      {
        v12 = 1;
      }

      else
      {
        v21 = [(BRLTTextFormattingRanges *)self boldRanges];
        v22 = [(BRLTTextFormattingRanges *)v5 boldRanges];
        v12 = [v21 isEqualToArray:v22];
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12 & 1;
}

@end