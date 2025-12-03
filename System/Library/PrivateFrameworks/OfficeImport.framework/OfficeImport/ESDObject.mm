@interface ESDObject
- (ESDObject)initWithEshObject:(EshObject *)object;
- (ESDObject)initWithType:(unsigned __int16)type;
- (id)initForExcelBinaryWithType:(unsigned __int16)type version:(unsigned __int16)version state:(id)state;
- (id)initFromReader:(OcReader *)reader type:(unsigned __int16)type version:(unsigned __int16)version;
- (id)initPBWithType:(unsigned __int16)type version:(unsigned __int16)version state:(id)state;
- (id)parent;
- (int)shapeID;
- (void)dealloc;
- (void)eshGroup;
- (void)eshShape;
- (void)writeToWriter:(OcWriter *)writer;
@end

@implementation ESDObject

- (void)eshShape
{
  result = self->mEshObject;
  if (result)
  {
  }

  return result;
}

- (void)dealloc
{
  mEshObject = self->mEshObject;
  if (mEshObject)
  {
    (*(mEshObject->var0 + 1))(mEshObject, a2);
  }

  self->mEshObject = 0;
  v4.receiver = self;
  v4.super_class = ESDObject;
  [(ESDObject *)&v4 dealloc];
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mParent);

  return WeakRetained;
}

- (ESDObject)initWithEshObject:(EshObject *)object
{
  selfCopy = object;
  if (object)
  {
    v6.receiver = self;
    v6.super_class = ESDObject;
    v4 = [(ESDObject *)&v6 init];
    if (v4)
    {
      v4->mEshObject = selfCopy;
      v4->mIsChart = 0;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (ESDObject)initWithType:(unsigned __int16)type
{
  typeCopy = type;
  v5 = +[ESDObjectFactory threadLocalFactory];
  v6 = -[ESDObject initWithEshObject:](self, "initWithEshObject:", [v5 createObjectWithType:typeCopy]);

  return v6;
}

- (id)initFromReader:(OcReader *)reader type:(unsigned __int16)type version:(unsigned __int16)version
{
  versionCopy = version;
  typeCopy = type;
  v9 = +[ESDObjectFactory threadLocalFactory];
  v10 = [v9 createObjectWithType:typeCopy version:versionCopy];

  if (!v10)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Cannot create object"];
  }

  (*(reader->var0 + 16))(reader, v10);
  v11 = [(ESDObject *)self initWithEshObject:v10];

  return v11;
}

- (void)writeToWriter:(OcWriter *)writer
{
  eshObject = [(ESDObject *)self eshObject];
  v5 = *(writer->var0 + 8);

  v5(writer, eshObject);
}

- (void)eshGroup
{
  result = self->mEshObject;
  if (result)
  {
  }

  return result;
}

- (int)shapeID
{
  eshShape = [(ESDObject *)self eshShape];
  if (eshShape)
  {
    v4 = (*(*eshShape + 168))(eshShape);
  }

  else
  {
    eshGroup = [(ESDObject *)self eshGroup];
    v4 = (*(*eshGroup + 136))(eshGroup);
  }

  return EshContentProperties::getShapeID(v4);
}

- (id)initForExcelBinaryWithType:(unsigned __int16)type version:(unsigned __int16)version state:(id)state
{
  versionCopy = version;
  typeCopy = type;
  stateCopy = state;
  xlReader = [stateCopy xlReader];
  if (xlReader)
  {
    v10 = xlReader + *(*xlReader - 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = [(ESDObject *)self initFromReader:v10 type:typeCopy version:versionCopy];

  return v11;
}

- (id)initPBWithType:(unsigned __int16)type version:(unsigned __int16)version state:(id)state
{
  versionCopy = version;
  typeCopy = type;
  stateCopy = state;
  reader = [stateCopy reader];
  v10 = (*(*reader + 216))(reader);
  Object = PptObjectFactory::createObject(v10, typeCopy, versionCopy);
  if (!Object)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"An object couldn't be created."];
  }

  (*(*reader + 80))(reader, Object);
  v12 = [(ESDObject *)self initWithEshObject:Object];

  return v12;
}

@end