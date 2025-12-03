@interface JavaUtilLinkedHashSet
- (JavaUtilLinkedHashSet)init;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation JavaUtilLinkedHashSet

- (JavaUtilLinkedHashSet)init
{
  v3 = new_JavaUtilLinkedHashMap_init();
  JavaUtilHashSet_initWithJavaUtilHashMap_(self, v3);
  return self;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v6.receiver = self;
  v6.super_class = JavaUtilLinkedHashSet;
  return [(JavaUtilHashSet *)&v6 countByEnumeratingWithState:state objects:objects count:count];
}

@end