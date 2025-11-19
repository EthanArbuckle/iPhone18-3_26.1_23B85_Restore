@interface OrgApacheLuceneUtilWeakIdentityMap
+ (void)initialize;
- (BOOL)containsKeyWithId:(id)a3;
- (OrgApacheLuceneUtilWeakIdentityMap)initWithJavaUtilMap:(id)a3 withBoolean:(BOOL)a4;
- (id)getWithId:(id)a3;
- (id)keyIterator;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)removeWithId:(id)a3;
- (id)valueIterator;
- (int)size;
- (void)clear;
- (void)dealloc;
- (void)reap;
@end

@implementation OrgApacheLuceneUtilWeakIdentityMap

- (OrgApacheLuceneUtilWeakIdentityMap)initWithJavaUtilMap:(id)a3 withBoolean:(BOOL)a4
{
  v7 = new_JavaLangRefReferenceQueue_init();
  JreStrongAssignAndConsume(&self->queue_, v7);
  JreStrongAssign(&self->backingStore_, a3);
  self->reapOnRead_ = a4;
  return self;
}

- (void)clear
{
  backingStore = self->backingStore_;
  if (!backingStore)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)backingStore clear];

  [(OrgApacheLuceneUtilWeakIdentityMap *)self reap];
}

- (BOOL)containsKeyWithId:(id)a3
{
  if (self->reapOnRead_)
  {
    [(OrgApacheLuceneUtilWeakIdentityMap *)self reap];
  }

  backingStore = self->backingStore_;
  if (!backingStore)
  {
    JreThrowNullPointerException();
  }

  v6 = [OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference alloc];
  sub_100077668(v6, a3, 0);
  v7 = v6;

  return [(JavaUtilMap *)backingStore containsKeyWithId:v7];
}

- (id)getWithId:(id)a3
{
  if (self->reapOnRead_)
  {
    [(OrgApacheLuceneUtilWeakIdentityMap *)self reap];
  }

  backingStore = self->backingStore_;
  if (!backingStore)
  {
    JreThrowNullPointerException();
  }

  v6 = [OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference alloc];
  sub_100077668(v6, a3, 0);
  v7 = v6;

  return [(JavaUtilMap *)backingStore getWithId:v7];
}

- (id)putWithId:(id)a3 withId:(id)a4
{
  [(OrgApacheLuceneUtilWeakIdentityMap *)self reap];
  backingStore = self->backingStore_;
  if (!backingStore)
  {
    JreThrowNullPointerException();
  }

  queue = self->queue_;
  v9 = [OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference alloc];
  sub_100077668(v9, a3, queue);
  v10 = v9;

  return [(JavaUtilMap *)backingStore putWithId:v10 withId:a4];
}

- (id)removeWithId:(id)a3
{
  [(OrgApacheLuceneUtilWeakIdentityMap *)self reap];
  backingStore = self->backingStore_;
  if (!backingStore)
  {
    JreThrowNullPointerException();
  }

  v6 = [OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference alloc];
  sub_100077668(v6, a3, 0);
  v7 = v6;

  return [(JavaUtilMap *)backingStore removeWithId:v7];
}

- (int)size
{
  backingStore = self->backingStore_;
  if (!backingStore)
  {
    JreThrowNullPointerException();
  }

  if (([(JavaUtilMap *)backingStore isEmpty]& 1) != 0)
  {
    return 0;
  }

  if (self->reapOnRead_)
  {
    [(OrgApacheLuceneUtilWeakIdentityMap *)self reap];
  }

  v5 = self->backingStore_;

  return [(JavaUtilMap *)v5 size];
}

- (id)keyIterator
{
  [(OrgApacheLuceneUtilWeakIdentityMap *)self reap];
  backingStore = self->backingStore_;
  if (!backingStore || (v4 = [(JavaUtilMap *)backingStore keySet]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 iterator];
  v6 = [OrgApacheLuceneUtilWeakIdentityMap__1 alloc];
  JreStrongAssign(&v6->val$iterator_, v5);
  JreStrongAssign(&v6->next_, 0);
  v6->nextIsSet_ = 0;

  return v6;
}

- (id)valueIterator
{
  if (self->reapOnRead_)
  {
    [(OrgApacheLuceneUtilWeakIdentityMap *)self reap];
  }

  backingStore = self->backingStore_;
  if (!backingStore || (v4 = [(JavaUtilMap *)backingStore values]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v4 iterator];
}

- (void)reap
{
  queue = self->queue_;
  if (!queue)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  while (1)
  {
    v4 = [(JavaLangRefReferenceQueue *)queue poll];
    if (!v4)
    {
      break;
    }

    v5 = v4;
    backingStore = self->backingStore_;
    if (backingStore)
    {
      [(JavaUtilMap *)backingStore removeWithId:v5];
      queue = self->queue_;
      if (queue)
      {
        continue;
      }
    }

    goto LABEL_5;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilWeakIdentityMap;
  [(OrgApacheLuceneUtilWeakIdentityMap *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilWeakIdentityMap_NULL__, [NSObject alloc]);
    atomic_store(1u, OrgApacheLuceneUtilWeakIdentityMap__initialized);
  }
}

@end