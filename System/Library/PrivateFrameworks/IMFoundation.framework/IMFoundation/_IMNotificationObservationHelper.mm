@interface _IMNotificationObservationHelper
- (_IMNotificationObservationHelper)initWithObserver:(id)observer name:(id)name object:(id)object block:(id)block;
- (void)dealloc;
@end

@implementation _IMNotificationObservationHelper

- (_IMNotificationObservationHelper)initWithObserver:(id)observer name:(id)name object:(id)object block:(id)block
{
  observerCopy = observer;
  nameCopy = name;
  objectCopy = object;
  blockCopy = block;
  v30.receiver = self;
  v30.super_class = _IMNotificationObservationHelper;
  v15 = [(_IMNotificationObservationHelper *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_observer, observer);
    v19 = objc_msgSend_copy(blockCopy, v17, v18);
    block = v16->_block;
    v16->_block = v19;

    v23 = objc_msgSend_copy(nameCopy, v21, v22);
    name = v16->_name;
    v16->_name = v23;

    objc_storeStrong(&v16->_object, object);
    v27 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v25, v26);
    objc_msgSend_addObserver_selector_name_object_(v27, v28, v16, sel__notification_, nameCopy, objectCopy);
  }

  return v16;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, self->_name, self->_object);

  v6.receiver = self;
  v6.super_class = _IMNotificationObservationHelper;
  [(_IMNotificationObservationHelper *)&v6 dealloc];
}

@end