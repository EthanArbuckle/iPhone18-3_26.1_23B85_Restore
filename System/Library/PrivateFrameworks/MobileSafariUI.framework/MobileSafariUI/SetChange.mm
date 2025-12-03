@interface SetChange
+ (id)emptyChange;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChange:(id)change;
- (SetChange)initWithInsertedIndexes:(id)indexes deletedIndexes:(id)deletedIndexes modifiedIndexes:(id)modifiedIndexes moves:(id)moves;
- (id)description;
- (id)initAsDeleteAllWithIndexes:(id)indexes;
- (id)initAsInsertAllWithIndexes:(id)indexes;
- (unint64_t)hash;
- (void)_appendDescriptionForIndexSet:(uint64_t)set named:(void *)named toDescription:;
@end

@implementation SetChange

- (id)initAsInsertAllWithIndexes:(id)indexes
{
  indexesCopy = indexes;
  v16.receiver = self;
  v16.super_class = SetChange;
  v6 = [(SetChange *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_insertedIndexes, indexes);
    indexSet = [MEMORY[0x277CCAA78] indexSet];
    deletedIndexes = v7->_deletedIndexes;
    v7->_deletedIndexes = indexSet;

    indexSet2 = [MEMORY[0x277CCAA78] indexSet];
    modifiedIndexes = v7->_modifiedIndexes;
    v7->_modifiedIndexes = indexSet2;

    v12 = [MEMORY[0x277CBEB98] set];
    moves = v7->_moves;
    v7->_moves = v12;

    v7->_empty = [indexesCopy count] == 0;
    v7->_insertAll = [indexesCopy count] != 0;
    v14 = v7;
  }

  return v7;
}

- (id)initAsDeleteAllWithIndexes:(id)indexes
{
  indexesCopy = indexes;
  v15.receiver = self;
  v15.super_class = SetChange;
  v6 = [(SetChange *)&v15 init];
  if (v6)
  {
    indexSet = [MEMORY[0x277CCAA78] indexSet];
    insertedIndexes = v6->_insertedIndexes;
    v6->_insertedIndexes = indexSet;

    objc_storeStrong(&v6->_deletedIndexes, indexes);
    indexSet2 = [MEMORY[0x277CCAA78] indexSet];
    modifiedIndexes = v6->_modifiedIndexes;
    v6->_modifiedIndexes = indexSet2;

    v11 = [MEMORY[0x277CBEB98] set];
    moves = v6->_moves;
    v6->_moves = v11;

    v6->_empty = [indexesCopy count] == 0;
    v6->_singleDelete = [indexesCopy count] == 1;
    v6->_deleteAll = [indexesCopy count] != 0;
    v13 = v6;
  }

  return v6;
}

- (SetChange)initWithInsertedIndexes:(id)indexes deletedIndexes:(id)deletedIndexes modifiedIndexes:(id)modifiedIndexes moves:(id)moves
{
  indexesCopy = indexes;
  deletedIndexesCopy = deletedIndexes;
  modifiedIndexesCopy = modifiedIndexes;
  movesCopy = moves;
  v21.receiver = self;
  v21.super_class = SetChange;
  v15 = [(SetChange *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_insertedIndexes, indexes);
    objc_storeStrong(&v16->_deletedIndexes, deletedIndexes);
    objc_storeStrong(&v16->_modifiedIndexes, modifiedIndexes);
    objc_storeStrong(&v16->_moves, moves);
    v17 = ![indexesCopy count] && !objc_msgSend(deletedIndexesCopy, "count") && !objc_msgSend(modifiedIndexesCopy, "count") && objc_msgSend(movesCopy, "count") == 0;
    v16->_empty = v17;
    v18 = [(NSIndexSet *)v16->_deletedIndexes count]== 1 && ![(NSIndexSet *)v16->_insertedIndexes count]&& ![(NSIndexSet *)v16->_modifiedIndexes count]&& [(NSSet *)v16->_moves count]== 0;
    v16->_singleDelete = v18;
    v19 = v16;
  }

  return v16;
}

+ (id)emptyChange
{
  if (emptyChange_onceToken != -1)
  {
    +[SetChange emptyChange];
  }

  v3 = emptyChange_instance;

  return v3;
}

void __24__SetChange_emptyChange__block_invoke()
{
  v0 = [SetChange alloc];
  v6 = [MEMORY[0x277CCAA78] indexSet];
  v1 = [MEMORY[0x277CCAA78] indexSet];
  v2 = [MEMORY[0x277CCAA78] indexSet];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(SetChange *)v0 initWithInsertedIndexes:v6 deletedIndexes:v1 modifiedIndexes:v2 moves:v3];
  v5 = emptyChange_instance;
  emptyChange_instance = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SetChange *)self isEqualToChange:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = changeCopy && [(NSIndexSet *)self->_insertedIndexes isEqualToIndexSet:changeCopy->_insertedIndexes]&& [(NSIndexSet *)self->_deletedIndexes isEqualToIndexSet:v5->_deletedIndexes]&& [(NSIndexSet *)self->_modifiedIndexes isEqualToIndexSet:v5->_modifiedIndexes]&& [(NSSet *)self->_moves isEqualToSet:v5->_moves];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSIndexSet *)self->_insertedIndexes hash];
  v4 = [(NSIndexSet *)self->_deletedIndexes hash]^ v3;
  v5 = [(NSIndexSet *)self->_modifiedIndexes hash];
  return v4 ^ v5 ^ [(NSSet *)self->_moves hash];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  if (self->_empty)
  {
    [v3 appendString:@"; _empty=YES"];
  }

  if (self->_singleDelete)
  {
    [v4 appendString:@"; _singleDelete=YES"];
  }

  if (self->_deleteAll)
  {
    [v4 appendString:@"; _deleteAll=YES"];
  }

  if (self->_insertAll)
  {
    [v4 appendString:@"; _insertAll=YES"];
  }

  if ([(NSIndexSet *)self->_insertedIndexes count])
  {
    [(SetChange *)self _appendDescriptionForIndexSet:@"_insertedIndexes" named:v4 toDescription:?];
  }

  if ([(NSIndexSet *)self->_deletedIndexes count])
  {
    [(SetChange *)self _appendDescriptionForIndexSet:@"_deletedIndexes" named:v4 toDescription:?];
  }

  if ([(NSIndexSet *)self->_modifiedIndexes count])
  {
    [(SetChange *)self _appendDescriptionForIndexSet:@"_modifiedIndexes" named:v4 toDescription:?];
  }

  if ([(NSSet *)self->_moves count])
  {
    [v4 appendFormat:@";\n_moves=%@", self->_moves];
  }

  [v4 appendString:@">"];

  return v4;
}

unint64_t __63__SetChange__appendDescriptionForIndexSet_named_toDescription___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendFormat:@" %ld", a2];
  result = [*(a1 + 40) count];
  if (a2 + 1 < result)
  {
    v5 = *(a1 + 32);

    return [v5 appendString:{@", "}];
  }

  return result;
}

- (void)_appendDescriptionForIndexSet:(uint64_t)set named:(void *)named toDescription:
{
  v7 = a2;
  namedCopy = named;
  v9 = namedCopy;
  if (self)
  {
    objc_msgSend(namedCopy, "appendFormat:", @";\n%@=("), set;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__SetChange__appendDescriptionForIndexSet_named_toDescription___block_invoke;
    v11[3] = &unk_2781DC410;
    v10 = v9;
    v12 = v10;
    v13 = v7;
    [v13 enumerateIndexesUsingBlock:v11];
    [v10 appendString:@""]);
  }
}

@end