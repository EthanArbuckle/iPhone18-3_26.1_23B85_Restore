@interface ML3NegationPredicate
- (id)description;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
@end

@implementation ML3NegationPredicate

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  stringCopy = string;
  objc_msgSend(stringCopy, "appendString:", @"(NOT ");
  [(ML3Predicate *)self->super._predicate appendSQLToMutableString:stringCopy entityClass:class];
  [stringCopy appendString:@""]);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ML3NegationPredicate;
  v4 = [(ML3NegationPredicate *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@(NOT %@)", v4, self->super._predicate];

  return v5;
}

@end