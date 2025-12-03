@interface LocationSectionManager
- (void)setTrashObserver:(id)observer;
- (void)setTrashSubscriber:(id)subscriber;
@end

@implementation LocationSectionManager

- (void)setTrashObserver:(id)observer
{
  swift_beginAccess();
  trashObserver = self->trashObserver;
  self->trashObserver = observer;
  observerCopy = observer;
}

- (void)setTrashSubscriber:(id)subscriber
{
  swift_beginAccess();
  trashSubscriber = self->trashSubscriber;
  self->trashSubscriber = subscriber;
  subscriberCopy = subscriber;
}

@end