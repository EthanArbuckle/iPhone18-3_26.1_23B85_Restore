@interface JavaUtilLinkedHashSet
- (JavaUtilLinkedHashSet)init;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation JavaUtilLinkedHashSet

- (JavaUtilLinkedHashSet)init
{
  v3 = new_JavaUtilLinkedHashMap_init();
  JavaUtilHashSet_initWithJavaUtilHashMap_(self, v3);
  return self;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = JavaUtilLinkedHashSet;
  return [(JavaUtilHashSet *)&v6 countByEnumeratingWithState:a3 objects:a4 count:a5];
}

@end