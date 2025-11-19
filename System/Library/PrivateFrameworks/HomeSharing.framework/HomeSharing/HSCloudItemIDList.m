@interface HSCloudItemIDList
- (HSCloudItemIDList)init;
- (HSCloudItemIDList)initWithCoder:(id)a3;
- (void)addCloudItemID:(unint64_t)a3 idType:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateCloudItemIDsUsingBlock:(id)a3;
- (void)insertCloudItemID:(unint64_t)a3 idType:(int64_t)a4 atIndex:(unint64_t)a5;
@end

@implementation HSCloudItemIDList

- (void)enumerateCloudItemIDsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v5 = [(NSMutableArray *)self->_itemIDs count];
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [(NSMutableArray *)self->_itemIDs objectAtIndex:v6];
        v9 = [v8 unsignedLongLongValue];

        v10 = [(NSMutableArray *)self->_idTypes objectAtIndex:v6];
        v11 = [v10 integerValue];

        v4[2](v4, v9, v11, v6, &v13);
        if (v13)
        {
          break;
        }
      }

      while (v7 != v6++);
    }
  }
}

- (void)insertCloudItemID:(unint64_t)a3 idType:(int64_t)a4 atIndex:(unint64_t)a5
{
  itemIDs = self->_itemIDs;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableArray *)itemIDs insertObject:v9 atIndex:a5];

  idTypes = self->_idTypes;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableArray *)idTypes insertObject:v11 atIndex:a5];
}

- (void)addCloudItemID:(unint64_t)a3 idType:(int64_t)a4
{
  itemIDs = self->_itemIDs;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableArray *)itemIDs addObject:v7];

  idTypes = self->_idTypes;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableArray *)idTypes addObject:v9];
}

- (void)encodeWithCoder:(id)a3
{
  itemIDs = self->_itemIDs;
  v5 = a3;
  [v5 encodeObject:itemIDs forKey:@"HSCloudItemIDListItemIDs"];
  [v5 encodeObject:self->_idTypes forKey:@"HSCloudItemIDListIDTypes"];
}

- (HSCloudItemIDList)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HSCloudItemIDList;
  v5 = [(HSCloudItemIDList *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HSCloudItemIDListItemIDs"];
    itemIDs = v5->_itemIDs;
    v5->_itemIDs = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"HSCloudItemIDListIDTypes"];
    idTypes = v5->_idTypes;
    v5->_idTypes = v14;
  }

  return v5;
}

- (HSCloudItemIDList)init
{
  v8.receiver = self;
  v8.super_class = HSCloudItemIDList;
  v2 = [(HSCloudItemIDList *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    itemIDs = v2->_itemIDs;
    v2->_itemIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    idTypes = v2->_idTypes;
    v2->_idTypes = v5;
  }

  return v2;
}

@end