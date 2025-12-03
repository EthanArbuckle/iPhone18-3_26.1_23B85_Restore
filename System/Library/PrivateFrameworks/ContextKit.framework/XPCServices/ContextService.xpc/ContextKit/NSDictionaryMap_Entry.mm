@interface NSDictionaryMap_Entry
- (NSDictionaryMap_Entry)initWithDictionary:(id)dictionary key:(id)key;
- (id)setValueWithId:(id)id;
- (void)dealloc;
@end

@implementation NSDictionaryMap_Entry

- (NSDictionaryMap_Entry)initWithDictionary:(id)dictionary key:(id)key
{
  v8.receiver = self;
  v8.super_class = NSDictionaryMap_Entry;
  v6 = [(NSDictionaryMap_Entry *)&v8 init];
  if (v6)
  {
    v6->dictionary_ = dictionary;
    v6->key_ = key;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSDictionaryMap_Entry;
  [(NSDictionaryMap_Entry *)&v3 dealloc];
}

- (id)setValueWithId:(id)id
{
  v5 = [(NSMutableDictionary *)self->dictionary_ objectForKey:self->key_];
  [(NSMutableDictionary *)self->dictionary_ setObject:id forKey:self->key_];
  return v5;
}

@end