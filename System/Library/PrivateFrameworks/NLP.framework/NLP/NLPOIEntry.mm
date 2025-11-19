@interface NLPOIEntry
- (NLPOIEntry)initWithProtoBuf:(id)a3;
- (unsigned)category;
- (void)dealloc;
@end

@implementation NLPOIEntry

- (NLPOIEntry)initWithProtoBuf:(id)a3
{
  v6.receiver = self;
  v6.super_class = NLPOIEntry;
  v4 = [(NLPOIEntry *)&v6 init];
  if (v4)
  {
    v4->m_impl = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NLPOIEntry;
  [(NLPOIEntry *)&v3 dealloc];
}

- (unsigned)category
{
  if ([(NSString *)[(NLPOIEntryImpl *)self->m_impl category] isEqualToString:@"active"])
  {
    return 1;
  }

  if ([(NSString *)[(NLPOIEntryImpl *)self->m_impl category] isEqualToString:@"arts"])
  {
    return 2;
  }

  if ([(NSString *)[(NLPOIEntryImpl *)self->m_impl category] isEqualToString:@"education"])
  {
    return 3;
  }

  return 0;
}

@end