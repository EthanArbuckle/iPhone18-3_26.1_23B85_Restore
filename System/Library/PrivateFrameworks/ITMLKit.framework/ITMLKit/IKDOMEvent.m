@interface IKDOMEvent
- (BOOL)isPropagationStopped;
- (IKDOMEvent)initWithAppContext:(id)a3 type:(id)a4 xmlAttribute:(id)a5 canBubble:(BOOL)a6 isCancelable:(BOOL)a7;
- (IKDOMEvent)initWithType:(id)a3 eventInit:(id)a4;
- (void)preventDefault;
- (void)stopImmediatePropagation;
- (void)stopPropagation;
- (void)updateDispatchStateWithCurrentTarget:(id)a3 phase:(int64_t)a4;
@end

@implementation IKDOMEvent

- (IKDOMEvent)initWithAppContext:(id)a3 type:(id)a4 xmlAttribute:(id)a5 canBubble:(BOOL)a6 isCancelable:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = IKDOMEvent;
  v15 = [(IKJSObject *)&v18 initWithAppContext:a3];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, a4);
    objc_storeStrong(&v16->_xmlAttribute, a5);
    v16->_bubbles = a6;
    v16->_cancelable = a7;
  }

  return v16;
}

- (IKDOMEvent)initWithType:(id)a3 eventInit:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  v9 = [v8 lowercaseString];
  v10 = [v7 stringWithFormat:@"on%@", v9];

  if (v6)
  {
    v11 = [v6 objectForKeyedSubscript:@"bubbles"];
    v12 = [v11 BOOLValue];

    v13 = [v6 objectForKeyedSubscript:@"cancelable"];
    v14 = [v13 BOOLValue];
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = +[IKAppContext currentAppContext];
  v16 = [(IKDOMEvent *)self initWithAppContext:v15 type:v8 xmlAttribute:v10 canBubble:v12 isCancelable:v14];

  return v16;
}

- (void)updateDispatchStateWithCurrentTarget:(id)a3 phase:(int64_t)a4
{
  v6 = a3;
  if (![(IKDOMEvent *)self isPropagationStopped]&& ![(IKDOMEvent *)self isImmediatePropagationStopped])
  {
    [(IKDOMEvent *)self setCurrentTarget:v6];
    [(IKDOMEvent *)self setEventPhase:a4];
  }
}

- (BOOL)isPropagationStopped
{
  v3 = [(IKDOMEvent *)self dispatchState];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(IKDOMEvent *)self dispatchState]== 2;
  }

  return v3;
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