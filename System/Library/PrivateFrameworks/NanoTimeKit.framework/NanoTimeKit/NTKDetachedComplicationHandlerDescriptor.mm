@interface NTKDetachedComplicationHandlerDescriptor
- (CDTemplateComplicationDisplay)display;
@end

@implementation NTKDetachedComplicationHandlerDescriptor

- (CDTemplateComplicationDisplay)display
{
  WeakRetained = objc_loadWeakRetained(&self->_display);

  return WeakRetained;
}

@end