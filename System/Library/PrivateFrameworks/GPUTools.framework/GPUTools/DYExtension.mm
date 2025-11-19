@interface DYExtension
- (id)_initWithDictionary:(id)a3 bundle:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation DYExtension

- (id)_initWithDictionary:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = DYExtension;
  v6 = [(DYExtension *)&v10 init];
  if (v6)
  {
    v7 = [a3 objectForKey:@"slot"];
    v6->_slot = v7;
    if (v7 && (v8 = [a3 objectForKey:@"identifier"], (v6->_identifier = v8) != 0))
    {
      v6->_dictionary = a3;
      v6->_bundle = a4;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYExtension;
  [(DYExtension *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = DYExtension;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: slot=%@ identifier=%@ bundle=%@", -[DYExtension description](&v3, sel_description), self->_slot, self->_identifier, self->_bundle];
}

@end