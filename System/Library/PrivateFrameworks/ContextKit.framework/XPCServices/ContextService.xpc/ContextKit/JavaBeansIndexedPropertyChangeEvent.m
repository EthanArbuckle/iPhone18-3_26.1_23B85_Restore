@interface JavaBeansIndexedPropertyChangeEvent
- (JavaBeansIndexedPropertyChangeEvent)initWithId:(id)a3 withNSString:(id)a4 withId:(id)a5 withId:(id)a6 withInt:(int)a7;
@end

@implementation JavaBeansIndexedPropertyChangeEvent

- (JavaBeansIndexedPropertyChangeEvent)initWithId:(id)a3 withNSString:(id)a4 withId:(id)a5 withId:(id)a6 withInt:(int)a7
{
  JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(&self->super.super.super.isa, a3, a4, a5, a6);
  self->index_ = a7;
  return self;
}

@end