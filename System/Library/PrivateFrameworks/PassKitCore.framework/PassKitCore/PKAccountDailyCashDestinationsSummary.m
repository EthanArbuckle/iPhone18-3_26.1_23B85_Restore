@interface PKAccountDailyCashDestinationsSummary
- (PKAccountDailyCashDestinationsSummary)initWithCoder:(id)a3;
- (PKAccountDailyCashDestinationsSummary)initWithDestinations:(id)a3 localizedTitle:(id)a4 localizedFooterText:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountDailyCashDestinationsSummary

- (PKAccountDailyCashDestinationsSummary)initWithDestinations:(id)a3 localizedTitle:(id)a4 localizedFooterText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKAccountDailyCashDestinationsSummary;
  v12 = [(PKAccountDailyCashDestinationsSummary *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destinations, a3);
    objc_storeStrong(&v13->_localizedTitle, a4);
    objc_storeStrong(&v13->_localizedFooterText, a5);
  }

  return v13;
}

- (PKAccountDailyCashDestinationsSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKAccountDailyCashDestinationsSummary;
  v5 = [(PKAccountDailyCashDestinationsSummary *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"destinations"];
    destinations = v5->_destinations;
    v5->_destinations = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedFooterText"];
    localizedFooterText = v5->_localizedFooterText;
    v5->_localizedFooterText = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  destinations = self->_destinations;
  v5 = a3;
  [v5 encodeObject:destinations forKey:@"destinations"];
  [v5 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_localizedFooterText forKey:@"localizedFooterText"];
}

@end