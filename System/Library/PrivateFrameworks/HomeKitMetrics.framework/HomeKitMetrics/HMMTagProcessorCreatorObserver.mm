@interface HMMTagProcessorCreatorObserver
+ (void)addObserverForStartTags:(id)tags usingCreatorBlock:(id)block;
- (HMMTagProcessorCreatorObserver)initWithCreationBlock:(id)block;
- (void)observeTaggedEvent:(id)event addProcessorBlock:(id)block;
@end

@implementation HMMTagProcessorCreatorObserver

- (void)observeTaggedEvent:(id)event addProcessorBlock:(id)block
{
  blockCopy = block;
  eventCopy = event;
  creationBlock = [(HMMTagProcessorCreatorObserver *)self creationBlock];
  v8 = (creationBlock)[2](creationBlock, eventCopy);

  if (v8)
  {
    blockCopy[2](blockCopy, v8);
  }
}

- (HMMTagProcessorCreatorObserver)initWithCreationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = HMMTagProcessorCreatorObserver;
  v5 = [(HMMTagProcessorCreatorObserver *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    creationBlock = v5->_creationBlock;
    v5->_creationBlock = v6;
  }

  return v5;
}

+ (void)addObserverForStartTags:(id)tags usingCreatorBlock:(id)block
{
  blockCopy = block;
  tagsCopy = tags;
  v8 = [[HMMTagProcessorCreatorObserver alloc] initWithCreationBlock:blockCopy];

  v7 = +[HMMTagManager sharedInstance];
  [v7 registerTagObserver:v8 forTags:tagsCopy];
}

@end