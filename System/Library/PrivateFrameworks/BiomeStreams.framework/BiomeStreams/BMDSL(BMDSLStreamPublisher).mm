@interface BMDSL(BMDSLStreamPublisher)
- (id)rootStreamIdentifiers;
- (id)streamPublishers;
@end

@implementation BMDSL(BMDSLStreamPublisher)

- (id)rootStreamIdentifiers
{
  v1 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self, 0}];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  while ([v1 count])
  {
    firstObject = [v1 firstObject];
    [v1 removeObjectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [firstObject identifier];
      if (identifier)
      {
        [v2 addObject:identifier];
      }
    }

    upstreams = [firstObject upstreams];
    [v1 addObjectsFromArray:upstreams];
  }

  v6 = [v2 copy];

  return v6;
}

- (id)streamPublishers
{
  v1 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self, 0}];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  while ([v1 count])
  {
    firstObject = [v1 firstObject];
    [v1 removeObjectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 addObject:firstObject];
    }

    upstreams = [firstObject upstreams];
    [v1 addObjectsFromArray:upstreams];
  }

  v5 = [v2 copy];

  return v5;
}

@end