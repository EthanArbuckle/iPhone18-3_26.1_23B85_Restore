@interface HMMTagProcessorCreatorObserver
+ (void)addObserverForStartTags:(id)a3 usingCreatorBlock:(id)a4;
- (HMMTagProcessorCreatorObserver)initWithCreationBlock:(id)a3;
- (void)observeTaggedEvent:(id)a3 addProcessorBlock:(id)a4;
@end

@implementation HMMTagProcessorCreatorObserver

- (void)observeTaggedEvent:(id)a3 addProcessorBlock:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(HMMTagProcessorCreatorObserver *)self creationBlock];
  v8 = (v7)[2](v7, v6);

  if (v8)
  {
    v9[2](v9, v8);
  }
}

- (HMMTagProcessorCreatorObserver)initWithCreationBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMMTagProcessorCreatorObserver;
  v5 = [(HMMTagProcessorCreatorObserver *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    creationBlock = v5->_creationBlock;
    v5->_creationBlock = v6;
  }

  return v5;
}

+ (void)addObserverForStartTags:(id)a3 usingCreatorBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [[HMMTagProcessorCreatorObserver alloc] initWithCreationBlock:v5];

  v7 = +[HMMTagManager sharedInstance];
  [v7 registerTagObserver:v8 forTags:v6];
}

@end