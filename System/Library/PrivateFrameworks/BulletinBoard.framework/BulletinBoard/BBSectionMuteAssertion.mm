@interface BBSectionMuteAssertion
+ (id)sectionMuteAssertionUntilDate:(id)a3;
- (BBSectionMuteAssertion)initWithCoder:(id)a3;
- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithExpirationDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4 currentDate:(id)a5;
@end

@implementation BBSectionMuteAssertion

+ (id)sectionMuteAssertionUntilDate:(id)a3
{
  v3 = a3;
  v4 = [[BBSectionMuteAssertion alloc] _initWithExpirationDate:v3];

  return v4;
}

- (id)_initWithExpirationDate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BBSectionMuteAssertion;
  v5 = [(BBMuteAssertion *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] now];
  }

  v8 = v7;
  v9 = [(NSDate *)self->_expirationDate compare:v7]== NSOrderedDescending;

  return v9;
}

- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4 currentDate:(id)a5
{
  v8 = [(BBSectionMuteAssertion *)self isActiveForThreadIdentifier:0 currentDate:a5];
  expirationDate = 0;
  if (v8)
  {
    expirationDate = self->_expirationDate;
  }

  *a3 = expirationDate;
  *a4 = 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = v4) != 0)
  {
    v6 = v5;
    expirationDate = self->_expirationDate;
    v8 = v6[1];
    v9 = BSEqualObjects();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BBSectionMuteAssertion;
  v4 = a3;
  [(BBMuteAssertion *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_expirationDate forKey:{@"expirationDate", v5.receiver, v5.super_class}];
}

- (BBSectionMuteAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BBSectionMuteAssertion;
  v5 = [(BBMuteAssertion *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;
  }

  return v5;
}

@end