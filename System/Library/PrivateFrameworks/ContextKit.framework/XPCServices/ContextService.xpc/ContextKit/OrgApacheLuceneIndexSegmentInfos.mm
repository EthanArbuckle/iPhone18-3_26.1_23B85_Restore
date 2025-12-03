@interface OrgApacheLuceneIndexSegmentInfos
+ (id)getInfoStream;
+ (void)initialize;
- (BOOL)containsWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info;
- (NSString)description;
- (OrgApacheLuceneIndexSegmentInfos)init;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createBackupSegmentInfos;
- (id)filesWithBoolean:(BOOL)boolean;
- (id)getId;
- (id)iterator;
- (int)indexOfWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info;
- (int)size;
- (int)totalMaxDoc;
- (int64_t)getNextPendingGeneration;
- (void)addAllWithJavaLangIterable:(id)iterable;
- (void)addWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info;
- (void)applyMergeChangesWithOrgApacheLuceneIndexMergePolicy_OneMerge:(id)merge withBoolean:(BOOL)boolean;
- (void)clear;
- (void)commitWithOrgApacheLuceneStoreDirectory:(id)directory;
- (void)dealloc;
- (void)removeWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info;
- (void)replaceWithOrgApacheLuceneIndexSegmentInfos:(id)infos;
- (void)rollbackSegmentInfosWithJavaUtilList:(id)list;
- (void)setUserDataWithJavaUtilMap:(id)map;
- (void)updateGenerationVersionAndCounterWithOrgApacheLuceneIndexSegmentInfos:(id)infos;
- (void)updateGenerationWithOrgApacheLuceneIndexSegmentInfos:(id)infos;
@end

@implementation OrgApacheLuceneIndexSegmentInfos

- (OrgApacheLuceneIndexSegmentInfos)init
{
  v3 = JavaUtilCollections_emptyMap();
  JreStrongAssign(&self->userData_, v3);
  v4 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->segments_, v4);
  return self;
}

- (int64_t)getNextPendingGeneration
{
  generation = self->generation_;
  v3 = __CFADD__(generation, 1);
  v4 = generation + 1;
  if (v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (id)getId
{
  result = self->id__;
  if (result)
  {
    return [result clone];
  }

  return result;
}

- (id)clone
{
  v14.receiver = self;
  v14.super_class = OrgApacheLuceneIndexSegmentInfos;
  clone = [(OrgApacheLuceneIndexSegmentInfos *)&v14 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = new_JavaUtilArrayList_initWithInt_([(OrgApacheLuceneIndexSegmentInfos *)self size]);
  JreStrongAssignAndConsume(clone + 7, v4);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(OrgApacheLuceneIndexSegmentInfos *)self countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(self);
        }

        [clone addWithOrgApacheLuceneIndexSegmentCommitInfo:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "clone")}];
      }

      v5 = [(OrgApacheLuceneIndexSegmentInfos *)self countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = new_JavaUtilHashMap_initWithJavaUtilMap_(self->userData_);
  JreStrongAssignAndConsume(clone + 3, v8);
  return clone;
}

+ (id)getInfoStream
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  return qword_100553E40;
}

- (void)updateGenerationWithOrgApacheLuceneIndexSegmentInfos:(id)infos
{
  if (!infos)
  {
    JreThrowNullPointerException();
  }

  self->lastGeneration_ = *(infos + 6);
  self->generation_ = *(infos + 5);
}

- (void)updateGenerationVersionAndCounterWithOrgApacheLuceneIndexSegmentInfos:(id)infos
{
  [(OrgApacheLuceneIndexSegmentInfos *)self updateGenerationWithOrgApacheLuceneIndexSegmentInfos:?];
  if (!infos)
  {
    JreThrowNullPointerException();
  }

  self->version__ = *(infos + 2);
  self->counter_ = *(infos + 2);
}

- (id)filesWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  v5 = new_JavaUtilHashSet_init();
  if (booleanCopy)
  {
    getSegmentsFileName = [(OrgApacheLuceneIndexSegmentInfos *)self getSegmentsFileName];
    if (getSegmentsFileName)
    {
      [(JavaUtilHashSet *)v5 addWithId:getSegmentsFileName];
    }
  }

  v7 = [(OrgApacheLuceneIndexSegmentInfos *)self size];
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = [(OrgApacheLuceneIndexSegmentInfos *)self infoWithInt:v9];
      if (!v10)
      {
        JreThrowNullPointerException();
      }

      -[JavaUtilAbstractCollection addAllWithJavaUtilCollection:](v5, "addAllWithJavaUtilCollection:", [v10 files]);
      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  return v5;
}

- (void)commitWithOrgApacheLuceneStoreDirectory:(id)directory
{
  sub_1000188F4(self, directory);

  sub_1000189E0(self, directory);
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_init();
  v4 = [(JavaLangStringBuilder *)v3 appendWithNSString:[(OrgApacheLuceneIndexSegmentInfos *)self getSegmentsFileName]];
  if (!v4)
  {
    goto LABEL_11;
  }

  [v4 appendWithNSString:@": "];
  v5 = [(OrgApacheLuceneIndexSegmentInfos *)self size];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      if (v7)
      {
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
      }

      v8 = [(OrgApacheLuceneIndexSegmentInfos *)self infoWithInt:v7];
      if (!v8)
      {
        break;
      }

      -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v8 toStringWithInt:0]);
      v7 = (v7 + 1);
      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

LABEL_8:

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)setUserDataWithJavaUtilMap:(id)map
{
  if (map)
  {
    p_userData = &self->userData_;
    mapCopy = map;
  }

  else
  {
    mapCopy = JavaUtilCollections_emptyMap();
    p_userData = &self->userData_;
  }

  JreStrongAssign(p_userData, mapCopy);

  [(OrgApacheLuceneIndexSegmentInfos *)self changed];
}

- (void)replaceWithOrgApacheLuceneIndexSegmentInfos:(id)infos
{
  if (!infos)
  {
    JreThrowNullPointerException();
  }

  -[OrgApacheLuceneIndexSegmentInfos rollbackSegmentInfosWithJavaUtilList:](self, "rollbackSegmentInfosWithJavaUtilList:", [infos asList]);
  self->lastGeneration_ = *(infos + 6);
}

- (int)totalMaxDoc
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(OrgApacheLuceneIndexSegmentInfos *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v12;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(self);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      if (!v8 || (v9 = *(v8 + 8)) == 0)
      {
        JreThrowNullPointerException();
      }

      v5 += [v9 maxDoc];
    }

    v4 = [(OrgApacheLuceneIndexSegmentInfos *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v4);
  return v5;
}

- (void)applyMergeChangesWithOrgApacheLuceneIndexMergePolicy_OneMerge:(id)merge withBoolean:(BOOL)boolean
{
  if (!merge)
  {
    goto LABEL_17;
  }

  booleanCopy = boolean;
  v7 = new_JavaUtilHashSet_initWithJavaUtilCollection_(*(merge + 8));
  segments = self->segments_;
  if (!segments)
  {
    goto LABEL_17;
  }

  v9 = [(JavaUtilList *)segments size];
  if (v9 < 1)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [(JavaUtilList *)self->segments_ getWithInt:v13];
      if ([(JavaUtilHashSet *)v7 containsWithId:v14])
      {
        if (((v11 | booleanCopy) & 1) == 0)
        {
          [(JavaUtilList *)self->segments_ setWithInt:v13 withId:*(merge + 1)];
          v12 = (v12 + 1);
          v11 = 1;
        }
      }

      else
      {
        [(JavaUtilList *)self->segments_ setWithInt:v12 withId:v14];
        v12 = (v12 + 1);
      }

      v13 = (v13 + 1);
    }

    while (v10 != v13);
  }

  v15 = [(JavaUtilList *)self->segments_ subListWithInt:v12 withInt:[(JavaUtilList *)self->segments_ size]];
  if (!v15)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  [v15 clear];
  if (((v11 | booleanCopy) & 1) == 0)
  {
    v16 = self->segments_;
    v17 = *(merge + 1);

    [(JavaUtilList *)v16 addWithInt:0 withId:v17];
  }
}

- (id)createBackupSegmentInfos
{
  v3 = new_JavaUtilArrayList_initWithInt_([(OrgApacheLuceneIndexSegmentInfos *)self size]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(OrgApacheLuceneIndexSegmentInfos *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(self);
        }

        -[JavaUtilArrayList addWithId:](v3, "addWithId:", [*(*(&v9 + 1) + 8 * v7++) clone]);
      }

      while (v5 != v7);
      v5 = [(OrgApacheLuceneIndexSegmentInfos *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)rollbackSegmentInfosWithJavaUtilList:(id)list
{
  [(OrgApacheLuceneIndexSegmentInfos *)self clear];

  [(OrgApacheLuceneIndexSegmentInfos *)self addAllWithJavaLangIterable:list];
}

- (id)iterator
{
  asList = [(OrgApacheLuceneIndexSegmentInfos *)self asList];
  if (!asList)
  {
    JreThrowNullPointerException();
  }

  return [asList iterator];
}

- (int)size
{
  segments = self->segments_;
  if (!segments)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)segments size];
}

- (void)addWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info
{
  segments = self->segments_;
  if (!segments)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)segments addWithId:info];
}

- (void)addAllWithJavaLangIterable:(id)iterable
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (!iterable)
  {
    JreThrowNullPointerException();
  }

  v5 = [iterable countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(iterable);
        }

        [(OrgApacheLuceneIndexSegmentInfos *)self addWithOrgApacheLuceneIndexSegmentCommitInfo:*(*(&v9 + 1) + 8 * i), v9];
      }

      v6 = [iterable countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)clear
{
  segments = self->segments_;
  if (!segments)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)segments clear];
}

- (void)removeWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info
{
  segments = self->segments_;
  if (!segments)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)segments removeWithId:info];
}

- (BOOL)containsWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info
{
  segments = self->segments_;
  if (!segments)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)segments containsWithId:info];
}

- (int)indexOfWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info
{
  segments = self->segments_;
  if (!segments)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)segments indexOfWithId:info];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentInfos;
  [(OrgApacheLuceneIndexSegmentInfos *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneIndexSegmentInfos *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssign(&qword_100553E40, 0);
    v4 = @"Lucene3x";
    v2 = [IOSObjectArray arrayWithObjects:&v4 count:1 type:NSString_class_()];
    v3 = JavaUtilArrays_asListWithNSObjectArray_(v2);
    JreStrongAssign(&qword_100553E48, v3);
    atomic_store(1u, &OrgApacheLuceneIndexSegmentInfos__initialized);
  }
}

@end