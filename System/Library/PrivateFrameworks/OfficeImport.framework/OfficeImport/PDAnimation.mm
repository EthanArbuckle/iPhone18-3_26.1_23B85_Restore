@interface PDAnimation
+ (TCEnumerationMap)entranceSubTypeMap;
+ (TCEnumerationMap)exitSubTypeMap;
+ (void)entranceSubTypeMap;
+ (void)exitSubTypeMap;
- (PDAnimation)init;
- (id)addRootTimeNode;
- (id)description;
@end

@implementation PDAnimation

- (PDAnimation)init
{
  v3.receiver = self;
  v3.super_class = PDAnimation;
  return [(PDAnimation *)&v3 init];
}

- (id)addRootTimeNode
{
  mRootTimeNode = self->mRootTimeNode;
  if (!mRootTimeNode)
  {
    v4 = objc_alloc_init(PDRootTimeNode);
    v5 = self->mRootTimeNode;
    self->mRootTimeNode = v4;

    mRootTimeNode = self->mRootTimeNode;
  }

  return mRootTimeNode;
}

+ (TCEnumerationMap)entranceSubTypeMap
{
  {
    +[PDAnimation entranceSubTypeMap];
  }

  if (+[PDAnimation entranceSubTypeMap]::onceToken != -1)
  {
    +[PDAnimation entranceSubTypeMap];
  }

  v2 = +[PDAnimation entranceSubTypeMap]::sEntranceSubTypeMap;

  return v2;
}

void __33__PDAnimation_entranceSubTypeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PDAnimation entranceSubTypeMap]::PDEntranceAnimSubTypeMap count:54 caseSensitive:1];
  v1 = +[PDAnimation entranceSubTypeMap]::sEntranceSubTypeMap;
  +[PDAnimation entranceSubTypeMap]::sEntranceSubTypeMap = v0;
}

+ (TCEnumerationMap)exitSubTypeMap
{
  {
    +[PDAnimation exitSubTypeMap];
  }

  if (+[PDAnimation exitSubTypeMap]::onceToken != -1)
  {
    +[PDAnimation exitSubTypeMap];
  }

  v2 = +[PDAnimation exitSubTypeMap]::sExitSubTypeMap;

  return v2;
}

void __29__PDAnimation_exitSubTypeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PDAnimation exitSubTypeMap]::PDExitAnimSubTypeMap count:54 caseSensitive:1];
  v1 = +[PDAnimation exitSubTypeMap]::sExitSubTypeMap;
  +[PDAnimation exitSubTypeMap]::sExitSubTypeMap = v0;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDAnimation;
  v2 = [(PDAnimation *)&v4 description];

  return v2;
}

+ (void)entranceSubTypeMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_49, 0, &dword_25D297000);
  }
}

+ (void)exitSubTypeMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_782, 0, &dword_25D297000);
  }
}

@end