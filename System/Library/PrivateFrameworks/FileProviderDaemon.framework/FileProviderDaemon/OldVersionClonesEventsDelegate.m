@interface OldVersionClonesEventsDelegate
- (void)subscription:(id)a3 handleEventAtPath:(id)a4 targetItemID:(unint64_t)a5 docID:(unsigned int)a6 eventID:(unint64_t)a7 flags:(unsigned int)a8;
@end

@implementation OldVersionClonesEventsDelegate

- (void)subscription:(id)a3 handleEventAtPath:(id)a4 targetItemID:(unint64_t)a5 docID:(unsigned int)a6 eventID:(unint64_t)a7 flags:(unsigned int)a8
{
  v8 = a8;
  v10 = a3;

  sub_1CF340700(a5, v8);
}

@end