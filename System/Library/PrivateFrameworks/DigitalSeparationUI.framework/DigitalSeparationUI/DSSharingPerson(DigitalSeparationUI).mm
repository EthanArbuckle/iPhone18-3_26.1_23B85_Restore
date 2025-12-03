@interface DSSharingPerson(DigitalSeparationUI)
- (id)iconForDetail;
- (id)iconForTable;
@end

@implementation DSSharingPerson(DigitalSeparationUI)

- (id)iconForTable
{
  contact = [self contact];
  v2 = contact;
  if (contact)
  {
    v3 = contact;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDB38]);
  }

  v4 = v3;

  v5 = [DSIconFactory tableIconForContact:v4];

  return v5;
}

- (id)iconForDetail
{
  contact = [self contact];
  v2 = contact;
  if (contact)
  {
    v3 = contact;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDB38]);
  }

  v4 = v3;

  v5 = [DSIconFactory detailIconForContact:v4];

  return v5;
}

@end