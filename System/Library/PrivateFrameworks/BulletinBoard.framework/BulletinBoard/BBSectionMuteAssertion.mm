@interface BBSectionMuteAssertion
+ (id)sectionMuteAssertionUntilDate:(id)date;
- (BBSectionMuteAssertion)initWithCoder:(id)coder;
- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (id)_initWithExpirationDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)getNextExpirationDate:(id *)date wasPurged:(BOOL *)purged currentDate:(id)currentDate;
@end

@implementation BBSectionMuteAssertion

+ (id)sectionMuteAssertionUntilDate:(id)date
{
  dateCopy = date;
  v4 = [[BBSectionMuteAssertion alloc] _initWithExpirationDate:dateCopy];

  return v4;
}

- (id)_initWithExpirationDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = BBSectionMuteAssertion;
  _init = [(BBMuteAssertion *)&v9 _init];
  if (_init)
  {
    v6 = [dateCopy copy];
    v7 = _init[1];
    _init[1] = v6;
  }

  return _init;
}

- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (dateCopy)
  {
    v7 = dateCopy;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] now];
  }

  v8 = v7;
  v9 = [(NSDate *)self->_expirationDate compare:v7]== NSOrderedDescending;

  return v9;
}

- (void)getNextExpirationDate:(id *)date wasPurged:(BOOL *)purged currentDate:(id)currentDate
{
  v8 = [(BBSectionMuteAssertion *)self isActiveForThreadIdentifier:0 currentDate:currentDate];
  expirationDate = 0;
  if (v8)
  {
    expirationDate = self->_expirationDate;
  }

  *date = expirationDate;
  *purged = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = equalCopy) != 0)
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BBSectionMuteAssertion;
  coderCopy = coder;
  [(BBMuteAssertion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_expirationDate forKey:{@"expirationDate", v5.receiver, v5.super_class}];
}

- (BBSectionMuteAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BBSectionMuteAssertion;
  v5 = [(BBMuteAssertion *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;
  }

  return v5;
}

@end