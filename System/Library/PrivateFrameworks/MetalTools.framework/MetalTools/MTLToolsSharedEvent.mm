@interface MTLToolsSharedEvent
- (BOOL)supportsRollback;
- (BOOL)waitUntilSignaledValue:(unint64_t)value timeoutMS:(unint64_t)s;
- (IOSurfaceSharedEvent)IOSurfaceSharedEvent;
- (NSString)label;
- (id)newSharedEventHandle;
- (unint64_t)signaledValue;
- (void)notifyListener:(id)listener atValue:(unint64_t)value block:(id)block;
- (void)setLabel:(id)label;
- (void)setSignaledValue:(unint64_t)value;
@end

@implementation MTLToolsSharedEvent

- (void)notifyListener:(id)listener atValue:(unint64_t)value block:(id)block
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__MTLToolsSharedEvent_notifyListener_atValue_block___block_invoke;
  v10[3] = &unk_2787B3D88;
  v10[4] = self;
  v10[5] = block;
  [baseObject notifyListener:listener atValue:value block:v10];
}

- (id)newSharedEventHandle
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newSharedEventHandle];
}

- (unint64_t)signaledValue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject signaledValue];
}

- (void)setSignaledValue:(unint64_t)value
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setSignaledValue:value];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (BOOL)waitUntilSignaledValue:(unint64_t)value timeoutMS:(unint64_t)s
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject waitUntilSignaledValue:value timeoutMS:s];
}

- (IOSurfaceSharedEvent)IOSurfaceSharedEvent
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject IOSurfaceSharedEvent];
}

- (BOOL)supportsRollback
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRollback];
}

@end