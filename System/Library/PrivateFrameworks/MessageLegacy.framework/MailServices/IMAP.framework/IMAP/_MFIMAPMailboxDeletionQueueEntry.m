@interface _MFIMAPMailboxDeletionQueueEntry
- (void)dealloc;
@end

@implementation _MFIMAPMailboxDeletionQueueEntry

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFIMAPMailboxDeletionQueueEntry;
  [(_MFIMAPMailboxDeletionQueueEntry *)&v3 dealloc];
}

@end