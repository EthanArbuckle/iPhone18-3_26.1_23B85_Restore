@interface ICTTMergeableStringUndoEditCommand
- (BOOL)addToGroup:(id)group;
- (BOOL)hasTopoIDsThatCanChange;
- (ICTTMergeableStringUndoEditCommand)init;
- (NSString)description;
- (void)applyToString:(id)string;
- (void)dealloc;
- (void)updateInsertTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d;
- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d;
@end

@implementation ICTTMergeableStringUndoEditCommand

- (ICTTMergeableStringUndoEditCommand)init
{
  v3.receiver = self;
  v3.super_class = ICTTMergeableStringUndoEditCommand;
  if ([(ICTTMergeableStringUndoEditCommand *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  deleteRanges = self->_deleteRanges;
  if (deleteRanges)
  {
    v6 = self->_deleteRanges;
    std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x216063B80](deleteRanges, 0x20C40960023A9);
  }

  insertStrings = self->_insertStrings;
  if (insertStrings)
  {
    v6 = self->_insertStrings;
    std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x216063B80](insertStrings, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = ICTTMergeableStringUndoEditCommand;
  [(ICTTMergeableStringUndoEditCommand *)&v5 dealloc];
}

- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  deleteRanges = self->_deleteRanges;
  v8 = *deleteRanges;
  v9 = deleteRanges[1];
  if (*deleteRanges != v9)
  {
    do
    {
      updateTopoIDRange(v8++, range, d, &v18);
    }

    while (v8 != v9);
    deleteRanges = self->_deleteRanges;
  }

  if (deleteRanges != &v18)
  {
    std::vector<TopoIDRange>::__assign_with_size[abi:ne200100]<TopoIDRange*,TopoIDRange*>(deleteRanges, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
  }

  v15 = range->var0.replicaID;
  var1 = range->var1;
  clock = range->var0.clock;
  v17 = var1;
  v12 = d->var0.replicaID;
  v11 = d->var1;
  v13 = d->var0.clock;
  v14 = v11;
  [(ICTTMergeableStringUndoEditCommand *)self updateInsertTopoIDRange:&v15 toNewRangeID:&v12];
  v21 = &v18;
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](&v21);
}

- (BOOL)hasTopoIDsThatCanChange
{
  deleteRanges = self->_deleteRanges;
  v4 = *deleteRanges;
  v5 = deleteRanges[1];
  if (*deleteRanges == v5)
  {
LABEL_4:
    insertStrings = self->_insertStrings;
    v9 = *insertStrings;
    v10 = insertStrings[1];
    if (*insertStrings == v10)
    {
      return 0;
    }

    else
    {
      do
      {
        v11 = *v9;
        v12 = v9[3];
        cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];

        result = v11 == cR_unserialized;
        v9 += 4;
      }

      while (v11 != cR_unserialized && v9 != v10);
    }
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      cR_unserialized2 = [MEMORY[0x277CCAD78] CR_unserialized];

      if (v6 == cR_unserialized2)
      {
        return 1;
      }

      v4 += 3;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

- (void)updateInsertTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d
{
  insertStrings = self->_insertStrings;
  v7 = *insertStrings;
  v8 = insertStrings[1];
  while (v7 != v8)
  {
    if ([*v7 isEqual:range->var0.replicaID])
    {
      v9 = *(v7 + 8);
      clock = range->var0.clock;
      if (v9 >= clock && (v9 != clock || [*v7 TTCompare:range->var0.replicaID] != -1))
      {
        v11 = range->var0.replicaID;
        v12 = range->var1 + range->var0.clock;
        v14 = v11;
        v15 = v12;
        v13 = TopoID::operator>=(v7, &v14);

        if (!v13)
        {
          objc_storeStrong(v7, d->var0.replicaID);
          *(v7 + 8) = *(v7 + 8) + d->var0.clock - range->var0.clock;
        }
      }
    }

    v7 += 32;
  }
}

- (void)applyToString:(id)string
{
  stringCopy = string;
  deleteRanges = self->_deleteRanges;
  v6 = deleteRanges[1];
  v7 = *deleteRanges;
  if (v6 != *deleteRanges)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = v8;
      v12 = v11;
      v16 = v11;
      v17 = v9;
      v18 = v10;
      if (stringCopy)
      {
        [stringCopy getSubstrings:&v19 forTopoIDRange:&v16];
      }

      else
      {
      }

      v7 += 24;
    }

    while (v7 != v6);
    __p = 0;
    v14 = 0;
    v15 = 0;
    [stringCopy getCharacterRanges:&__p forSubstrings:&v19];
    [stringCopy deleteSubstrings:&v19 withCharacterRanges:&__p];
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }
  }

  if (*(self->_insertStrings + 1) != *self->_insertStrings)
  {
    [stringCopy undeleteSubstrings:?];
  }
}

- (BOOL)addToGroup:(id)group
{
  groupCopy = group;
  deleteRanges = [(ICTTMergeableStringUndoEditCommand *)self deleteRanges];
  v6 = *deleteRanges;
  v7 = deleteRanges[1];
  while (v6 != v7)
  {
    v8 = *v6;
    v11 = v8;
    v9 = *(v6 + 16);
    v12 = *(v6 + 8);
    v13 = v9;
    if (groupCopy)
    {
      [groupCopy addSeenRange:&v11];
    }

    else
    {
    }

    v6 += 24;
  }

  return 1;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<ICTTMergeableStringUndoEditCommand %p Delete:", self];
  deleteRanges = self->_deleteRanges;
  v5 = *deleteRanges;
  v6 = deleteRanges[1];
  if (*deleteRanges != v6)
  {
    do
    {
      tTShortDescription = [*v5 TTShortDescription];
      [v3 appendFormat:@"%@:%d-%u, ", tTShortDescription, *(v5 + 8), (*(v5 + 8) + *(v5 + 16) - 1)];

      v5 += 24;
    }

    while (v5 != v6);
  }

  [v3 appendFormat:@"  Insert:"];
  insertStrings = self->_insertStrings;
  v9 = *insertStrings;
  v10 = insertStrings[1];
  if (*insertStrings != v10)
  {
    do
    {
      tTShortDescription2 = [*v9 TTShortDescription];
      [v3 appendFormat:@"%@:%d-%u=>'%@', ", tTShortDescription2, *(v9 + 8), (*(v9 + 8) + *(v9 + 16) - 1), *(v9 + 24)];

      v9 += 32;
    }

    while (v9 != v10);
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end