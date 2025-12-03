@interface JavaBeansIndexedPropertyChangeEvent
- (JavaBeansIndexedPropertyChangeEvent)initWithId:(id)id withNSString:(id)string withId:(id)withId withId:(id)a6 withInt:(int)int;
@end

@implementation JavaBeansIndexedPropertyChangeEvent

- (JavaBeansIndexedPropertyChangeEvent)initWithId:(id)id withNSString:(id)string withId:(id)withId withId:(id)a6 withInt:(int)int
{
  JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(&self->super.super.super.isa, id, string, withId, a6);
  self->index_ = int;
  return self;
}

@end