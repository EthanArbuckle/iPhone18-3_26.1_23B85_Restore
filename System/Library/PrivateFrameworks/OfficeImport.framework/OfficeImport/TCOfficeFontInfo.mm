@interface TCOfficeFontInfo
+ (id)officeFontInfoWithFullName:(id)a3 isBold:(BOOL)a4 isItalic:(BOOL)a5;
- (TCOfficeFontInfo)initWithFullName:(id)a3 isBold:(BOOL)a4 isItalic:(BOOL)a5;
- (id)description;
- (id)officeName;
@end

@implementation TCOfficeFontInfo

- (TCOfficeFontInfo)initWithFullName:(id)a3 isBold:(BOOL)a4 isItalic:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = TCOfficeFontInfo;
  v9 = [(TCOfficeFontInfo *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    fullName = v9->_fullName;
    v9->_fullName = v10;

    v9->_isBold = a4;
    v9->_isItalic = a5;
  }

  return v9;
}

+ (id)officeFontInfoWithFullName:(id)a3 isBold:(BOOL)a4 isItalic:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [[a1 alloc] initWithFullName:v8 isBold:v6 isItalic:v5];

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
  v4 = [(TCOfficeFontInfo *)self fullName];
  v5 = [v3 stringWithFormat:@"office_font={%@ B:%d I:%d}", v4, -[TCOfficeFontInfo isBold](self, "isBold"), -[TCOfficeFontInfo isItalic](self, "isItalic")];

  return v5;
}

@end