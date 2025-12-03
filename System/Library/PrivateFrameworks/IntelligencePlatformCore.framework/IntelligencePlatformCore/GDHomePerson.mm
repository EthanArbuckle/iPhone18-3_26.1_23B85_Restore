@interface GDHomePerson
- (GDHomePerson)initWithHMPerson:(id)person;
@end

@implementation GDHomePerson

- (GDHomePerson)initWithHMPerson:(id)person
{
  personCopy = person;
  v17.receiver = self;
  v17.super_class = GDHomePerson;
  v8 = [(GDHomePerson *)&v17 init];
  if (v8)
  {
    v9 = objc_msgSend_name(personCopy, v5, v6, v7);
    name = v8->_name;
    v8->_name = v9;

    v14 = objc_msgSend_UUID(personCopy, v11, v12, v13);
    uuid = v8->_uuid;
    v8->_uuid = v14;
  }

  return v8;
}

@end