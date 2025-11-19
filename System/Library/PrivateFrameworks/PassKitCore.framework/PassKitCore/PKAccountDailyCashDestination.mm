@interface PKAccountDailyCashDestination
- (PKAccountDailyCashDestination)initWithCoder:(id)a3;
- (PKAccountDailyCashDestination)initWithDestination:(unint64_t)a3 isCurrent:(BOOL)a4 localizedTitle:(id)a5 localizedSubtitle:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountDailyCashDestination

- (PKAccountDailyCashDestination)initWithDestination:(unint64_t)a3 isCurrent:(BOOL)a4 localizedTitle:(id)a5 localizedSubtitle:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = PKAccountDailyCashDestination;
  v13 = [(PKAccountDailyCashDestination *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_destination = a3;
    v13->_current = a4;
    objc_storeStrong(&v13->_localizedTitle, a5);
    objc_storeStrong(&v14->_localizedSubtitle, a6);
  }

  return v14;
}

- (PKAccountDailyCashDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountDailyCashDestination;
  v5 = [(PKAccountDailyCashDestination *)&v11 init];
  if (v5)
  {
    v5->_destination = [v4 decodeIntegerForKey:@"destination"];
    v5->_current = [v4 decodeBoolForKey:@"current"];
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
  destination = self->_destination;
  v5 = a3;
  [v5 encodeInteger:destination forKey:@"destination"];
  [v5 encodeBool:self->_current forKey:@"current"];
  [v5 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_localizedSubtitle forKey:@"localizedSubtitle"];
}

@end