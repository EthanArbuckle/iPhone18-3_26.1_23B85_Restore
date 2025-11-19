@interface DSSharingPerson(DigitalSeparationUI)
- (id)iconForDetail;
- (id)iconForTable;
@end

@implementation DSSharingPerson(DigitalSeparationUI)

- (id)iconForTable
{
  v1 = [a1 contact];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
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
  v1 = [a1 contact];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
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