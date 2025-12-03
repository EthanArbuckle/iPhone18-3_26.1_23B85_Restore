@interface MXMSampleTagFilter
- (BOOL)matchesSampleWithTag:(id)tag;
- (MXMSampleTagFilter)initWithCoder:(id)coder;
- (MXMSampleTagFilter)initWithTag:(id)tag allowDescendents:(BOOL)descendents;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMSampleTagFilter

- (MXMSampleTagFilter)initWithTag:(id)tag allowDescendents:(BOOL)descendents
{
  domainNameString = [tag domainNameString];
  v9.receiver = self;
  v9.super_class = MXMSampleTagFilter;
  v7 = [(MXMSampleTag *)&v9 initWithDNString:domainNameString];

  if (v7)
  {
    v7->_allowDescendents = descendents;
  }

  return v7;
}

- (BOOL)matchesSampleWithTag:(id)tag
{
  tagCopy = tag;
  if ([(MXMSampleTag *)self isEqualToTag:tagCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = self->_allowDescendents && [(MXMSampleTag *)self containsTag:tagCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MXMSampleTagFilter alloc];
  allowDescendents = self->_allowDescendents;

  return [(MXMSampleTagFilter *)v4 initWithTag:self allowDescendents:allowDescendents];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXMSampleTagFilter;
  coderCopy = coder;
  [(MXMSampleTag *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_allowDescendents forKey:{@"_allowDescendents", v5.receiver, v5.super_class}];
}

- (MXMSampleTagFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MXMSampleTagFilter;
  v5 = [(MXMSampleTag *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_allowDescendents = [coderCopy decodeBoolForKey:@"_allowDescendents"];
  }

  return v5;
}

@end