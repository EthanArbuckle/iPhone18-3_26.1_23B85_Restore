@interface _HDOntologyGraphInflationCache
- (_HDOntologyGraphInflationCache)init;
@end

@implementation _HDOntologyGraphInflationCache

- (_HDOntologyGraphInflationCache)init
{
  v8.receiver = self;
  v8.super_class = _HDOntologyGraphInflationCache;
  v2 = [(_HDOntologyGraphInflationCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    conceptsByID = v2->_conceptsByID;
    v2->_conceptsByID = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    conceptIDStack = v2->_conceptIDStack;
    v2->_conceptIDStack = v5;
  }

  return v2;
}

@end