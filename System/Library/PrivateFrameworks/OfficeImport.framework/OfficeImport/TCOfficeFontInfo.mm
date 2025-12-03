@interface TCOfficeFontInfo
+ (id)officeFontInfoWithFullName:(id)name isBold:(BOOL)bold isItalic:(BOOL)italic;
- (TCOfficeFontInfo)initWithFullName:(id)name isBold:(BOOL)bold isItalic:(BOOL)italic;
- (id)description;
- (id)officeName;
@end

@implementation TCOfficeFontInfo

- (TCOfficeFontInfo)initWithFullName:(id)name isBold:(BOOL)bold isItalic:(BOOL)italic
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = TCOfficeFontInfo;
  v9 = [(TCOfficeFontInfo *)&v13 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    fullName = v9->_fullName;
    v9->_fullName = v10;

    v9->_isBold = bold;
    v9->_isItalic = italic;
  }

  return v9;
}

+ (id)officeFontInfoWithFullName:(id)name isBold:(BOOL)bold isItalic:(BOOL)italic
{
  italicCopy = italic;
  boldCopy = bold;
  nameCopy = name;
  v9 = [[self alloc] initWithFullName:nameCopy isBold:boldCopy isItalic:italicCopy];

  return v9;
}

- (id)officeName
{
  v3 = [(NSString *)self->_fullName length];
  fullName = self->_fullName;
  if (v3 > 0x1F)
  {
    v5 = [(NSString *)fullName substringToIndex:31];
  }

  else
  {
    v5 = fullName;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  fullName = [(TCOfficeFontInfo *)self fullName];
  v5 = [v3 stringWithFormat:@"office_font={%@ B:%d I:%d}", fullName, -[TCOfficeFontInfo isBold](self, "isBold"), -[TCOfficeFontInfo isItalic](self, "isItalic")];

  return v5;
}

@end