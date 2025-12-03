@interface OldVersionClonesEventsDelegate
- (void)subscription:(id)subscription handleEventAtPath:(id)path targetItemID:(unint64_t)d docID:(unsigned int)iD eventID:(unint64_t)eventID flags:(unsigned int)flags;
@end

@implementation OldVersionClonesEventsDelegate

- (void)subscription:(id)subscription handleEventAtPath:(id)path targetItemID:(unint64_t)d docID:(unsigned int)iD eventID:(unint64_t)eventID flags:(unsigned int)flags
{
  flagsCopy = flags;
  subscriptionCopy = subscription;

  sub_1CF340700(d, flagsCopy);
}

@end