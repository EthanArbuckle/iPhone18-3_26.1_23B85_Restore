@interface LocationSectionManager
- (void)setTrashObserver:(id)a3;
- (void)setTrashSubscriber:(id)a3;
@end

@implementation LocationSectionManager

- (void)setTrashObserver:(id)a3
{
  swift_beginAccess();
  trashObserver = self->trashObserver;
  self->trashObserver = a3;
  v6 = a3;
}

- (void)setTrashSubscriber:(id)a3
{
  swift_beginAccess();
  trashSubscriber = self->trashSubscriber;
  self->trashSubscriber = a3;
  v6 = a3;
}

@end