@interface BMSharedPublishers
- (BMSharedPublishers)initWithPublishers:(id)a3;
- (id)merge;
@end

@implementation BMSharedPublishers

- (BMSharedPublishers)initWithPublishers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMSharedPublishers;
  v5 = [(BMSharedPublishers *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    publishers = v5->_publishers;
    v5->_publishers = v6;
  }

  return v5;
}

- (id)merge
{
  v3 = objc_alloc(MEMORY[0x1E698F0D0]);
  v4 = [(BMSharedPublishers *)self publishers];
  v5 = [v3 initWithPublishers:v4];

  return v5;
}

@end