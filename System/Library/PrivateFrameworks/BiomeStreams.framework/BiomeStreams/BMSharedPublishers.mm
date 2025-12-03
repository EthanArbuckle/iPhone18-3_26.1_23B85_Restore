@interface BMSharedPublishers
- (BMSharedPublishers)initWithPublishers:(id)publishers;
- (id)merge;
@end

@implementation BMSharedPublishers

- (BMSharedPublishers)initWithPublishers:(id)publishers
{
  publishersCopy = publishers;
  v9.receiver = self;
  v9.super_class = BMSharedPublishers;
  v5 = [(BMSharedPublishers *)&v9 init];
  if (v5)
  {
    v6 = [publishersCopy copy];
    publishers = v5->_publishers;
    v5->_publishers = v6;
  }

  return v5;
}

- (id)merge
{
  v3 = objc_alloc(MEMORY[0x1E698F0D0]);
  publishers = [(BMSharedPublishers *)self publishers];
  v5 = [v3 initWithPublishers:publishers];

  return v5;
}

@end