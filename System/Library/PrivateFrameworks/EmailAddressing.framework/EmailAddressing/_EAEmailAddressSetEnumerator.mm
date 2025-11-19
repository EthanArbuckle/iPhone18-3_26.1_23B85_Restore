@interface _EAEmailAddressSetEnumerator
- (_EAEmailAddressSetEnumerator)initWithSet:(id)a3;
- (id)nextObject;
@end

@implementation _EAEmailAddressSetEnumerator

- (_EAEmailAddressSetEnumerator)initWithSet:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _EAEmailAddressSetEnumerator;
  v6 = [(_EAEmailAddressSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_set, a3);
  }

  return v7;
}

- (id)nextObject
{
  v4 = 0;
  v2 = [(EAEmailAddressSet *)self->_set countByEnumeratingWithState:&self->_state objects:&v4 count:1];
  if (v2)
  {
    v2 = v4;
  }

  return v2;
}

@end