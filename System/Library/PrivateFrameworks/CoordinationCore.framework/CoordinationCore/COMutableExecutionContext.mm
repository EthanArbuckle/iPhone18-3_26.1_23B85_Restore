@interface COMutableExecutionContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation COMutableExecutionContext

- (void)setObject:(id)object forKey:(id)key
{
  context = object;
  keyCopy = key;
  if (![keyCopy isEqualToString:@"dispatchQueue"] || (objc_msgSend(MEMORY[0x277CBEB68], "null"), v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSObject isEqual:](context, "isEqual:", v7), v7, (v8 & 1) == 0))
  {
    if ([keyCopy isEqualToString:@"dispatchQueue"])
    {
      dispatch_queue_set_specific(context, "queueSpecificInfo", context, 0);
    }

    metadata = [(COExecutionContext *)self metadata];
    v10 = [metadata mutableCopy];

    [v10 setObject:context forKey:keyCopy];
    [(COExecutionContext *)self setMetadata:v10];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [COExecutionContext alloc];
  metadata = [(COExecutionContext *)self metadata];
  v6 = [(COExecutionContext *)v4 initWithMetadata:metadata];

  return v6;
}

@end