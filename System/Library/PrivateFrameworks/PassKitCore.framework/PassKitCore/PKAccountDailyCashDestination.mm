@interface PKAccountDailyCashDestination
- (PKAccountDailyCashDestination)initWithCoder:(id)coder;
- (PKAccountDailyCashDestination)initWithDestination:(unint64_t)destination isCurrent:(BOOL)current localizedTitle:(id)title localizedSubtitle:(id)subtitle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountDailyCashDestination

- (PKAccountDailyCashDestination)initWithDestination:(unint64_t)destination isCurrent:(BOOL)current localizedTitle:(id)title localizedSubtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v16.receiver = self;
  v16.super_class = PKAccountDailyCashDestination;
  v13 = [(PKAccountDailyCashDestination *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_destination = destination;
    v13->_current = current;
    objc_storeStrong(&v13->_localizedTitle, title);
    objc_storeStrong(&v14->_localizedSubtitle, subtitle);
  }

  return v14;
}

- (PKAccountDailyCashDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountDailyCashDestination;
  v5 = [(PKAccountDailyCashDestination *)&v11 init];
  if (v5)
  {
    v5->_destination = [coderCopy decodeIntegerForKey:@"destination"];
    v5->_current = [coderCopy decodeBoolForKey:@"current"];
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
  destination = self->_destination;
  coderCopy = coder;
  [coderCopy encodeInteger:destination forKey:@"destination"];
  [coderCopy encodeBool:self->_current forKey:@"current"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedSubtitle forKey:@"localizedSubtitle"];
}

@end