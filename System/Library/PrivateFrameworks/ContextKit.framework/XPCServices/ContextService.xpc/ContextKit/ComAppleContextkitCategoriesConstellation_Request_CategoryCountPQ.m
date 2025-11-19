@interface ComAppleContextkitCategoriesConstellation_Request_CategoryCountPQ
- (id)toArray;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_CategoryCountPQ

- (id)toArray
{
  v3 = [(OrgApacheLuceneUtilPriorityQueue *)self size];
  if (qword_100554440 != -1)
  {
    sub_1000C2D98();
  }

  v4 = [IOSObjectArray arrayWithLength:v3 type:qword_100554438];
  size = v4->super.size_;
  v6 = [(OrgApacheLuceneUtilPriorityQueue *)self pop];
  if (v6)
  {
    v7 = v6;
    v8 = size - 1;
    do
    {
      IOSObjectArray_Set(v4, v8, v7);
      v7 = [(OrgApacheLuceneUtilPriorityQueue *)self pop];
      --v8;
    }

    while (v7);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request_CategoryCountPQ;
  [(OrgApacheLuceneUtilPriorityQueue *)&v3 dealloc];
}

@end