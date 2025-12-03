@interface PKRewardsTierEducationSection
- (PKRewardsTierEducationSection)initWithCoder:(id)coder;
- (PKRewardsTierEducationSection)initWithTier:(unint64_t)tier localizedTitle:(id)title localizedSubtitle:(id)subtitle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRewardsTierEducationSection

- (PKRewardsTierEducationSection)initWithTier:(unint64_t)tier localizedTitle:(id)title localizedSubtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v14.receiver = self;
  v14.super_class = PKRewardsTierEducationSection;
  v11 = [(PKRewardsTierEducationSection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_tier = tier;
    objc_storeStrong(&v11->_localizedTitle, title);
    objc_storeStrong(&v12->_localizedSubtitle, subtitle);
  }

  return v12;
}

- (PKRewardsTierEducationSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKRewardsTierEducationSection;
  v5 = [(PKRewardsTierEducationSection *)&v11 init];
  if (v5)
  {
    v5->_tier = [coderCopy decodeIntegerForKey:@"tier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  tier = self->_tier;
  coderCopy = coder;
  [coderCopy encodeInteger:tier forKey:@"tier"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedSubtitle forKey:@"localizedSubtitle"];
}

@end