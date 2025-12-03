@interface IMDisplayLink_iOS
- (IMDisplayLink_iOS)initWithTarget:(id)target selector:(SEL)selector;
- (void)invalidate;
- (void)schedule;
@end

@implementation IMDisplayLink_iOS

- (IMDisplayLink_iOS)initWithTarget:(id)target selector:(SEL)selector
{
  v17.receiver = self;
  v17.super_class = IMDisplayLink_iOS;
  v4 = [(IMDisplayLink *)&v17 initWithTarget:target selector:selector];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setPreferredFramesPerSecond_(v4, v5, 60);
    v9 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v7, v8);
    objc_msgSend_setScreen_(v6, v10, v9);

    objc_msgSend_setRunLoopMode_(v6, v11, *MEMORY[0x277CBE738]);
    v14 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v12, v13);
    objc_msgSend_setRunLoop_(v6, v15, v14);
  }

  return v6;
}

- (void)schedule
{
  objc_msgSend_invalidate(self, a2, v2);
  v6 = objc_msgSend_screen(self, v4, v5);
  v8 = objc_msgSend_displayLinkWithTarget_selector_(v6, v7, self, sel__displayLinkCallback);
  displayLink = self->_displayLink;
  self->_displayLink = v8;

  v10 = self->_displayLink;
  v13 = objc_msgSend_preferredFramesPerSecond(self, v11, v12);
  objc_msgSend_setPreferredFramesPerSecond_(v10, v14, v13);
  v15 = self->_displayLink;
  v22 = objc_msgSend_runLoop(self, v16, v17);
  v20 = objc_msgSend_runLoopMode(self, v18, v19);
  objc_msgSend_addToRunLoop_forMode_(v15, v21, v22, v20);
}

- (void)invalidate
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    objc_msgSend_invalidate(displayLink, a2, v2);
    v5 = self->_displayLink;
    self->_displayLink = 0;
  }
}

@end