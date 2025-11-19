@interface PKCatalogGroup
- (BOOL)isEqualToGroup:(id)a3;
- (NSMutableArray)uniqueIDs;
- (PKCatalogGroup)init;
- (PKCatalogGroup)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCatalogGroup

- (NSMutableArray)uniqueIDs
{
  uniqueIDs = self->_uniqueIDs;
  if (!uniqueIDs)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_uniqueIDs;
    self->_uniqueIDs = v4;

    uniqueIDs = self->_uniqueIDs;
  }

  return uniqueIDs;
}

- (PKCatalogGroup)init
{
  v3.receiver = self;
  v3.super_class = PKCatalogGroup;
  result = [(PKCatalogGroup *)&v3 init];
  if (result)
  {
    result->_isUbiquitous = 1;
  }

  return result;
}

- (BOOL)isEqualToGroup:(id)a3
{
  v4 = a3;
  groupID = self->_groupID;
  v6 = *(v4 + 2);
  if (groupID)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (groupID != v6)
    {
      goto LABEL_16;
    }
  }

  else if (([(NSNumber *)groupID isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

  if (!-[NSMutableArray count](self->_uniqueIDs, "count") && ![*(v4 + 3) count])
  {
    goto LABEL_14;
  }

  uniqueIDs = self->_uniqueIDs;
  v9 = *(v4 + 3);
  if (!uniqueIDs || !v9)
  {
    if (uniqueIDs == v9)
    {
      goto LABEL_14;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (([(NSMutableArray *)uniqueIDs isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v10 = 1;
LABEL_17:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCatalogGroup allocWithZone:](PKCatalogGroup init];
  v6 = [(NSNumber *)self->_groupID copyWithZone:a3];
  groupID = v5->_groupID;
  v5->_groupID = v6;

  v8 = [(NSMutableArray *)self->_uniqueIDs mutableCopyWithZone:a3];
  uniqueIDs = v5->_uniqueIDs;
  v5->_uniqueIDs = v8;

  v5->_isUbiquitous = self->_isUbiquitous;
  return v5;
}

- (PKCatalogGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKCatalogGroup;
  v5 = [(PKCatalogGroup *)&v16 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v7;

    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"uniqueIDs"];
    uniqueIDs = v5->_uniqueIDs;
    v5->_uniqueIDs = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isUbiquitous"];
    v5->_isUbiquitous = [v14 BOOLValue];

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  groupID = self->_groupID;
  v5 = a3;
  [v5 encodeObject:groupID forKey:@"groupID"];
  [v5 encodeObject:self->_uniqueIDs forKey:@"uniqueIDs"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKCatalogGroup isUbiquitous](self, "isUbiquitous")}];
  [v5 encodeObject:v6 forKey:@"isUbiquitous"];
}

@end