@interface HSCloudItemIDList
- (HSCloudItemIDList)init;
- (HSCloudItemIDList)initWithCoder:(id)coder;
- (void)addCloudItemID:(unint64_t)d idType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateCloudItemIDsUsingBlock:(id)block;
- (void)insertCloudItemID:(unint64_t)d idType:(int64_t)type atIndex:(unint64_t)index;
@end

@implementation HSCloudItemIDList

- (void)enumerateCloudItemIDsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
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
        unsignedLongLongValue = [v8 unsignedLongLongValue];

        v10 = [(NSMutableArray *)self->_idTypes objectAtIndex:v6];
        integerValue = [v10 integerValue];

        blockCopy[2](blockCopy, unsignedLongLongValue, integerValue, v6, &v13);
        if (v13)
        {
          break;
        }
      }

      while (v7 != v6++);
    }
  }
}

- (void)insertCloudItemID:(unint64_t)d idType:(int64_t)type atIndex:(unint64_t)index
{
  itemIDs = self->_itemIDs;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  [(NSMutableArray *)itemIDs insertObject:v9 atIndex:index];

  idTypes = self->_idTypes;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(NSMutableArray *)idTypes insertObject:v11 atIndex:index];
}

- (void)addCloudItemID:(unint64_t)d idType:(int64_t)type
{
  itemIDs = self->_itemIDs;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  [(NSMutableArray *)itemIDs addObject:v7];

  idTypes = self->_idTypes;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(NSMutableArray *)idTypes addObject:v9];
}

- (void)encodeWithCoder:(id)coder
{
  itemIDs = self->_itemIDs;
  coderCopy = coder;
  [coderCopy encodeObject:itemIDs forKey:@"HSCloudItemIDListItemIDs"];
  [coderCopy encodeObject:self->_idTypes forKey:@"HSCloudItemIDListIDTypes"];
}

- (HSCloudItemIDList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HSCloudItemIDList;
  v5 = [(HSCloudItemIDList *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HSCloudItemIDListItemIDs"];
    itemIDs = v5->_itemIDs;
    v5->_itemIDs = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"HSCloudItemIDListIDTypes"];
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