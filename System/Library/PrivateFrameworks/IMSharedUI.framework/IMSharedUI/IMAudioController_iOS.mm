@interface IMAudioController_iOS
- (IMAudioController_iOS)initWithContentsOfURLs:(id)ls;
- (void)applicationWillResignActive;
- (void)audioSessionInterruption:(id)interruption;
- (void)dealloc;
@end

@implementation IMAudioController_iOS

- (IMAudioController_iOS)initWithContentsOfURLs:(id)ls
{
  v10.receiver = self;
  v10.super_class = IMAudioController_iOS;
  v5 = [(IMAudioController *)&v10 initWithContentsOfURLs:ls];
  if (v5)
  {
    v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v3, v4);
    objc_msgSend_addObserver_selector_name_object_(v6, v7, v5, sel_audioSessionInterruption_, *MEMORY[0x277CB8068], 0);
    objc_msgSend_addObserver_selector_name_object_(v6, v8, v5, sel_applicationWillResignActive, *MEMORY[0x277D76768], 0);
  }

  return v5;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = IMAudioController_iOS;
  [(IMAudioController *)&v6 dealloc];
}

- (void)audioSessionInterruption:(id)interruption
{
  objc_msgSend_setInterrupted_(self, a2, 1);
  v6 = objc_msgSend_audioPlayer(self, v4, v5);
  objc_msgSend_stop(v6, v7, v8);

  objc_msgSend_setInterrupted_(self, v9, 0);
}

- (void)applicationWillResignActive
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_stop(v5, v3, v4);
}

@end