@interface PKRewardsTierEducationSection
- (PKRewardsTierEducationSection)initWithCoder:(id)a3;
- (PKRewardsTierEducationSection)initWithTier:(unint64_t)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKRewardsTierEducationSection

- (PKRewardsTierEducationSection)initWithTier:(unint64_t)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKRewardsTierEducationSection;
  v11 = [(PKRewardsTierEducationSection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_tier = a3;
    objc_storeStrong(&v11->_localizedTitle, a4);
    objc_storeStrong(&v12->_localizedSubtitle, a5);
  }

  return v12;
}

- (PKRewardsTierEducationSection)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKRewardsTierEducationSection;
  v5 = [(PKRewardsTierEducationSection *)&v11 init];
  if (v5)
  {
    v5->_tier = [v4 decodeIntegerForKey:@"tier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  tier = self->_tier;
  v5 = a3;
  [v5 encodeInteger:tier forKey:@"tier"];
  [v5 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_localizedSubtitle forKey:@"localizedSubtitle"];
}

@end