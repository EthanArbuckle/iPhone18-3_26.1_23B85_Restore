@interface _UIKeyboardArbiterDebug
+ (id)sharedInstance;
- (_UIKeyboardArbiterDebug)debugWithMessage:(id)message;
- (_UIKeyboardArbiterDebug)init;
- (void)addAsynchronousData:(id)data;
- (void)addEntry:(id)entry;
- (void)errorWithMessage:(id)message;
- (void)getDebugInfoDictionariesWithCompletionHandler:(id)handler;
- (void)infoWithMessage:(id)message;
@end

@implementation _UIKeyboardArbiterDebug

+ (id)sharedInstance
{
  if (qword_28122B750 != -1)
  {
    dispatch_once(&qword_28122B750, &__block_literal_global_11);
  }

  v3 = qword_28122B748;

  return v3;
}

- (_UIKeyboardArbiterDebug)init
{
  v9.receiver = self;
  v9.super_class = _UIKeyboardArbiterDebug;
  v2 = [(_UIKeyboardArbiterDebug *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.UIKit.keyboard-arbiter.debug", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_importantCount = 0;
    v5 = CFPreferencesCopyAppValue(@"DisableKeyboardDebugInfo", @"com.apple.keyboard");
    v2->_disable = [v5 BOOLValue];
    array = [MEMORY[0x277CBEB18] array];
    entries = v2->_entries;
    v2->_entries = array;
  }

  return v2;
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  if (!self->_disable && ![(_UIKeyboardArbiterDebug *)self pause])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36___UIKeyboardArbiterDebug_addEntry___block_invoke;
    v6[3] = &unk_2797F45E0;
    v6[4] = self;
    v7 = entryCopy;
    dispatch_async(queue, v6);
  }
}

- (void)infoWithMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [_UIKeyboardArbiterDebugEntryString entryWithMessage:messageCopy type:@"Info"];
  [(_UIKeyboardArbiterDebug *)selfCopy addEntry:v5];

  objc_sync_exit(selfCopy);
}

- (_UIKeyboardArbiterDebug)debugWithMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [_UIKeyboardArbiterDebugEntryString entryWithMessage:messageCopy type:@"Debug"];
  [(_UIKeyboardArbiterDebug *)selfCopy addEntry:v5];

  objc_sync_exit(selfCopy);

  return result;
}

- (void)errorWithMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [_UIKeyboardArbiterDebugEntryString entryWithMessage:messageCopy type:@"Error"];
  [(_UIKeyboardArbiterDebug *)selfCopy addEntry:v5];

  objc_sync_exit(selfCopy);
}

- (void)addAsynchronousData:(id)data
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47___UIKeyboardArbiterDebug_addAsynchronousData___block_invoke;
  v3[3] = &unk_2797F4C58;
  v3[4] = self;
  (*(data + 2))(data, v3);
}

- (void)getDebugInfoDictionariesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73___UIKeyboardArbiterDebug_getDebugInfoDictionariesWithCompletionHandler___block_invoke;
  v7[3] = &unk_2797F4DA8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

@end