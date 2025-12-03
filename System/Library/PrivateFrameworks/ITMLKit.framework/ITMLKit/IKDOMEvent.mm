@interface IKDOMEvent
- (BOOL)isPropagationStopped;
- (IKDOMEvent)initWithAppContext:(id)context type:(id)type xmlAttribute:(id)attribute canBubble:(BOOL)bubble isCancelable:(BOOL)cancelable;
- (IKDOMEvent)initWithType:(id)type eventInit:(id)init;
- (void)preventDefault;
- (void)stopImmediatePropagation;
- (void)stopPropagation;
- (void)updateDispatchStateWithCurrentTarget:(id)target phase:(int64_t)phase;
@end

@implementation IKDOMEvent

- (IKDOMEvent)initWithAppContext:(id)context type:(id)type xmlAttribute:(id)attribute canBubble:(BOOL)bubble isCancelable:(BOOL)cancelable
{
  typeCopy = type;
  attributeCopy = attribute;
  v18.receiver = self;
  v18.super_class = IKDOMEvent;
  v15 = [(IKJSObject *)&v18 initWithAppContext:context];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, type);
    objc_storeStrong(&v16->_xmlAttribute, attribute);
    v16->_bubbles = bubble;
    v16->_cancelable = cancelable;
  }

  return v16;
}

- (IKDOMEvent)initWithType:(id)type eventInit:(id)init
{
  initCopy = init;
  v7 = MEMORY[0x277CCACA8];
  typeCopy = type;
  lowercaseString = [typeCopy lowercaseString];
  v10 = [v7 stringWithFormat:@"on%@", lowercaseString];

  if (initCopy)
  {
    v11 = [initCopy objectForKeyedSubscript:@"bubbles"];
    bOOLValue = [v11 BOOLValue];

    v13 = [initCopy objectForKeyedSubscript:@"cancelable"];
    bOOLValue2 = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
    bOOLValue2 = 0;
  }

  v15 = +[IKAppContext currentAppContext];
  v16 = [(IKDOMEvent *)self initWithAppContext:v15 type:typeCopy xmlAttribute:v10 canBubble:bOOLValue isCancelable:bOOLValue2];

  return v16;
}

- (void)updateDispatchStateWithCurrentTarget:(id)target phase:(int64_t)phase
{
  targetCopy = target;
  if (![(IKDOMEvent *)self isPropagationStopped]&& ![(IKDOMEvent *)self isImmediatePropagationStopped])
  {
    [(IKDOMEvent *)self setCurrentTarget:targetCopy];
    [(IKDOMEvent *)self setEventPhase:phase];
  }
}

- (BOOL)isPropagationStopped
{
  dispatchState = [(IKDOMEvent *)self dispatchState];
  if (dispatchState != 1)
  {
    LOBYTE(dispatchState) = [(IKDOMEvent *)self dispatchState]== 2;
  }

  return dispatchState;
}

- (void)stopPropagation
{
  if (![(IKDOMEvent *)self isPropagationStopped])
  {

    [(IKDOMEvent *)self setDispatchState:2];
  }
}

- (void)preventDefault
{
  if ([(IKDOMEvent *)self cancelable])
  {

    [(IKDOMEvent *)self setDefaultPrevented:1];
  }
}

- (void)stopImmediatePropagation
{
  if (![(IKDOMEvent *)self isImmediatePropagationStopped])
  {

    [(IKDOMEvent *)self setDispatchState:1];
  }
}

@end