@interface NSMutableDictionary
- (void)setPreflightStack:(id)a3 forIdentifier:(id)a4;
@end

@implementation NSMutableDictionary

- (void)setPreflightStack:(id)a3 forIdentifier:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)self removeObjectForKey:a4];
  }
}

@end