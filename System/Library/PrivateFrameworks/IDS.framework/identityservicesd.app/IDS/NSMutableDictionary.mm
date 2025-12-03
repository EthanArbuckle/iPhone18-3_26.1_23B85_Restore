@interface NSMutableDictionary
- (void)setPreflightStack:(id)stack forIdentifier:(id)identifier;
@end

@implementation NSMutableDictionary

- (void)setPreflightStack:(id)stack forIdentifier:(id)identifier
{
  if (stack)
  {
    [(NSMutableDictionary *)self setObject:stack forKey:identifier];
  }

  else
  {
    [(NSMutableDictionary *)self removeObjectForKey:identifier];
  }
}

@end