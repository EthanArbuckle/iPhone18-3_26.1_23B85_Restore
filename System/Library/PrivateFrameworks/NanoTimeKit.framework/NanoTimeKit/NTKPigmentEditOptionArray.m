@interface NTKPigmentEditOptionArray
+ (NTKPigmentEditOptionArray)arrayWithEquality:(unint64_t)a3;
+ (id)array;
- (BOOL)isEqual:(id)a3;
- (NTKPigmentEditOptionArray)initWithEquality:(unint64_t)a3;
- (id)pigmentForPigment:(id)a3;
- (unint64_t)indexOfPigment:(id)a3;
- (void)addPigment:(id)a3;
- (void)insertPigment:(id)a3 atIndex:(unint64_t)a4;
- (void)removePigment:(id)a3;
@end

@implementation NTKPigmentEditOptionArray

- (NTKPigmentEditOptionArray)initWithEquality:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = NTKPigmentEditOptionArray;
  v4 = [(NTKPigmentEditOptionArray *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_equality = a3;
    v6 = objc_opt_new();
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

+ (id)array
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (NTKPigmentEditOptionArray)arrayWithEquality:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithEquality:a3];

  return v3;
}

- (unint64_t)indexOfPigment:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  backing = self->_backing;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__NTKPigmentEditOptionArray_indexOfPigment___block_invoke;
  v9[3] = &unk_2787866B0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)backing enumerateObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __44__NTKPigmentEditOptionArray_indexOfPigment___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 16);
  if (v8 == 1)
  {
    v12 = v7;
    v10 = [*(a1 + 40) isEqual:v7];
    v7 = v12;
    if (v10)
    {
LABEL_4:
      *(*(*(a1 + 48) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  else if (!v8)
  {
    v11 = v7;
    v9 = [*(a1 + 40) isEqualIgnoringFraction:v7];
    v7 = v11;
    if (v9)
    {
      goto LABEL_4;
    }
  }
}

- (id)pigmentForPigment:(id)a3
{
  v4 = a3;
  v5 = [(NTKPigmentEditOptionArray *)self indexOfPigment:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(NTKPigmentEditOptionArray *)self pigmentAtIndex:v5];
  }

  v7 = v6;

  return v7;
}

- (void)addPigment:(id)a3
{
  v6 = a3;
  v4 = [(NTKPigmentEditOptionArray *)self indexOfPigment:?];
  backing = self->_backing;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)backing addObject:v6];
  }

  else
  {
    [(NSMutableArray *)backing replaceObjectAtIndex:v4 withObject:v6];
  }
}

- (void)insertPigment:(id)a3 atIndex:(unint64_t)a4
{
  v8 = a3;
  v6 = [(NTKPigmentEditOptionArray *)self indexOfPigment:?];
  backing = self->_backing;
  if (v6 == a4)
  {
    [(NSMutableArray *)backing replaceObjectAtIndex:a4 withObject:v8];
  }

  else
  {
    [(NSMutableArray *)backing removeObjectAtIndex:?];
    [(NSMutableArray *)self->_backing insertObject:v8 atIndex:a4];
  }
}

- (void)removePigment:(id)a3
{
  v4 = [(NTKPigmentEditOptionArray *)self indexOfPigment:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    backing = self->_backing;

    [(NSMutableArray *)backing removeObjectAtIndex:v5];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NTKPigmentEditOptionArray equality](self, "equality"), v5 == [v4 equality]) && (v6 = -[NTKPigmentEditOptionArray count](self, "count"), v6 == objc_msgSend(v4, "count")))
  {
    if ([(NTKPigmentEditOptionArray *)self count])
    {
      for (i = 0; i < [(NTKPigmentEditOptionArray *)self count]; ++i)
      {
        v8 = [(NTKPigmentEditOptionArray *)self pigmentAtIndex:i];
        v9 = [v4 pigmentAtIndex:i];
        equality = self->_equality;
        if (equality == 1)
        {
          if (![v8 isEqual:v9])
          {
            goto LABEL_13;
          }
        }

        else if (!equality && ([v8 isEqualIgnoringFraction:v9] & 1) == 0)
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  return v11;
}

@end