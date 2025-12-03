@interface IOSReference
+ (id)getReferent:(id)referent;
+ (void)clearReferent:(id)referent;
+ (void)handleMemoryWarning:(id)warning;
+ (void)initReferent:(id)referent;
+ (void)initialize;
@end

@implementation IOSReference

+ (void)initReferent:(id)referent
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100177E84;
  v3[3] = &unk_1003FFC90;
  v3[4] = referent;
  pthread_mutex_lock(&stru_100554AE8);
  sub_100177E84(v3);
  pthread_mutex_unlock(&stru_100554AE8);
}

+ (id)getReferent:(id)referent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1001781D4;
  v10 = sub_1001781E4;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001781F0;
  v5[3] = &unk_1003FFCB8;
  v5[4] = referent;
  v5[5] = &v6;
  pthread_mutex_lock(&stru_100554AE8);
  sub_1001781F0(v5);
  pthread_mutex_unlock(&stru_100554AE8);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (void)clearReferent:(id)referent
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001782D8;
  v3[3] = &unk_1003FFC90;
  v3[4] = referent;
  pthread_mutex_lock(&stru_100554AE8);
  sub_1001782D8(v3);
  pthread_mutex_unlock(&stru_100554AE8);
}

+ (void)handleMemoryWarning:(id)warning
{
  pthread_mutex_lock(&stru_100554AE8);
  byte_100554AD8 = 1;

  qword_100554AE0 = objc_alloc_init(NSMutableSet);
  byte_100554AD8 = 0;

  pthread_mutex_unlock(&stru_100554AE8);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2.__sig = 0;
    *v2.__opaque = 0;
    pthread_mutexattr_init(&v2);
    pthread_mutexattr_settype(&v2, 2);
    pthread_mutex_init(&stru_100554AE8, &v2);
    pthread_mutexattr_destroy(&v2);
    qword_100554B28 = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
    qword_100554B30 = objc_alloc_init(NSMutableSet);
    qword_100554B38 = objc_alloc_init(NSMutableDictionary);
    qword_100554AE0 = objc_alloc_init(NSMutableSet);
  }
}

@end