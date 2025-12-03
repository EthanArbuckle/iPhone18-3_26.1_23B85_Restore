@interface _ICNullLexiconManager
- (_ICNullLexiconManager)init;
- (id)addContactObserver:(id)observer;
- (id)addNamedEntitiesUpdateObserver:(id)observer;
- (void)removeContactObserver:(id)observer;
@end

@implementation _ICNullLexiconManager

- (_ICNullLexiconManager)init
{
  v6.receiver = self;
  v6.super_class = _ICNullLexiconManager;
  v2 = [(_ICNullLexiconManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contactObservers = v2->_contactObservers;
    v2->_contactObservers = v3;
  }

  return v2;
}

- (id)addContactObserver:(id)observer
{
  v4 = [observer copy];
  contactObservers = self->_contactObservers;
  v6 = MEMORY[0x259C27030]();
  [(NSMutableArray *)contactObservers addObject:v6];

  v7 = MEMORY[0x259C27030](v4);

  return v7;
}

- (void)removeContactObserver:(id)observer
{
  contactObservers = self->_contactObservers;
  v4 = MEMORY[0x259C27030](observer, a2);
  [(NSMutableArray *)contactObservers removeObject:v4];
}

- (id)addNamedEntitiesUpdateObserver:(id)observer
{
  v3 = [observer copy];

  return v3;
}

@end