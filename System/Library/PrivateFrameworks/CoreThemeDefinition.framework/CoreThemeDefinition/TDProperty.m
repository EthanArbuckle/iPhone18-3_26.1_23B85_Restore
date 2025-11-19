@interface TDProperty
- (NSString)name;
- (void)addToDictionary:(id)a3;
- (void)dealloc;
- (void)setName:(id)a3;
@end

@implementation TDProperty

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDProperty;
  [(TDProperty *)&v3 dealloc];
}

- (NSString)name
{
  [(TDProperty *)self willAccessValueForKey:@"name"];
  v3 = [(NSString *)self->_name copy];
  [(TDProperty *)self didAccessValueForKey:@"name"];
  return v3;
}

- (void)setName:(id)a3
{
  [(TDProperty *)self willChangeValueForKey:@"name"];

  self->_name = [a3 copy];

  [(TDProperty *)self didChangeValueForKey:@"name"];
}

- (void)addToDictionary:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];

  [v5 handleFailureInMethod:a2 object:self file:@"TDProperty.m" lineNumber:33 description:@"Abstract TDProperty instances can't be put in a dictionary since they have no value."];
}

@end