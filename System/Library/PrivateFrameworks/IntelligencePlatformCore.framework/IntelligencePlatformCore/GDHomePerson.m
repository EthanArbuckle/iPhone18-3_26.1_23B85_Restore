@interface GDHomePerson
- (GDHomePerson)initWithHMPerson:(id)a3;
@end

@implementation GDHomePerson

- (GDHomePerson)initWithHMPerson:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GDHomePerson;
  v8 = [(GDHomePerson *)&v17 init];
  if (v8)
  {
    v9 = objc_msgSend_name(v4, v5, v6, v7);
    name = v8->_name;
    v8->_name = v9;

    v14 = objc_msgSend_UUID(v4, v11, v12, v13);
    uuid = v8->_uuid;
    v8->_uuid = v14;
  }

  return v8;
}

@end