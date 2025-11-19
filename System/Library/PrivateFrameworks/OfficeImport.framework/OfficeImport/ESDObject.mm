@interface ESDObject
- (ESDObject)initWithEshObject:(EshObject *)a3;
- (ESDObject)initWithType:(unsigned __int16)a3;
- (id)initForExcelBinaryWithType:(unsigned __int16)a3 version:(unsigned __int16)a4 state:(id)a5;
- (id)initFromReader:(OcReader *)a3 type:(unsigned __int16)a4 version:(unsigned __int16)a5;
- (id)initPBWithType:(unsigned __int16)a3 version:(unsigned __int16)a4 state:(id)a5;
- (id)parent;
- (int)shapeID;
- (void)dealloc;
- (void)eshGroup;
- (void)eshShape;
- (void)writeToWriter:(OcWriter *)a3;
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

- (ESDObject)initWithEshObject:(EshObject *)a3
{
  v3 = a3;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = ESDObject;
    v4 = [(ESDObject *)&v6 init];
    if (v4)
    {
      v4->mEshObject = v3;
      v4->mIsChart = 0;
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

- (ESDObject)initWithType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = +[ESDObjectFactory threadLocalFactory];
  v6 = -[ESDObject initWithEshObject:](self, "initWithEshObject:", [v5 createObjectWithType:v3]);

  return v6;
}

- (id)initFromReader:(OcReader *)a3 type:(unsigned __int16)a4 version:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v9 = +[ESDObjectFactory threadLocalFactory];
  v10 = [v9 createObjectWithType:v6 version:v5];

  if (!v10)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Cannot create object"];
  }

  (*(a3->var0 + 16))(a3, v10);
  v11 = [(ESDObject *)self initWithEshObject:v10];

  return v11;
}

- (void)writeToWriter:(OcWriter *)a3
{
  v4 = [(ESDObject *)self eshObject];
  v5 = *(a3->var0 + 8);

  v5(a3, v4);
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
  v3 = [(ESDObject *)self eshShape];
  if (v3)
  {
    v4 = (*(*v3 + 168))(v3);
  }

  else
  {
    v5 = [(ESDObject *)self eshGroup];
    v4 = (*(*v5 + 136))(v5);
  }

  return EshContentProperties::getShapeID(v4);
}

- (id)initForExcelBinaryWithType:(unsigned __int16)a3 version:(unsigned __int16)a4 state:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [v8 xlReader];
  if (v9)
  {
    v10 = v9 + *(*v9 - 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = [(ESDObject *)self initFromReader:v10 type:v6 version:v5];

  return v11;
}

- (id)initPBWithType:(unsigned __int16)a3 version:(unsigned __int16)a4 state:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [v8 reader];
  v10 = (*(*v9 + 216))(v9);
  Object = PptObjectFactory::createObject(v10, v6, v5);
  if (!Object)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"An object couldn't be created."];
  }

  (*(*v9 + 80))(v9, Object);
  v12 = [(ESDObject *)self initWithEshObject:Object];

  return v12;
}

@end