@interface EBEscher
+ (id)readRootObjectWithType:(int)type state:(id)state;
+ (void)readChildrenOfObject:(EshObject *)object toArray:(id)array state:(id)state;
@end

@implementation EBEscher

+ (id)readRootObjectWithType:(int)type state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(ESDRoot);
  eshObject = [(ESDObject *)v7 eshObject];
  if (eshObject)
  {
  }

  else
  {
    v9 = 0;
  }

  v9[10] = type;
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 136))(xlReader, v9);
  if (v9[11])
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [self readChildrenOfObject:v9 toArray:v11 state:stateCopy];
    if ([v11 count])
    {
      [v11 count];
      v12 = [v11 objectAtIndex:0];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

+ (void)readChildrenOfObject:(EshObject *)object toArray:(id)array state:(id)state
{
  arrayCopy = array;
  stateCopy = state;
  v8 = (*(object->var0 + 5))(object);
  if (v8)
  {
    v9 = 0;
    do
    {
      if (((*(object->var0 + 8))(object, v9) & 0x1000) == 0)
      {
        v10 = (*(object->var0 + 6))(object, v9);
        v11 = (*(object->var0 + 7))(object, v9);
        v12 = [objc_alloc(objc_opt_class()) initForExcelBinaryWithType:v10 version:v11 state:stateCopy];
        if (v12)
        {
          [arrayCopy addObject:v12];
        }
      }

      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }
}

@end