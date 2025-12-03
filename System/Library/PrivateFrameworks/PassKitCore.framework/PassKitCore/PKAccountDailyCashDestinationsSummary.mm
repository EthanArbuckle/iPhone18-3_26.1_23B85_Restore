@interface PKAccountDailyCashDestinationsSummary
- (PKAccountDailyCashDestinationsSummary)initWithCoder:(id)coder;
- (PKAccountDailyCashDestinationsSummary)initWithDestinations:(id)destinations localizedTitle:(id)title localizedFooterText:(id)text;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountDailyCashDestinationsSummary

- (PKAccountDailyCashDestinationsSummary)initWithDestinations:(id)destinations localizedTitle:(id)title localizedFooterText:(id)text
{
  destinationsCopy = destinations;
  titleCopy = title;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = PKAccountDailyCashDestinationsSummary;
  v12 = [(PKAccountDailyCashDestinationsSummary *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destinations, destinations);
    objc_storeStrong(&v13->_localizedTitle, title);
    objc_storeStrong(&v13->_localizedFooterText, text);
  }

  return v13;
}

- (PKAccountDailyCashDestinationsSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKAccountDailyCashDestinationsSummary;
  v5 = [(PKAccountDailyCashDestinationsSummary *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"destinations"];
    destinations = v5->_destinations;
    v5->_destinations = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedFooterText"];
    localizedFooterText = v5->_localizedFooterText;
    v5->_localizedFooterText = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  destinations = self->_destinations;
  coderCopy = coder;
  [coderCopy encodeObject:destinations forKey:@"destinations"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedFooterText forKey:@"localizedFooterText"];
}

@end