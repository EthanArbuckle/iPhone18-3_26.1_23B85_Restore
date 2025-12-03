@interface CKDiscretionaryImmediateScheduler
+ (id)scheduleOperationID:(id)d group:(id)group bundleID:(id)iD requiresPastBuddy:(BOOL)buddy options:(id)options state:(unint64_t)state queue:(id)queue startHandler:(id)self0 suspendHandler:(id)self1;
@end

@implementation CKDiscretionaryImmediateScheduler

+ (id)scheduleOperationID:(id)d group:(id)group bundleID:(id)iD requiresPastBuddy:(BOOL)buddy options:(id)options state:(unint64_t)state queue:(id)queue startHandler:(id)self0 suspendHandler:(id)self1
{
  handlerCopy = handler;
  queueCopy = queue;
  v14 = objc_alloc_init(CKDiscretionarySchedulerTask);
  [(CKDiscretionarySchedulerTask *)v14 setState:state];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000055B4;
  block[3] = &unk_1000107F0;
  v18 = handlerCopy;
  v15 = handlerCopy;
  dispatch_async(queueCopy, block);

  return v14;
}

@end